package com.diegodelvalle.controladores;

import com.diegodelvalle.modelos.Artista;
import com.diegodelvalle.servicios.ServicioArtistas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import org.springframework.validation.BindingResult;
import java.util.List;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicio;

    @GetMapping("/artistas")
    public String listarArtistas(Model model) {
        List<Artista> artistas = servicio.obtenerTodosLosArtistas();
        model.addAttribute("artistas", artistas);
        return "artistas";
    }

    @GetMapping("/artistas/detalle/{id}")
    public String detalleArtista(@PathVariable Long id, Model model) {
        Artista artista = servicio.obtenerArtistaPorId(id);
        model.addAttribute("artista", artista);
        return "detalleArtista";
    }

    @GetMapping("/artistas/formulario/agregar")
    public String formularioAgregar(Model model) {
        model.addAttribute("artista", new Artista());
        return "agregarArtista";
    }

    @PostMapping("/artistas/procesa/agregar")
    public String procesarAgregar(@Valid @ModelAttribute("artista") Artista artista, BindingResult result) {
        if (result.hasErrors()) {
            return "agregarArtista";
        }
        servicio.agregarArtista(artista);
        return "redirect:/artistas";
    }

    @GetMapping("/artistas/formulario/editar/{id}")
    public String formularioEditar(@PathVariable Long id, Model model) {
        Artista artista = servicio.obtenerArtistaPorId(id);
        if (artista == null) {
            return "redirect:/artistas";
        }
        model.addAttribute("artista", artista);
        return "editarArtista";
    }

    @PostMapping("/artistas/procesa/editar/{id}")
    public String procesarEditar(@PathVariable Long id, @Valid @ModelAttribute("artista") Artista artista, BindingResult result) {
        if (result.hasErrors()) {
            return "editarArtista";
        }
        artista.setId(id);
        servicio.actualizarArtista(artista);
        return "redirect:/artistas";
    }

    @GetMapping("/artistas/eliminar/{id}")
    public String eliminarArtista(@PathVariable Long id) {
        servicio.eliminarArtista(id);
        return "redirect:/artistas";
    }
}
