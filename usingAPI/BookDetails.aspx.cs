using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usingAPI
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getBookList();
        }

        public async void getBookList()
        {
            List<Book> book = new List<Book>();
            StringBuilder strTbl = new StringBuilder();
            strTbl.AppendLine("<table style='border:1px solid;'> <tr><th>Sr. No</th><th>Book Name  </th><th>Author  </th></tr>");
           
            using (var client = new HttpClient())
            {
                var response = await client.GetAsync("https://localhost:44380/Api/Book/");
                var content = await response.Content.ReadAsStringAsync();
                book = JsonConvert.DeserializeObject<List<Book>>(content);
            }
            if (book != null)
            {
                for (int i = 0; i < book.Count; i++)
                {
                    strTbl.AppendLine("<tr><td>" + book[i].id.ToString() + "</td>");
                    strTbl.AppendLine("<td>" + book[i].Name + "</td>");
                    strTbl.AppendLine("<td>" + book[i].Author + "</td></tr>");
                }
            }

            strTbl.AppendLine("</table>");
            litTable.Text = strTbl.ToString();
        }
    }
    public class Book
    {
        public int id;
        public string Name;
        public string Author;
    }
}