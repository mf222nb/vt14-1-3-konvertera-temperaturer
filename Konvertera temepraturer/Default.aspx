<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temepraturer.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <header>
        <h1>Konvertera temperaturer</h1>
    </header>
    <form id="form1" runat="server">
    <div>
        <p>Starttemperatur:</p>
        <asp:TextBox ID="StarttempBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="StartRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en starttemperatur " Display="Dynamic" ControlToValidate="StarttempBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="StartCompareValidator" runat="server" ErrorMessage="Startemperaturen måste vara ett tal " ControlToValidate="StarttempBox" Display="Dynamic" Type="Integer"></asp:CompareValidator>
    </div>
    <div>
        <p>Slutttemperatur:</p>
        <asp:TextBox ID="EndtempBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="EndRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en sluttemperatur" Display="Dynamic" ControlToValidate="EndtempBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="EndCompareValidator" runat="server" ErrorMessage="Sluttemperaturen måste vara större än starttemperaturen" Display="Dynamic" ControlToValidate="EndtempBox" Type="Integer" ControlToCompare="StarttempBox" Operator="GreaterThan"></asp:CompareValidator>
    </div>
    <div>
        <p>Temperaturökning:</p>
        <asp:TextBox ID="TempincreaseBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="IncreaseRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en temperaturstigning" ControlToValidate="TempincreaseBox" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="IncreaseRangeValidator" runat="server" ErrorMessage="Temperatursteget måste vara mellan 1 och 100" Display="Dynamic" Type="Integer"></asp:RangeValidator>
    </div>
    <div>
        <asp:RadioButton ID="CelsiusRadioButton" runat="server" GroupName="Type" Text="Celsius till Fahrenheit" />
    </div>
    <div>
        <asp:RadioButton ID="FahrenheitRadioButton" runat="server" GroupName="Type" Text="Fahrenheit till Celsius" />
    </div>
    <div>
        <asp:Button ID="SubmitButton" runat="server" Text="Konvertera" OnClick="SubmitButton_Click"/>
    </div>
            <asp:Table ID="Table1" runat="server" Visible="false">

            </asp:Table>
    </form>
</body>
</html>
