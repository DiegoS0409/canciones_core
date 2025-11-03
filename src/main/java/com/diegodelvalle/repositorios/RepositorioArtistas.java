package com.diegodelvalle.repositorios;

import com.diegodelvalle.modelos.Artista;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositorioArtistas extends CrudRepository<Artista, Long> {
}
