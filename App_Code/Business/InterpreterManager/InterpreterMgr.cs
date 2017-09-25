using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TerpFarm.Business.SuperManager;
using TerpFarm.Domain.Interpreters;
using TerpFarm.Exceptions.ImplementationException;
using TerpFarm.Exceptions.InterfaceException;
using TerpFarm.Services.InterpreterSvc;

namespace TerpFarm.Business.InterpreterManager
{
    public class InterpreterMgr : Manager
    {
        public void StoreNewInterpreter(Interpreter terp)
        {
            try
            {
                IInterpreter terps = (IInterpreter)GetService(typeof(IInterpreter).Name);
                terps.StoreInterpreter(terp);
            }
            catch (InterfaceNotFoundException)  
            {
                throw new Exception("Submission failed. Try again");
            }
        }

        public Interpreter RetrieveInterpreter(Interpreter terp)
        {
            try
            {
                IInterpreter terps = (IInterpreter)GetService(typeof(IInterpreter).Name);
                Interpreter getTerp = terps.GetInterpreter(terp);
                terp = getTerp;
            }
            catch (ImplementationNotFoundException)
            {
                throw new Exception("Submission failed. Try again.");
            }

            return terp;
        }
    }
}