using System;
using System.Configuration;
using System.Collections.Specialized;
using TerpFarm.Services.Service;

/// <summary>
/// 
/// </summary>
namespace TerpFarm.Services.ServiceFactory
{
    public class ServiceFactory : Exception
    {
        private ServiceFactory() { }

        private static ServiceFactory factory = new ServiceFactory();

        public static ServiceFactory GetInstance() { return factory; }

        public IService GetService(String serviceName)
        {
            Type type;
            Object obj = null;

            try
            {
                type = Type.GetType(GetImplName(serviceName));
                obj = Activator.CreateInstance(type);
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception occured: {0}", e);
            }

            return (IService)obj;
        }

        private string GetImplName(string servicename)
        {
            NameValueCollection settings = ConfigurationManager.AppSettings;
            return settings.Get(servicename);
        }
    }
}