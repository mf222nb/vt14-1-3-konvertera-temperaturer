<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temepraturer.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/style.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Konvertera temperaturer</h1>
    </header>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary class="error" ID="ValidationSummary1" runat="server" DisplayMode="BulletList" />
        <p>Starttemperatur:</p>
        <asp:TextBox ID="StarttempBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="StartRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en starttemperatur " Display="None" ControlToValidate="StarttempBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="StartCompareValidator" runat="server" ErrorMessage="Startemperaturen måste vara ett tal " ControlToValidate="StarttempBox" Display="None" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
    </div>
    <div>
        <p>Slutttemperatur:</p>
        <asp:TextBox ID="EndtempBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="EndRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en sluttemperatur" Display="None" ControlToValidate="EndtempBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Sluttemperaturen måste vara ett tal" Display="None" Operator="DataTypeCheck" Type="Integer" ControlToValidate="EndtempBox"></asp:CompareValidator>
        <asp:CompareValidator ID="EndCompareValidator" runat="server" ErrorMessage="Sluttemperaturen måste vara större än starttemperaturen" Display="None" ControlToValidate="EndtempBox" Type="Integer" ControlToCompare="StarttempBox" Operator="GreaterThan"></asp:CompareValidator>
    </div>
    <div>
        <p>Temperaturökning:</p>
        <asp:TextBox ID="TempincreaseBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="IncreaseRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en temperaturstigning" ControlToValidate="TempincreaseBox" Display="None"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="IncreaseRangeValidator" runat="server" ErrorMessage="Temperatursteget måste vara mellan 1 och 100" Display="None" Type="Integer" ControlToValidate="TempincreaseBox" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
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
