using TerpFarm.Domain.BusinessClients;
using TerpFarm.Services.Service;


/// <summary>
/// 
/// </summary>
namespace TerpFarm.Services.BusinessClientSvc
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="bc"></param>
    public interface IBusinessClient : IService
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        void StoreBusinessClient(BusinessClient bc);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        BusinessClient QueryBusinessClient(BusinessClient id);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        void DeleteBusinessClient(BusinessClient bc);
    }
}