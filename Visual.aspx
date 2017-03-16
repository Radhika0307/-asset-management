<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Visual.aspx.cs" Inherits="Visual" MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart2" runat="server" BackColor="Transparent" BackGradientStyle="HorizontalCenter" BackHatchStyle="DarkVertical" BackImageAlignment="Center" BackImageTransparentColor="White" BorderlineColor="WhiteSmoke" BorderlineDashStyle="Dot" BorderlineWidth="3" Compression="3" DataMember="DefaultView" DataSourceID="SqlDataSource1" Height="321px" IsMapAreaAttributesEncoded="True" TabIndex="3" ViewStateContent="All" Width="760px">
        <Series>
            <asp:Series ChartType="Line" Name="Series1" XValueMember="url" YValueMembers="Column1" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <BorderSkin PageColor="Transparent" />
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select ipaddress,url,count(url) from Main where ipaddress like '%199%' group by url,ipaddress"></asp:SqlDataSource>
  </asp:Content>

 