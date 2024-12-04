package com.pruebati.model.entity;

import com.pruebati.model.enums.EstadoCita;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Entity
@Table(name = "Citas")
@Data
public class Citas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(
            name = "cliente_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_citas_clientes"),
            nullable = false
    )
    private Usuarios cliente;

    @ManyToOne
    @JoinColumn(
            name = "proyecto_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_citas_proyectos"),
            nullable = false
    )
    private Proyectos proyecto;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String consulta;

    @Column(nullable = false)
    private LocalDateTime fechaCreacion;

    @ManyToOne
    @JoinColumn(
            name = "agente_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_citas_agentes")
    )
    private Usuarios agente;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private EstadoCita estado;

    private LocalDateTime fechaAsignacion;

    private LocalDateTime fechaCerrado;
}
