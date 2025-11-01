package com.diegodelvalle.servicios;

import com.diegodelvalle.modelos.Cancion;
import com.diegodelvalle.repositorios.RepositorioCanciones;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import java.util.Optional;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorio;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorio.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        Optional<Cancion> cancion = repositorio.findById(id);
        return cancion.orElse(null);
    }

    public Cancion agregarCancion(Cancion cancion) {
        return repositorio.save(cancion);
    }
}