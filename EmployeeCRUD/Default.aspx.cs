using Npgsql;
using System;
using System.Configuration;
using System.Data;

namespace EmployeeCRUD
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsercion_Click(object sender, EventArgs e)
        {
            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection())
                {
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["connectionStrings"].ToString();
                    connection.Open();
                    NpgsqlCommand command = new NpgsqlCommand();
                    command.Connection = connection;
                    command.CommandText = "INSERT INTO employee( firstname, lastname, emailid ) VALUES( @fName, @lName, @Email )";
                    command.CommandType = CommandType.Text;
                    command.Parameters.Add(new NpgsqlParameter("@fName", txtEmpFN.Text));
                    command.Parameters.Add(new NpgsqlParameter("@lName", txtEmpLN.Text ));
                    command.Parameters.Add(new NpgsqlParameter("@Email", txtEmpEmail.Text));
                    command.ExecuteNonQuery();
                    command.Dispose();
                    connection.Close();
                    txtEmpFN.Text = "";
                    txtEmpLN.Text = "";
                    txtEmpEmail.Text = "";
                    lblmsg.Text = "Data Has been Saved";
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }
        }
    }
}