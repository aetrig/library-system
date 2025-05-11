using System;
using Microsoft.EntityFrameworkCore;

namespace library;

public class LibraryContext : DbContext
{
	public DbSet<Book> Books { get; set; }
	public LibraryContext(DbContextOptions<LibraryContext> options) : base(options)
	{
		Database.EnsureCreated();
	}
	public LibraryContext()
	{
		Database.EnsureCreated();
	}

	protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
	{
		optionsBuilder.UseMySql("server=localhost;port=3307;database=system_biblioteczny;user=dotnet;password=Dotnet123456!", new MySqlServerVersion(new Version(8, 0, 41)));
	}
}
