<%@ Page Language="VB" MasterPageFile="~/Students.master" AutoEventWireup="false" CodeFile="e-LectureRoom.aspx.vb" Inherits="e_LectureRoom" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 97%;
        }
        .style3
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style6
        {
            width: 503px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 109px;
        }
        .style7
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" style="width: 74%">
        <tr>
            <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="4000">
                </asp:Timer>
                <asp:Timer ID="Timer2" runat="server" Interval="4000" ontick="Timer2_Tick">
                </asp:Timer>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lbTotalTime" runat="server"></asp:Label>
                        <asp:Label ID="lbLectureTimeReader" runat="server">0:02:10</asp:Label>
                    </ContentTemplate>
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtLectureBoard" runat="server" Height="272px" 
                    TextMode="MultiLine" Width="581px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style7">
                <asp:Label ID="Label4" runat="server" style="color: #FF0000; font-weight: 700" 
                    Text="Note:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <ol>
                    <li>All Lecture is time for <span class="style3">2 hours</span></li>
                    <li>After <span class="style3">2 hours, 10 Minutes</span> is give for questions</li>
                    <li style="width: 521px">Coming late to lectures has a negative effective on students, because lecturs 
                        can not be downloaded from this site save you request it from the Lecturer</li>
                    <li style="width: 518px">After 2 hours the lecture board, becomes blank and questions become 
                        entertainable</li>
                    <li style="width: 509px">When you log out, you looses time</li>
                    <li>Please do not click, the back arrow on your broswer or the backward space on 
                        your keyboard<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                
                    <table class="style4">
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="0:02:20"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label6" runat="server" Text="Mat No/SysID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMatno" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label7" runat="server" Text="Questio(s)"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtQuestion" runat="server" Height="168px" 
                                    TextMode="MultiLine" Width="465px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" valign="top">
                                <asp:Label ID="Label8" runat="server" Text="Do you have Issue(s)?"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rblIssue" runat="server">
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:RadioButtonList>
                                <table class="style4">
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel2" runat="server">
                                                <asp:TextBox ID="txtIssue" runat="server" Height="130px" Width="456px"></asp:TextBox>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnAsk" runat="server" Text="Ask Now" />
                            </td>
                        </tr>
                    </table>
                
                </ContentTemplate>
                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                </Triggers>
                </asp:UpdatePanel>
                    </li>
                </ol>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

