using System;
using System.Data.SqlClient;
namespace Airline_Booking_System
{
    public partial class Tickets : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString = "Data Source=The-Infinit-Tsukuyomi\\SQLEXPRESS01;Initial Catalog=Airline_Booking_Ticket;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();

                    string query = "INSERT INTO Tickets (TicketId, Name, FlightId, Departure, Arrival, Date, Time) VALUES (@TicketId, @Name, @FlightId, @Departure, @Arrival, @Date, @Time)";

                    using (SqlCommand insertCommand = new SqlCommand(query, conn))
                    {
                        insertCommand.Parameters.AddWithValue("@TicketId", TextBox1.Text);
                        insertCommand.Parameters.AddWithValue("@Name", TextBox2.Text);
                        insertCommand.Parameters.AddWithValue("@FlightId", TextBox3.Text);
                        insertCommand.Parameters.AddWithValue("@Departure", TextBox4.Text);
                        insertCommand.Parameters.AddWithValue("@Arrival", TextBox5.Text);
                        insertCommand.Parameters.AddWithValue("@Date", TextBox6.Text);
                        insertCommand.Parameters.AddWithValue("@Time", TextBox7.Text);

                        int rowsAffected = insertCommand.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                           
                            Response.Redirect("SuccessMsg.aspx?message=" + TextBox1.Text + "** Ticket Booked Successfully! **");
                        }
                        else
                        {
                            
                            Response.Redirect("ErrorMsg.aspx?message=‼️ Failed to Book Ticket. ‼️");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }
    }
}