using System;

namespace library.Models;

public class Client
{
    public required int Id {get; set;}

    public required string Name {get; set;}

    public required string Surname {get; set;}

    public required string Pesel {get; set;}
}
