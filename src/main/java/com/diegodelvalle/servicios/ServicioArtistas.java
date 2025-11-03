package com.diegodelvalle.servicios;

import com.diegodelvalle.modelos.Artista;
import com.diegodelvalle.repositorios.RepositorioArtistas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ServicioArtistas {

    @Autowired
    private RepositorioArtistas repositorio;

    public List<Artista> obtenerTodosLosArtistas() {
        return (List<Artista>) repositorio.findAll();
    }

    public Artista obtenerArtistaPorId(Long id) {
        Optional<Artista> artista = repositorio.findById(id);
        return artista.orElse(null);
    }

    public Artista agregarArtista(Artista artista) {
        return repositorio.save(artista);
    }

    public Artista actualizarArtista(Artista artista) {
        return repositorio.save(artista);
    }

    public void eliminarArtista(Long id) {
        repositorio.deleteById(id);
    }
}
