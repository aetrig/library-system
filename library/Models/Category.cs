using System;
using System.ComponentModel.DataAnnotations;

namespace library;

public class Category
{
    [ Key ]
    public required string Id_category {get; set;}

    public string id_supercategory {get; set;}
    
    public required string name {get; set;}

    public required bool has_children {get; set;}

    public required bool has_items {get; set;}
}
