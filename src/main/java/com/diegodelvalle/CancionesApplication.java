package com.diegodelvalle;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(scanBasePackages = "com.diegodelvalle")
public class CancionesApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(CancionesApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(CancionesApplication.class);
    }

}
