using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airline_Booking_System
{
    public partial class ErrorMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string errorMessage = Request.QueryString["message"];
            lblErrorMessage.Text = errorMessage;
        }
    }
}