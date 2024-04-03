using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usingAPI
{
    public partial class DeleteBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

        }

        public async bool Deletebook(int bookId)
        {
            var client = new HttpClient();
            var response = await client.DeleteAsync("https://localhost:44380/Api/Book/?id=" + bookId);
            var status = response.EnsureSuccessStatusCode();
            if (status.Equals("OK"))
            {
                return true;
            }
            else return false;
        }
    }
}