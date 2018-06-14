<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="UniversitySite.PhotoGallery"
    Layout="~/Views/Shared/-Layout.cshtml"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="PhotoGallery.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#ImageGallery img').click(function () {
                var bigImagePath = '/Images/' + $(this).attr('alt');
                $('#bigImage').attr('src', bigImagePath);
            });
        });
    </script>

</head>
<body>
     <h3>Image Gallery</h3>
            <table>
                <tr>
                    <td style="border-right:3px solid #EEEEEE">
                        <div id="ImageGallery" style="overflow:auto; height:350px; width:130px; display:inline-block;">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <img src='/Thumbnail/<%#Eval("FileName") %>' alt='<%#Eval("FileName") %>' style="cursor:pointer" />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </td>
                    <td>
                        <img src='/Pictures/<%#Eval("FileName") %>' id="bigImage" alt="" />
                    </td>
                </tr>
            </table>
</body>
</html>
