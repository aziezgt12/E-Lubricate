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
using ELubricate.Models.Category;
using System.Data;

namespace ELubricate.Repository.Implements;

public class CategoryRepository : ICategoryRepository
{
    private readonly IDbConnection _context;
    public CategoryRepository(IDbConnection dbConnection)
    {
        _context = dbConnection;
    }

    public Task Add(Category entity)
    {
        throw new NotImplementedException();
    }

    public Task Delete(Category entity)
    {
        throw new NotImplementedException();
    }

    public async Task<IEnumerable<Category>> GetAll()
    {

        return await _context.QueryAsync<Category>("SELECT * FROM categories");
    }

    public Task<Category> GetById(int id)
    {
        throw new NotImplementedException();
    }

    public Task Update(Category entity)
    {
        throw new NotImplementedException();
    }
}