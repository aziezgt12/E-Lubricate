using System.ComponentModel.DataAnnotations;

namespace Models.User
{

    public class UserModel
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nama { get; set; }

        [MaxLength(50)]
        public string Jabatan { get; set; }

        [Required]
        [MaxLength(255)]
        [EmailAddress]
        public string Email { get; set; }

        [MaxLength(50)]
        public string Role { get; set; }

        [MaxLength(50)]
        public string Status { get; set; }

        [MaxLength(255)]
        public string Action { get; set; }
    }
}