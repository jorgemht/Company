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
    
    public partial class TipoDeAccion
    {
        public TipoDeAccion()
        {
            this.AccionComercial = new HashSet<AccionComercial>();
        }
    
        public int idTipoAccion { get; set; }
        public string descripcion { get; set; }
    
        public virtual ICollection<AccionComercial> AccionComercial { get; set; }
    }
}
