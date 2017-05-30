using System;
using System.Web.Mvc;
using Persistence;

namespace MyLibraryWeb.Controllers
{
    public class BookStatusController : Controller
    {
        // GET: BookStatus
        public ActionResult Index()
        {
            ViewBag.Message = "Status of all books";
            return View();
        }

        [HttpGet]
        public JsonResult GetAllBooks()
        {
            try
            {
                var bookStoreDao = new BookStoreDao();
                var result = bookStoreDao.GetCurrentStatusForAllBooks();
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(ex, JsonRequestBehavior.AllowGet);
            }

        }

    }
}