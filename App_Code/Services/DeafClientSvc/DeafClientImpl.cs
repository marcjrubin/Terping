using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TerpFarm.Domain.DeafClients;

namespace TerpFarm.Services.DeafClientSvc
{
    /// <summary>
    /// 
    /// </summary>
    public class DeafClientImpl : IDeafClient
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="dc"></param>
        public void StoreDeafClient(DeafClient dc)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="dc"></param>
        /// <returns></returns>
        public DeafClient GetDeafClient(DeafClient dc)
        {

            return dc;
        }
    }
}