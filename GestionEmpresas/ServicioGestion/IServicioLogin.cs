﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ServicioGestion
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IServicioLogin" in both code and config file together.
    [ServiceContract]
    public interface IServicioLogin
    {
        [OperationContract]
        bool esUsuario(string login, string password);
   
    }
}
