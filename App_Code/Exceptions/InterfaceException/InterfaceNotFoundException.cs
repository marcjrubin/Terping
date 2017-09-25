using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TerpFarm.Exceptions.InterfaceException
{
    /// <summary>
    /// 
    /// </summary>
    public class InterfaceNotFoundException : Exception
    {
        public InterfaceNotFoundException(String e) : base(e)
        {
            
        }
    }
}