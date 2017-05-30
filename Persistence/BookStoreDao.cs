using System.Collections.Generic;
using System.Linq;
using Persistence.DataTransferObjects;

namespace Persistence
{
    public class BookStoreDao
    {
        private readonly IRepository repository;
        public BookStoreDao()
        {
            repository = new Repository();
        }

        public List<BookStatusDto> GetCurrentStatusForAllBooks()
        {
            var sql = @"
SELECT 
    CONCAT(p.FirstName,' ', p.LastName) AS PersonName,
    b.Title AS BookTitle,
    pbr.HireDate,
    NULL AS HireDateStr
FROM dbo.Book b
LEFT JOIN dbo.PersonBookRent pbr ON pbr.BookId = b.Id
LEFT JOIN dbo.Person p ON p.Id = pbr.PersonId
ORDER BY b.Title ASC";

            return repository.RunQuery<BookStatusDto>(sql).ToList();
        }
    }
}
