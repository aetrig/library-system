using System;
using System.ComponentModel.DataAnnotations;
using Google.Protobuf.WellKnownTypes;

namespace library.Models;

public class Rental
{
    [ Key ]
    public int Id { get; set; }

    public int Id_client {get; set;}

    public int Id_copy {get; set;}

    public DateTime Date {get; set;}

    public DateTime Deadline {get; set;}
    
}
