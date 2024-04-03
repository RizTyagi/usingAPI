using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;

namespace usingAPI
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        public async void GetBookList()
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

        protected void BtngetAll_Click(object sender, EventArgs e)
        {
            trId.Visible=false;
            TrAll.Visible = true;
            GetBookList();
        }
        public async void GetBookById(int BookId)
        {
            List<Book> book = new List<Book>();
            StringBuilder strTbl = new StringBuilder();
            strTbl.AppendLine("<table style='border:1px solid;'> <tr><th>ID.</th><th>Book Name  </th><th>Author  </th></tr>");

            using (var client = new HttpClient())
            {
                var response = await client.GetAsync("https://localhost:44380/Api/Book/?id=" + BookId);
               string code= response.StatusCode.ToString();
                if (code.Equals("OK"))
                {
                    var content = await response.Content.ReadAsStringAsync();
                    book = JsonConvert.DeserializeObject<List<Book>>(content);
                    if (book != null && book.Count>0)
                    {
                            strTbl.AppendLine("<tr><td>" + book[0].id.ToString() + "</td>");
                            strTbl.AppendLine("<td>" + book[0].Name + "</td>");
                            strTbl.AppendLine("<td>" + book[0].Author + "</td></tr>");
                       
                    }
                }
                else
                {
                    Literal1.Text = response.ToString();
                }
            }

            strTbl.AppendLine("</table>");
            Literal1.Text = strTbl.ToString();
        }
        protected void BtnbookId_Click(object sender, EventArgs e)
        {
            trId.Visible = true;
            TrAll.Visible = false;
            int bookid = Convert.ToInt32(txtbookId.Text);

            if (bookid != 0)
            {
                GetBookById(bookid);
            }
            else
            {
                lblerror2.Text = "Please input a valid book-Id";
            }
        }
    }
    public class Book
    {
        public int id;
        public string Name;
        public string Author;
    }
}