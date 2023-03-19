using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.servicio
{
    internal class implementFactoryServicio : factoryServicio
    {
        public override iServicio crearServicio()
        {
            return new ticketServicio();
        }
    }
}
