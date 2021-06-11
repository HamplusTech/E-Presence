<%@ Page Language="VB" MasterPageFile="~/DelsuHome.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" title="DELSU e-Presence ..:: Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        height: 316px;
    }
    .style4
    {
        height: 14px;
    }
    .style6
    {
        height: 26px;
    }
    .style7
    {
        height: 27px;
    }
    .style8
    {
        height: 12px;
    }
        .style9
        {
            width: 100%;
        }
        .style10
        {
            height: 26px;
            width: 141px;
        }
        .style11
        {
            height: 27px;
            width: 141px;
        }
        .style12
        {
            width: 141px;
        }
        .style13
        {
            height: 12px;
            width: 141px;
        }
        .style14
        {
            height: 14px;
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td colspan="2" class="style2">
            <asp:Panel ID="Panel6" runat="server">
                <table class="style9">
                    <tr>
                        <td class="style3" colspan="2">
                            <h1>
                                Welcome to DELSU E-Presence</h1>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is an interactive time-based online lecture system. It is the 
                                automation of the manual method of lecture whereby a student has to be present 
                                in class. In this system, all the student need is to register like the manual 
                                course registration. the class room is this system . Remeber, it is a time based 
                                system. Once the time for ths class elapses, the next lecture and the lecturer 
                                takes over.</p>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All you need as a student is</p>
                            <ul>
                                <li>Register as a user of this system</li>
                                <li>Register as a student againt desired classes</li>
                                <li>Download the time table and keep track of it.</li>
                                <li>Log in from where ever you are once it is the desired lecture time.</li>
                            </ul>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enjoy. It is stress free. FOR ISSUES CONTACT US ON:</p>
                            <ul>
                                <li>+2348050736053</li>
                                <li>+2347063047037</li>
                                <li><a href="mailto:info@delsuepresence.net">info@delsuepresence.net</a></li>
                                <li><a href="mailto:admin@delsuonline.com">admin@delsuonline.com</a></li>
                                <li><a href="mailto:mail@delsung.net">mail@delsung.net</a></li>
                                <li>
                                    <asp:Button ID="Button4" runat="server" Text="Quick Mail" Width="72px" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel5" runat="server" Visible="False">
                <table class="style2" align="left">
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label4" runat="server" Text="Name (in Full):"></asp:Label>
                        </td>
                        <td class="style6">
                            <asp:TextBox ID="txtN" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtN" Display="Dynamic" ErrorMessage="***">Required</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label5" runat="server" Text="Sex:"></asp:Label>
                        </td>
                        <td class="style6">
                            <asp:DropDownList ID="ddlSex" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtAdd" Display="Dynamic" ErrorMessage="***">Required</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Label ID="Label7" runat="server" Text="Number(s):"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNo1" runat="server" MaxLength="11"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtNo1" Display="Dynamic" ErrorMessage="***">Required</asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtNo2" runat="server" MaxLength="11"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtNo2" Display="Dynamic" ErrorMessage="***">Required</asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtNo1" ControlToValidate="txtNo2" Display="Dynamic" 
                                ErrorMessage="**" Operator="NotEqual">The numbers must be different</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Label ID="Label8" runat="server" Text="E-mail Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEAdd" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEAdd" Display="Dynamic" ErrorMessage="*" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Wrong 
                            email format</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label9" runat="server" Text="Message:"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:TextBox ID="txtSMS" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtSMS" Display="Dynamic" ErrorMessage="***">Required</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Home.aspx">Back</asp:HyperLink>
                        </td>
                        <td class="style4" style="text-align: left">
                            <asp:Button ID="Button3" runat="server" Text="Send Mail" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

