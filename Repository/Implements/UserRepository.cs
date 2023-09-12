using Models.User;
using MySql.Data.MySqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Threading.Tasks;
using ELubricate.Repository.Interfaces;
using System;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ELubricate.Repository.Implements;

public class UserRepository : IUserRepository
{
    private readonly string _connectionString;
    public UserRepository(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public async Task<IEnumerable<UserModel>> GetAllAsync()
    {
        using var connection = new MySqlConnection(_connectionString);
        connection.Open();
        return await connection.QueryAsync<UserModel>("SELECT * FROM users");
    }

}