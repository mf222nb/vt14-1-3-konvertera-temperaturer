using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Konvertera_temepraturer.Model;

namespace Konvertera_temepraturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //Starttemperaturens värde
                var startTemp = int.Parse(StarttempBox.Text);

                //Sluttemperaturens värde
                var endTemp = int.Parse(EndtempBox.Text);

                //Temperaturstegningens värde
                var increase = int.Parse(TempincreaseBox.Text);

                //Tittar vilken av radioknapparna som är klickade
                if (CelsiusRadioButton.Checked)
                {
                    firstHeaderCell.Text = "&deg;C";
                    secondHeaderCell.Text = "&deg;F";
                }
                else if (FahrenheitRadioButton.Checked)
                {
                    firstHeaderCell.Text = "&deg;F";
                    secondHeaderCell.Text = "&deg;C";
                }

                //Loopar igenom för att se hur många rader och celler som jag behöver
                for (int temp = startTemp; startTemp <= endTemp ; startTemp += increase)
                {
                    TableRow tRow = new TableRow();
                    Table1.Rows.Add(tRow);

                    TableCell tRowCell = new TableCell();
                    tRowCell.Text = startTemp.ToString();
                    tRow.Cells.Add(tRowCell);
                    
                    TableCell tCell = new TableCell();
                    tRow.Cells.Add(tCell);
                    
                    if (CelsiusRadioButton.Checked)
                    {
                        tCell.Text = TemperatureConverter.CelsiusToFahrenheit(startTemp).ToString();
                    }
                    else
                    {
                        tCell.Text = TemperatureConverter.FahrenheitToCelsius(startTemp).ToString();
                    }
                }
                Table1.Visible = true;
            }
        }
    }
}