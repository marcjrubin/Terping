using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TerpFarm.Services.ServiceFactory;
using TerpFarm.Services.Service;

namespace TerpFarm.Business.SuperManager
{    
    public abstract class Manager
    {
        private ServiceFactory factory = ServiceFactory.GetInstance();

        protected IService GetService(String name)
        {
            return factory.GetService(name);
        }
    }
}
