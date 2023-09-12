using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ELubricate.Repository.Interfaces
{
    public interface IBaseRepository<TEntity> where TEntity : class
    {
        Task<TEntity> GetById(int id);
        Task<IEnumerable<TEntity>> GetAll();
        Task Add(TEntity entity);
        Task Update(TEntity entity);
        Task Delete(TEntity entity);
    }
}
