using System;
using System.Threading.Tasks;
using static library.Book;
using Microsoft.EntityFrameworkCore;

namespace library.Services;

public class DatabaseService
{
    public async Task SaveDataAsync(Book bookInfo)
    {
        using (var context = new LibraryContext())
        {
            context.Books.Add(bookInfo);
            try
            {
                await context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Database error: {ex.GetBaseException}");
                throw new InvalidOperationException("An error occurred while saving data to DB.");
            }
        }
    }
}
