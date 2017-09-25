using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TerpFarm.Business.SuperManager;
using TerpFarm.Domain.DeafClients;
using TerpFarm.Exceptions.ImplementationException;
using TerpFarm.Exceptions.InterfaceException;
using TerpFarm.Services.DeafClientSvc;

namespace TerpFarm.Business.DeafClientManager
{
    public class DeafClientMgr : Manager
    {
        public void StoreNewDeafClient(DeafClient dc)
        {
            try
            {
                IDeafClient deaf = (IDeafClient)GetService(typeof(IDeafClient).Name);
                deaf.StoreDeafClient(dc);
            }
            catch (InterfaceNotFoundException)
            {
                throw new Exception("Submission failed. Try again.");
            }
        }

        public DeafClient RetrieveDeafClient(DeafClient dc)
        {
            try
            {
                IDeafClient deaf = (IDeafClient)GetService(typeof(IDeafClient).Name);
                DeafClient getDeaf = deaf.GetDeafClient(dc);
                dc = getDeaf;
            }
            catch (ImplementationNotFoundException)
            {
                throw new Exception("Submission failed. Try again.");
            }

            return dc;
        }
    }
}