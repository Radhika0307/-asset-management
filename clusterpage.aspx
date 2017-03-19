<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clusterpage.aspx.cs" Inherits="clusterpage" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

      <div>
          <div draggable="true">
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="click here to view clusters" />
              <br />
          </div>
          <br />
          <asp:GridView ID="gridView2" runat="server" CellPadding="4" ForeColor="#333333" Visible="true" GridLines="Both" OnRowDataBound="grv2_RowDataBound" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              
    </asp:GridView>
          </div>
        <br />
      <div>
    <asp:GridView ID="gridView3" runat="server" CellPadding="4" ForeColor="#333333" Visible="true" GridLines="Both" OnRowDataBound="grv2_RowDataBound" ShowFooter="True" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
      </div>
          <br />
        <div>
    <asp:GridView ID="gridView4" runat="server" CellPadding="4" ForeColor="#333333" Visible="true" GridLines="Both" OnRowDataBound="grv2_RowDataBound" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
            </div>
        <dialog id="myDialog" title="dialog "  class="dialog" draggable="false">
           
                      <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="900px" Height="500px" IsSoftShadows="False" OnLoad="Chart1_Load" Palette="EarthTones" RightToLeft="Yes" IsMapAreaAttributesEncoded="True" >
                         
                          <Titles>
                              <asp:title text="Support Count of User1" font="Trebuchet MS,10 pt, style=Bold,Italic" bordercolor="Red" TextStyle="Frame" Docking="Top"></asp:title>
                          </Titles> 
                          <Series>
                              <asp:Series Name="Support Count for User1" ChartType="Line" XValueMember="url" YValueMembers="Column1" Legend="Support Count for 123.123.123.123" IsValueShownAsLabel="True" IsXValueIndexed="True">
                                  
                              </asp:Series>

                          </Series>
                          <ChartAreas>
                             
                              <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="True">
                                 
                                  <axisy linecolor="64, 64, 64, 64">
                <labelstyle font="Arial, 20pt, style=Bold" />
                <majorgrid linecolor="64, 64, 64, 64" />
            </axisy>
            <axisx linecolor="Black" LabelAutoFitMinFontSize="10">
                <labelstyle font="Arial,20pt,style=Bold" IntervalType="Number" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Number" />
                <majorgrid linecolor="64, 64, 64, 64" />
            </axisx>
                              </asp:ChartArea>

                          </ChartAreas>

                          <Legends>
                              <asp:Legend Font="Microsoft Sans Serif, 8pt, style=Bold" IsTextAutoFit="False" Name="Support Count for 123.123.123.123" ShadowColor="Blue">
                              </asp:Legend>
                          </Legends>
                          <BorderSkin BackGradientStyle="TopBottom" BackImageAlignment="Top" BorderWidth="3" />

                      </asp:Chart>
                        
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select user_id,ipaddress,url,count(url) from Main where ipaddress like '%123%' group by url,ipaddress,user_id;"></asp:SqlDataSource>
                        
                </dialog>
        <dialog id="myDialog1" title="dialog "  class="dialog" draggable="false">
              <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Width="815px" Height="483px" IsSoftShadows="False" OnLoad="Chart1_Load" Palette="EarthTones" RightToLeft="Yes" IsMapAreaAttributesEncoded="True">
     <Series>
        <asp:Series Name="Support Count for User2" ChartType="Line" XValueMember="url" YValueMembers="Column1" Legend="Support Count for 123.123.123.123" IsValueShownAsLabel="True" IsXValueIndexed="True" ChartArea="ChartArea1">

        </asp:Series>

    </Series>
    <ChartAreas>
                <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="True">
                                  <axisy linecolor="64, 64, 64, 64">
                                      <MajorGrid LineColor="64, 64, 64, 64" />
                <labelstyle font="Arial, 20pt, style=Bold" />
            </axisy>
            <axisx LabelAutoFitMinFontSize="10">
                <MajorGrid LineColor="64, 64, 64, 64" />
                <labelstyle font="Arial, 20pt, style=Bold" IntervalType="Number" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Number" />
            </axisx>
                              </asp:ChartArea>

                          </ChartAreas>
                  <Legends>
                              <asp:Legend Font="Microsoft Sans Serif, 8pt, style=Bold" IsTextAutoFit="False" Name="Support Count for 123.123.123.123" ShadowColor="Blue">
                              </asp:Legend>
                          </Legends>
                          <Titles>
                              <asp:Title BorderColor="Red" Font="Trebuchet MS, 10pt, style=Bold, Italic" Name="Title1" Text="Support Count of User2" TextStyle="Frame">
                              </asp:Title>
                  </Titles>
                          <BorderSkin BackGradientStyle="TopBottom" BackImageAlignment="Top" BorderWidth="3" />
</asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select user_id,ipaddress,url,count(url) from Main where ipaddress like '%199%' group by url,ipaddress,user_id;"></asp:SqlDataSource>
        </dialog>
        <dialog id="myDialog2" title="dialog "  class="dialog" draggable="false">
           <asp:Chart ID="Chart3" runat=server DataSourceID="SqlDataSource3" Width="900px" Height="500px" IsSoftShadows="False" OnLoad="Chart1_Load" Palette="EarthTones" RightToLeft="Yes" IsMapAreaAttributesEncoded="True" >
               <Titles>
                              <asp:title text="Support Count of User3" font="Trebuchet MS,10 pt, style=Bold,Italic" bordercolor="Red" TextStyle="Frame" Docking="Top"></asp:title>
                          </Titles> 
               <Series>
                   <asp:Series Name="Suport Count of user 3" ChartType="Line" XValueMember="url" YValueMembers="Column1" Legend="Support Count for 123.123.123.123" IsValueShownAsLabel="True" IsXValueIndexed="True" ChartArea="ChartArea1">

                   </asp:Series>

               </Series>
               <ChartAreas>
                   <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="True">
                                  <axisy linecolor="64, 64, 64, 64">
                                      <MajorGrid LineColor="64, 64, 64, 64" />
                <labelstyle font="Arial, 20pt, style=Bold" />
            </axisy>
            <axisx LabelAutoFitMinFontSize="10">
                <MajorGrid LineColor="64, 64, 64, 64" />
                <labelstyle font="Arial, 20pt, style=Bold" IntervalType="Number" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Number" />
            </axisx>
                              </asp:ChartArea>

               </ChartAreas>

           </asp:Chart>
                      
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select user_id,ipaddress,url,count(url) from Main where ipaddress like '%198%' group by url,ipaddress,user_id"></asp:SqlDataSource>
                        </dialog>
          <br />
          <br />
        <script type="text/javascript">
            function myfunction() {
                var x = document.getElementById("myDialog");
                x.showModal();
                x.focus();
                return false;
            }
            function myfunction1() {
                var x = document.getElementById("myDialog1");
                x.showModal();
                x.focus();
                return false;
            }
            function myfunction2() {
                var x = document.getElementById("myDialog2");
                x.showModal();
                x.focus();
                return false;
            }
        </script>
        <style>
            dialog {
                background: #FFF;
                width: 900px;
                text-align: center;
                padding: 1.5em;
                margin: 1em auto;
                border: 0;
                border-top: 5px solid #00ccff;
                box-shadow: 0 2px 10px rgb(0, 204, 255);
                visibility: visible;
                float: none;
                text-align: center;
            }

                dialog::backdrop {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background-color: rgba(0, 0, 0, 0.8);
                }
        </style>
          </center>
</asp:Content>
