<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <!---inicio de scripts---->
    <!---Bootstrap y Jquery---->
    <linkrel="stylesheet"href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <linkrel="stylesheet"href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <!---Fin---->
      
       <!---Complementos del pluig in---->
        <scripttype="text/javascript"src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyASq8YmttACgZGX3HVwu-8eB37gtmhYqmY'></script>
        <script src="js/location.jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">  
        <div class="container">
            <button type="button" data-toggle="modal" data-target="#ModalMap" class="btn btn-default">
                <span class="glyficon glyficon-map-market"></span>
                <span id="ubicacion">Seleccionar ubicación</span>
                </button>
                <style>
                    .pac-container{
                        z-index:99999;
                    }
                </style>
            <div class="modal fade" id="ModalMap" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Ubicación:</label>
                                <div class="col-sm-9 ">
                                    <asp:TextBox ID="ModalMapaddress" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </div>
                            <div id="ModalMapPreview" style="width:100%; height:400px;"></div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="m-t-small">
                                <label class="p-r-small col-sm-1 control-label">lat.:</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="ModalMapLat" CssClass="form-Control" runat="server"></asp:TextBox>
                                 </div>
                                 <label class="p-r-small col-sm-1 control-label">long.:</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="ModalMapLong" CssClass="form-Control" runat="server"></asp:TextBox>
                                 </div>
                                <div class="col-sm-3">
                                    <button type="button" class="btn btn-primary btn-block">Aceptar</button>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <script>

                                $('#ModalMapPreview').localtionpicker({
                                    radius: 0,
                                    location: {
                                        latitude: 20.938297181414647,
                                        longitud: -89.61501516379462
                                    },
                                    enableAutocomplete: true,
                                    inputBinding: {
                                        latitudeInput: $('#<%=ModalMapLat.ClientID%>'),
                                        longitudeInput: $('#<%=ModalMapLong.ClientID%>'),
                                        locationNameInput:$('#<%=ModalMapaddress.ClientID%>')
                                    },

                                    onchanged: function (currentLocation, radius, isMarkerDropped) {
                                        $('#ubicación').html($('#<%=ModalMapaddress.ClientID%>').val())
                                    }
                                });

                                $('#ModalMap').on('show.bs.modal', function () {
                                    $('#ModalMapPreview').localtionpicker('autosize');
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </form>
</body>
</html>

