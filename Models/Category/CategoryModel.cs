namespace ELubricate.Models.Category;
public class Category
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string Image { get; set; }
    public List<Subcategory> Subcategories { get; set; }
}

public class Subcategory
{ 
    public int ID { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public int ParentCategoryID { get; set; }
    public List<SubSubcategory> SubSubcategories { get; set; }
}

public class SubSubcategory
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public int ParentSubcategoryID { get; set; }
}