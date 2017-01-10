﻿using Npgsql;
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

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection())
                {
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["connectionStrings"].ToString();
                    connection.Open();
                    NpgsqlCommand command = new NpgsqlCommand();
                    command.Connection = connection;
                    command.CommandText = "SELECT * FROM employee";
                    command.CommandType = CommandType.Text;
                    NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    dataAdapter.Fill( dataTable );
                    command.Dispose();
                    connection.Close();

                    gvEmployes.DataSource = dataTable;
                    gvEmployes.DataBind();
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection())
                {
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["connectionStrings"].ToString();
                    connection.Open();
                    NpgsqlCommand command = new NpgsqlCommand();
                    command.Connection = connection;
                    command.CommandText = "UPDATE employee SET firstname = @fName, lastname = @lName, emailid = @Email WHERE id = @Id";
                    command.CommandType = CommandType.Text;
                    command.Parameters.Add(new NpgsqlParameter("@Id", int.Parse( txtEmpID.Text.ToString() )));
                    command.Parameters.Add(new NpgsqlParameter("@fName", txtEmpFN.Text));
                    command.Parameters.Add(new NpgsqlParameter("@lName", txtEmpLN.Text));
                    command.Parameters.Add(new NpgsqlParameter("@Email", txtEmpEmail.Text));
                    command.ExecuteNonQuery();
                    command.Dispose();
                    connection.Close();
                    txtEmpFN.Text = "";
                    txtEmpLN.Text = "";
                    txtEmpEmail.Text = "";
                    lblmsg.Text = "Data Has been Updated";
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }
        }
    }
}