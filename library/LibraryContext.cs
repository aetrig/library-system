using System;
using Microsoft.EntityFrameworkCore;

namespace library;

public class LibraryContext : DbContext
{
	public DbSet<Book> Books { get; set; }
	public LibraryContext()
	{
		Database.EnsureCreated();
	}

	protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
	{
		optionsBuilder.UseMySql("server=localhost:3306;uid=admin;pwd=admin;database=system_biblioteczny", new MySqlServerVersion(new Version(8, 0, 42)));
	}
}
