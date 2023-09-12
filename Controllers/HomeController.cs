using System;
using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ELubricate.Models;
using ELubricate.Repository.Interfaces;
using ELubricate.Models.Category;
using System.Threading.Tasks;

namespace ELubricate.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ICategoryRepository _categoryRepo;

        // Tambahkan ICategoryRepository ke konstruktor
        public HomeController(ILogger<HomeController> logger, ICategoryRepository categoryRepo)
        {
            _logger = logger;
            _categoryRepo = categoryRepo; // Inisialisasi _categoryRepo dengan parameter yang diberikan
        }

        public async Task<IActionResult> IndexAsync()
        {
            try
            {
                var category = await _categoryRepo.GetAll();
                return View(category);
            }
            catch (Exception ex)
            {
                // Tangani exception di sini, seperti mencatat pesan kesalahan atau memberikan respons yang sesuai kepada pengguna
                Console.WriteLine("Error in IndexAsync: " + ex.Message);

                // Anda dapat mengembalikan tampilan kesalahan khusus atau mengambil tindakan lain yang sesuai dengan kasus Anda
                return View("Error"); // Contoh: Tampilan kesalahan khusus
            }
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
}
