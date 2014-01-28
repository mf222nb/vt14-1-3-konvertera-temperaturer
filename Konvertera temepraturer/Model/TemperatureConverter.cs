using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Konvertera_temepraturer.Model
{
    public static class TemperatureConverter
    {
        public static int CelsiusToFahrenheit(int degreesC) 
        {
            double celsius = degreesC * 1.8 + 32;
            return Convert.ToInt32(celsius);
        }

        public static int FahrenheitToCelsius(int degreesF)
        {
            int fahrenheit = (degreesF - 32) * 5 / 9;
            return fahrenheit;
        }
    }
}