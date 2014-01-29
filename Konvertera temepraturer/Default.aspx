<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temepraturer.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/style.css" rel="stylesheet" />
</head>
<body>
    <header class="header">
        <h1>Konvertera temperaturer</h1>
    </header>
    <form id="form1" runat="server">
    <asp:ValidationSummary class="error" ID="ValidationSummary1" runat="server" DisplayMode="BulletList" />
    <div>
        <%-- Starttemperatur box --%>
        <p>Starttemperatur:</p>
        <asp:TextBox ID="StarttempBox" runat="server"></asp:TextBox>
        <%-- Starttemperatur kontroller --%>
        <asp:RequiredFieldValidator class="error" ID="StartRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en starttemperatur " Display="Dynamic" ControlToValidate="StarttempBox" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator class="error" ID="StartCompareValidator" runat="server" ErrorMessage="Startemperaturen måste vara ett tal " ControlToValidate="StarttempBox" Display="None" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
    </div>
    <div>
        <%-- Slutttemperatur box --%>
        <p>Slutttemperatur:</p>
        <asp:TextBox ID="EndtempBox" runat="server"></asp:TextBox>
        <%-- Sluttemperatur kontroller --%>
        <asp:RequiredFieldValidator class="error" ID="EndRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en sluttemperatur" Display="Dynamic" ControlToValidate="EndtempBox" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator class="error" ID="CompareValidator1" runat="server" ErrorMessage="Sluttemperaturen måste vara ett tal" Display="None" Operator="DataTypeCheck" Type="Integer" ControlToValidate="EndtempBox"></asp:CompareValidator>
        <asp:CompareValidator class="error" ID="EndCompareValidator" runat="server" ErrorMessage="Sluttemperaturen måste vara större än starttemperaturen" Display="Dynamic" ControlToValidate="EndtempBox" Type="Integer" ControlToCompare="StarttempBox" Operator="GreaterThan" Text="*"></asp:CompareValidator>
    </div>
    <div>
        <%-- Temperaturökning box --%>
        <p>Temperaturökning:</p>
        <asp:TextBox ID="TempincreaseBox" runat="server"></asp:TextBox>
        <%-- Temperaturökning kontroller --%>
        <asp:RequiredFieldValidator class="error" ID="IncreaseRequiredFieldValidator" runat="server" ErrorMessage="Fyll i en temperaturstigning" ControlToValidate="TempincreaseBox" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
        <asp:RangeValidator class="error" ID="IncreaseRangeValidator" runat="server" ErrorMessage="Temperatursteget måste vara mellan 1 och 100" Display="Dynamic" Type="Integer" ControlToValidate="TempincreaseBox" MinimumValue="1" MaximumValue="100" Text="*"></asp:RangeValidator>
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
            <asp:TableHeaderRow ID="tableHeader">
                <asp:TableHeaderCell ID="firstHeaderCell"></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="secondHeaderCell"></asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </form>
</body>
</html>
