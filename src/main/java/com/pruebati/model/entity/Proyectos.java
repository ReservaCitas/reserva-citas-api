package com.pruebati.model.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Proyectos")
@Data
public class Proyectos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, unique = true, length = 100)
    private String nombre;

    @Column(columnDefinition = "TEXT")
    private String descripcion;
}
