using System;
using System.IO;
using TerpFarm.Domain.Interpreters;

namespace TerpFarm.Services.InterpreterSvc
{
    /// <summary>
    /// 
    /// </summary>
    public class InterpreterImpl : IInterpreter
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="terp"></param>
        public void StoreInterpreter(Interpreter terp)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="terp"></param>
        /// <returns></returns>
        public Interpreter GetInterpreter(Interpreter terp)
        {

            return terp;
        }
    }
}