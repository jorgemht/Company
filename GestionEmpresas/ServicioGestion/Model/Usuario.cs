//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServicioGestion.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public Usuario()
        {
            this.AccionComercial = new HashSet<AccionComercial>();
        }
    
        public int idUsuario { get; set; }
        public string login { get; set; }
        public string nombre { get; set; }
        public string password { get; set; }
    
        public virtual ICollection<AccionComercial> AccionComercial { get; set; }
    }
}
