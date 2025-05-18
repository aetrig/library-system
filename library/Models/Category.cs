using System;
using System.ComponentModel.DataAnnotations;

namespace library;

public class Category
{
    [ Key ]
    public string Id_category {get; set;}

    public string Id_supercategory {get; set;}
    
    public string Name {get; set;}

    public bool Has_children {get; set;}

    public bool Has_items {get; set;}
}
