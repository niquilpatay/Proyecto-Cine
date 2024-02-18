using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.servicio
{
    // Concrete implementation of factoryServicio creating an instance of ticketServicio
    internal class implementFactoryServicio : factoryServicio
    {
        // Implementation of the abstract method to create an instance of iServicio
        public override iServicio crearServicio()
        {
            return new ticketServicio();
        }
    }
}
