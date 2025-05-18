using System;
using Google.Protobuf.WellKnownTypes;

namespace library.Models;

public class Rental
{
    public required int Id {get; set;}

    public required int Id_client {get; set;}

    public required int Id_copy {get; set;}

    public required Timestamp Date {get; set;}

    public required Timestamp Deadline {get; set;}
    
}
