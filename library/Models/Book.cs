using System;

namespace library;

public class Book
{
	public required int Id { get; set; }
	public required string? Title { get; set; }

	public required string? Id_category { get; set; }

	public int minimum_age {get; set;}

}
