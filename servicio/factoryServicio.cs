using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.servicio
{
    // Abstract factory class defining a method to create an instance of iServicio
    abstract class factoryServicio
    {
        public abstract iServicio crearServicio();
    }
}
