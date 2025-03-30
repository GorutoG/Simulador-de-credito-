using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SimuladorWEB_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
      protected void PedirCr_Click(object sender, EventArgs e)
  {
      double num1 = Convert.ToDouble(CantMonto.Text);
      double num2 = Convert.ToDouble(CantInteres.Text)/100;
      double num3 = Convert.ToDouble(CantPlazo.Text);
      double resultado = (num1 * num2) / (1 - Math.Pow(1 + num2, -num3));
      if (num1 < 1000000 || num1 > 10000000 || num2 < 0.01 || num2 > 0.03 || num3 < 12 || num3 > 72)
      {
          Resultado.Text = "Error: Ingrese valores dentro de los rangos permitidos:\n" +
                           "- Monto: Entre 1,000,000 y 10,000,000\n" +
                           "- Interés: Entre 1% y 3%\n" +
                           "- Plazo: Entre 12 y 72 meses";
          return;
      }
      Resultado.Text = resultado.ToString("F2");
  }
}