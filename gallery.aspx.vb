Imports MySql.Data.MySqlClient

Public Class gallery
    Inherits System.Web.UI.Page
    Dim CS As String = ConfigurationManager.ConnectionStrings("mydatabase").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadGallery()
        End If
    End Sub

    Private Sub LoadGallery()

        Try

            Using Conn As New MySqlConnection(CS)
                Conn.Open()
                Dim query As String = "SELECT id,caption,filename FROM gallery ORDER BY id DESC"
                Using cmd As New MySqlCommand(query, Conn)
                    Using da As New MySqlDataAdapter(cmd)
                        Dim dt As New DataTable()
                        da.Fill(dt)
                        If dt.Rows.Count > 0 Then
                            rptgallery.DataSource = dt
                            rptgallery.DataBind()
                            Response.Write("<script>console.log('" & dt.Rows.Count & " photos loaded for gallery.');</script>")
                        Else
                            Response.Write("<script>alert('photo Load nhi Huei: " & "');</script>")
                        End If

                    End Using


                End Using
            End Using
        Catch ex As Exception
            ' Error handle
            Response.Write("<script>alert('Error loading gallery: " & ex.Message & "');</script>")
        End Try
    End Sub

End Class
