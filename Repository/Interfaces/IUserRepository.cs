using Models.User;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;

namespace ELubricate.Repository.Interfaces;
public interface IUserRepository
{
    Task<IEnumerable<UserModel>> GetAllAsync();
}