using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TerpFarm.Services.BusinessClientSvc;
using TerpFarm.Domain.BusinessClients;
using TerpFarm.Exceptions.InterfaceException;
using TerpFarm.Exceptions.ImplementationException;
using TerpFarm.Business.SuperManager;

namespace TerpFarm.Business.BusinessClientManager
{
    public class BusinessClientMgr : Manager
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        public void StoreNewBusinessClient(BusinessClient bc)
        {
            try
            {
                IBusinessClient bcSvc = (IBusinessClient)GetService(typeof(IBusinessClient).Name);
                bcSvc.StoreBusinessClient(bc);
            } 
            catch (InterfaceNotFoundException)
            {
                throw new Exception("Submission failed. Try again");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        /// <returns></returns>
        public BusinessClient QueryBusinessClient(BusinessClient bc)
        {
            try
            {
                IBusinessClient bcSvc = (IBusinessClient)GetService(typeof(IBusinessClient).Name);
                BusinessClient getBc = bcSvc.QueryBusinessClient(bc);
                bc = getBc;
            }
            catch (ImplementationNotFoundException)
            {
                throw new Exception("Submission failed. Try again");
            }

            return bc;
        }

        public void DeleteBusinessClient(BusinessClient bc)
        {
            try
            {
                IBusinessClient bcSvc = (IBusinessClient)GetService(typeof(IBusinessClient).Name);
                bcSvc.DeleteBusinessClient(bc);
            }
            catch (InterfaceNotFoundException)
            {
                throw new Exception("Delete failed. Try again");
            }
        }
    }
}