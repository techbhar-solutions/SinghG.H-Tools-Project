Imports MySql.Data.MySqlClient

Public Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lblMsg.Visible = False
        End If
    End Sub
    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click


        If txtFirstName.Text = "" Or txtLastName.Text = "" Or txtEmail.Text = "" _
            Or txtPhone.Text = "" Or txtMessage.Text = "" Then

            lblMsg.ForeColor = Drawing.Color.Red
            lblMsg.Text = "Please fill all fields"
            Exit Sub

        End If

        Try
            Dim CS As String = ConfigurationManager.ConnectionStrings("mydatabase").ConnectionString
            Using con As MySqlConnection = New MySqlConnection(CS)
                con.Open()


                Dim query As String = "INSERT INTO ContactMessages (firstname, lastname, email, phone, message) 
                                       VALUES (@FirstName, @LastName, @Email, @Phone, @Message)"

                Using cmd As New MySqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim())
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim())
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim())
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim())
                    cmd.Parameters.AddWithValue("@Message", txtMessage.Text.Trim())
                    cmd.ExecuteNonQuery()
                End Using
            End Using
            ShowMessage("Message sent successfully!", Drawing.Color.Green)
            ClearForm()



        Catch ex As Exception
            lblMsg.ForeColor = Drawing.Color.Red
            lblMsg.Text = ex.Message
        End Try
    End Sub


    Private Sub ShowMessage(message As String, color As Drawing.Color)
        lblMsg.Text = message
        lblMsg.ForeColor = color
        lblMsg.Visible = True

        ' Hide after 3 seconds
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "HideMsg",
        "setTimeout(function() {
            var lbl = document.getElementById('" & lblMsg.ClientID & "');
            if(lbl) lbl.style.display='none';
        }, 3000);", True)
    End Sub


    Private Sub ClearForm()
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtEmail.Text = ""
        txtPhone.Text = ""
        txtMessage.Text = ""
    End Sub

End Class
