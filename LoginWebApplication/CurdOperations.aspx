<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurdOperations.aspx.cs" Inherits="LoginWebApplication.CurdOperations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="Scripts/JavaSript/Registration.js"></script>
    <link href="Scripts/CSS/Registration.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

    <title></title>
     <script>
        $(document).ready(function () {
            $('#TextBox3').datepicker({
                dateFormat: 'dd/mm/yy'
            });
        });
  </script>
    <style type="text/css">
        .auto-style1 {
            width: 231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table align ="left">

                <tr>
                    <td class="auto-style1">FristName:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" placeholder="FristName"  autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">LastName:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" placeholder="LastName" autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">Gender:</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" GroupName="GenderGroup" Checked="True" />
                        <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" GroupName="GenderGroup" /></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">DateOfBirth:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" placeholder="Data Of Birth" autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">Coutry:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" autocomplete="off" Width="110px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
            
                <tr>
                    <td class="auto-style1">State:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" autocomplete="off"  runat="server" Width="110px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">City::</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" autocomplete="off"  runat="server" Width="110px"></asp:DropDownList></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">PhoneNumber:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" placeholder="Phone Number" autocomplete="off" runat="server" MaxLength="10"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" placeholder="Email" runat="server" autocomplete="off"  TextMode="Email"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" placeholder="Password" runat="server" autocomplete="off" TextMode="Password" maxlength="10" data-minlength="5"></asp:TextBox></td>
                </tr>
            <tr><td class="auto-style1"></td></tr>
                <tr>
                    <td class="auto-style1">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" placeholder="Confirm Password" TextMode="Password" maxlength="10" runat="server"></asp:TextBox></td>
                </tr>
            <tr>
                <td>
                    RecId:
                </td>
                <td>
                    <asp:TextBox ID="TextBox8"  autocomplete="off" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr><td class="auto-style1"></td></tr>
            <tr><td class="auto-style1">
                        
                        <asp:Button ID="Createbtn" runat="server" Text="Create"   OnClick="Createbtn_Click" /> 
                        <asp:Button ID="Selectbtn" runat="server" Text="Select"  OnClick="Selectbtn_Click" Width="64px"/>
                </td></tr>
            <tr><td class="auto-style1"></td></tr>
            <tr><td class="auto-style1">
                        <asp:Button ID="Updatebtn" runat="server" Text="Update" OnClick="Updatebtn_Click" />
                        <asp:Button ID="Deletebtn" runat="server" Text="Delete" OnClick="Deletebtn_Click" />
                        </td></tr>
            <tr><td class="auto-style1">&nbsp;</td></tr>
            <tr><td class="auto-style1">
                        <asp:Button ID="Clearbtn" runat="server" OnClick="Clearbtn_Click" Text="Clear" />
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        
                </td></tr>
             
                <tr>
                    <td colspan="2" style="text-align:center">
                        
                        <br />
                        
                        <br />

    
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 0px" Width="897px">
        </asp:GridView>

    
                        <br />
                        
                    </td>
                </tr>
                
        </table>
    </div>

    
    </form>
</body>
</html>
