using System;
using library.Models;
using Microsoft.EntityFrameworkCore;

namespace library;

public class LibraryContext : DbContext
{
	public DbSet<Book> Books { get; set; }
	public DbSet<Author> Authors { get; set; }
	public DbSet<Book_author> Books_authors { get; set; }
	public DbSet<Category> Categories { get; set; }
	public DbSet<Client> Clients { get; set; }
	public DbSet<Copy> Copies { get; set; }
	public DbSet<Publisher> Publishers { get; set; }
	public DbSet<Rental> Rentals { get; set; }
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
		optionsBuilder.UseMySql("server=localhost;port=3306;database=system_biblioteczny;user=admin;password=admin", new MySqlServerVersion(new Version(8, 0, 41)));
	}
}
