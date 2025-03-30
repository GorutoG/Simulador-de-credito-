<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SimuladorWeb_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Label ID="Title" runat="server" Text="Simulador de Credito" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>
            <asp:Label ID="Datos" runat="server" Font-Size="Large" Text="Datos para el credito"></asp:Label>
            <br />
        <asp:Label ID="Monto" runat="server" Text="Monto del credito(1.000.000-10.000.000):" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="CantMonto" runat="server" style="margin-top: 16px" Font-Size="Large"></asp:TextBox>
        <br />
        <asp:Label ID="Interes" runat="server" Text="Intereses Mensuales(1-3):" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="CantInteres" runat="server" Font-Size="Large" style="margin-right: 0px"></asp:TextBox>
        <br />
        <asp:Label ID="Plazo" runat="server" Text="Plazo de pago(12-72 meses):" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="CantPlazo" runat="server" Font-Size="Large"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="PedirCr" runat="server" BorderStyle="Outset" Font-Size="X-Large" Text="Pedir Credito" OnClick="PedirCr_Click" style="text-align: justify" />
        <br />
        <br />
        <asp:Label ID="Proyección" runat="server" Font-Size="XX-Large" Text="Proyección"></asp:Label>
        <br />
        <br />
        <asp:Label ID="PagoMensual" runat="server" Font-Size="Large" Text="Cuota mensual"></asp:Label>
        :
        <asp:Label ID="Resultado" runat="server"></asp:Label>
        <br />
        <br />
    </form>
</body>
</html>
