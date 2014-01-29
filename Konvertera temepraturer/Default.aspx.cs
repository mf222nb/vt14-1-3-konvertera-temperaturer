using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

                var rowCnt = endTemp / increase;

                if (CelsiusRadioButton.Checked)
                {
                    
                }
                for (startTemp = 1; startTemp <= rowCnt ; startTemp++)
                {
                    TableRow tRow = new TableRow();
                    Table1.Rows.Add(tRow);
                    for (int i = 0; i < 2; i++)
                    {
                        TableCell tCell = new TableCell();
                        tRow.Cells.Add(tCell);
                    }
                }
                Table1.Visible = true;
            }
        }
    }
}