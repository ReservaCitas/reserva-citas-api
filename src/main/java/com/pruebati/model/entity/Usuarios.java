package com.pruebati.model.entity;

import com.pruebati.model.enums.Rol;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Usuarios")
@Data
public class Usuarios {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 100)
    private String nombre;

    @Column(nullable = false, unique = true, length = 100)
    private String email;

    @Column(nullable = false, length = 255)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Rol rol;
}
