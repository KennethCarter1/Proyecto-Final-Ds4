using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.IO;
using System.Web.Hosting;

namespace RecetasDeCocinaWeb
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            // Subscribe to unhandled exceptions at AppDomain level
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;

            // Ensure App_Data exists and write startup log
            try
            {
                var appData = HostingEnvironment.MapPath("~/App_Data");
                if (!Directory.Exists(appData))
                    Directory.CreateDirectory(appData);

                var logFile = Path.Combine(appData, "errors.log");
                using (var sw = new StreamWriter(logFile, true))
                {
                    sw.WriteLine("-----");
                    sw.WriteLine(DateTime.UtcNow.ToString("o") + " | Application_Start");
                    sw.WriteLine("Application started successfully.");
                }
            }
            catch (Exception ex)
            {
                try { System.Diagnostics.Trace.TraceError("Error creating App_Data log: " + ex); } catch { }
            }
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            try
            {
                Exception ex = e.ExceptionObject as Exception;
                LogExceptionToFile("AppDomain UnhandledException", ex);
            }
            catch { }
        }

        protected void Application_Error()
        {
            try
            {
                Exception ex = Server.GetLastError();
                LogExceptionToFile("Application_Error", ex);
            }
            catch { }
        }

        private void LogExceptionToFile(string source, Exception ex)
        {
            try
            {
                var appData = HostingEnvironment.MapPath("~/App_Data");
                if (!Directory.Exists(appData))
                    Directory.CreateDirectory(appData);

                string logFile = Path.Combine(appData, "errors.log");
                using (var sw = new StreamWriter(logFile, true))
                {
                    sw.WriteLine("-----");
                    sw.WriteLine(DateTime.UtcNow.ToString("o") + " | " + source);
                    if (ex != null)
                    {
                        sw.WriteLine(ex.GetType().FullName + ": " + ex.Message);
                        sw.WriteLine(ex.StackTrace);
                        if (ex.InnerException != null)
                        {
                            sw.WriteLine("Inner: " + ex.InnerException.GetType().FullName + ": " + ex.InnerException.Message);
                            sw.WriteLine(ex.InnerException.StackTrace);
                        }
                    }
                    else
                    {
                        sw.WriteLine("Exception object was null");
                    }
                }
            }
            catch { }
        }
    }
}
