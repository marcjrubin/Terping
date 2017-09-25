using TerpFarm.Domain.DeafClients;
using TerpFarm.Services.Service;

namespace TerpFarm.Services.DeafClientSvc
{
    /// <summary>
    /// 
    /// </summary>
    public interface IDeafClient
    {
        void StoreDeafClient(DeafClient dc);

        DeafClient GetDeafClient(DeafClient dc);
    }
}