using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ELubricate.Models;
using ELubricate.Repository.Interfaces;

namespace ELubricate.Controllers;

public class UserController : Controller
{
    private readonly ILogger<UserController> _logger;
    private readonly IUserRepository _repository;
    private readonly ICategoryRepository _categoryRepo;


    public UserController(ILogger<UserController> logger, IUserRepository repository)
    {
        _logger = logger;
        _repository = repository;
    }

    public async Task<IActionResult> Index()
    {
        var category = await _categoryRepo.GetAll();
        return View(category);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
