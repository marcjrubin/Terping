using TerpFarm.Domain.Interpreters;
using TerpFarm.Services.Service;

namespace TerpFarm.Services.InterpreterSvc
{
    /// <summary>
    /// 
    /// </summary>
    public interface IInterpreter : IService
    {
        void StoreInterpreter(Interpreter terp);

        Interpreter GetInterpreter(Interpreter terp);
    }
}