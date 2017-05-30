using System;

namespace Persistence.DataTransferObjects
{
    public class BookStatusDto
    {
        public string PersonName { get; set; }
        public string BookTitle { get; set; }
        public DateTime? HireDate { get; set; }

        public string HireDateStr
        {
            get { return HireDate?.ToString("dd-MM-yyyy HH:mm:ss") ?? string.Empty; }
        }

    }
}
