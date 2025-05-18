using System;
using System.ComponentModel.DataAnnotations;

namespace library;

public class Category
{
    [ Key ]
    public required string Id_category {get; set;}

    public string Id_supercategory {get; set;}
    
    public required string Name {get; set;}

    public required bool Has_children {get; set;}

    public required bool Has_items {get; set;}
}
