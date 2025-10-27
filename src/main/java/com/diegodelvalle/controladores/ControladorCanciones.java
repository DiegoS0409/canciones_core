package com.diegodelvalle.controladores;

import com.diegodelvalle.modelos.Cancion;
import com.diegodelvalle.servicios.ServicioCanciones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.List;

@Controller
public class ControladorCanciones {
    
    @Autowired
    private ServicioCanciones servicio;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        List<Cancion> canciones = servicio.obtenerTodasLasCanciones();
        model.addAttribute("canciones", canciones);
        return "canciones";
    }
    
    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion);
        return "detalleCancion";
    }
    
}
