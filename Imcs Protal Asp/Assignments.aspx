﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assignments.aspx.cs" Inherits="Imcs_Protal_Asp.Assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            height: 37px;
        }
        .lbls {
            text-align: right;
        }
        .lbl {
            text-align: center;
        }
        .auto-style23 {
            width: 630px;
        }
        .auto-style24 {
            text-align: right;
            width: 630px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <nav id="nav">  
        <ul> 
            <li><a href="Assignments.aspx">Assignments</a></li>
            <li><a href="Grades.aspx">Grades</a></li>
        </ul>
    </nav>
    <table style="width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td>
                    <br />
                    <asp:Label ID="lblAssignments" runat="server" Text="Assignments" Font-Size="Large" ForeColor="#284E98" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <%--<asp:Menu ID="MenuAssignment" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#284E98" OnMenuItemClick="MenuAssignment_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <Items>
                            <asp:MenuItem Text="View" Value="View"></asp:MenuItem>
                            <asp:MenuItem Text="Submit" Value="Submit"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#507CD1" />
                    </asp:Menu>--%>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Panel ID="pnlView" runat="server">
                        <asp:GridView ID="gvAssignments" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gvAssignments_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="true" />
                                <asp:BoundField DataField="Assignment" HeaderText="Name" />
                                <asp:BoundField DataField="Deadline" Visible="false" />
                                <asp:BoundField DataField="Marks" Visible="false" />
                                <asp:BoundField DataField="Info" Visible="false" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_Submissions_SELECT_Assignments" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <%--<asp:Panel ID="pnlSubmit" runat="server" Visible="False">
                        <asp:GridView ID="gvSubmit" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:Panel>--%>
                    <asp:Panel ID="pnlAssignment" runat="server" Visible="False">
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style23">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAName" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">
                                    <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Info</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAInfo" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">
                                    <asp:Label ID="lblDeadline" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Deadline</asp:Label>
                                </td>
                                <td class="auto-style19">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblADeadline" runat="server" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style24">
                                    <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Status</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAStatus" runat="server" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">
                                    <asp:Label ID="lblLink" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Submission Link</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbALink" runat="server" ValidationGroup="vgSubmit"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ID="rfvLink" runat="server" ErrorMessage="Please enter your submission link." ForeColor="Red" ControlToValidate="tbALink" ValidationGroup="vgSubmit"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23">&nbsp;</td>
                                <td>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="vgSubmit" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23">&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
    </table>
    <br />
</asp:Content>
