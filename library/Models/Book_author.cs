using System;
using Microsoft.EntityFrameworkCore;

namespace library.Models;

[Keyless]
public class Book_author
{
    public int Id_book { get; set; }

    public int Id_author { get; set; }
}
