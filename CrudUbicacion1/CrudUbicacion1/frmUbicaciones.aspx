﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>stores</title>    
</head>
<body>
    <form id="form1" runat="server">   
     <div class="container">
      <div class="row">
      <div class="col-md-4">
       <label for="exampleInputEmail1">Ubicacion</label>
       <asp:HiddenField ID="txtID" runat="server" />
       <asp:TextBox ID="txtUbicación" CssClass="form-control" runat="server"><asp:TextBox>
           <div class="form-control">
          <div id="ModalMapPreview" style="width:100%; height:400px;"></div>
          <!----latitud y longitud---->
          <div class="form-group">
           <label for="exampleInputPassword1">Lat.:</label>
           <asp:TextBox ID="txtLat" Text="20.938297181414647" CssClass="form-control" runat="server"><asp:TextBox>
           <label for="exampleInputPassword1">Long.:</label>
            <asp:TextBox ID="txtLat" Text="-89.61501516379462" CssClass="form-control" runat="server"><asp:TextBox>
          </div>
     </div>
      </div>
      <div class="col-md-8"></div>
      </div>
      </div>
    </form>
</body>
</html>
