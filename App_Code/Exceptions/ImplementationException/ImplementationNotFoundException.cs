using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TerpFarm.Exceptions.ImplementationException
{
    /// <summary>
    /// 
    /// </summary>
    public class ImplementationNotFoundException : Exception
    {
        public ImplementationNotFoundException(String e) : base(e)
        {

        }
    }
}