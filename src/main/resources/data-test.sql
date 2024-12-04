INSERT INTO Usuarios (id, nombre, email, password, rol) VALUES
                                                            (1, 'Juan Pérez', 'juan.perez@email.com', 'password123', 'CLIENTE'),
                                                            (2, 'María López', 'maria.lopez@email.com', 'password456', 'CLIENTE'),
                                                            (3, 'Carlos Ramírez', 'carlos.ramirez@email.com', 'password789', 'AGENTE'),
                                                            (4, 'Ana Torres', 'ana.torres@email.com', 'password101', 'AGENTE'),
                                                            (5, 'Admin', 'admin@email.com', 'adminpassword', 'ADMINISTRADOR')
    ON DUPLICATE KEY UPDATE nombre=VALUES(nombre), email=VALUES(email), password=VALUES(password), rol=VALUES(rol);

INSERT INTO Proyectos (id, nombre, descripcion) VALUES
                                                    (1, 'Proyecto A', 'Descripción del Proyecto A'),
                                                    (2, 'Proyecto B', 'Descripción del Proyecto B'),
                                                    (3, 'Proyecto C', 'Descripción del Proyecto C'),
                                                    (4, 'Proyecto D', 'Descripción del Proyecto D'),
                                                    (5, 'Proyecto E', 'Descripción del Proyecto E')
    ON DUPLICATE KEY UPDATE nombre=VALUES(nombre), descripcion=VALUES(descripcion);

INSERT INTO Citas (id, cliente_id, proyecto_id, consulta, fecha_creacion, agente_id, estado, fecha_asignacion, fecha_cerrado) VALUES
                                                                                                                                  (1, 1, 1, 'Consulta sobre Proyecto A', '2024-12-01 10:00:00', 3, 'ASIGNADA', '2024-12-01 10:30:00', NULL),
                                                                                                                                  (2, 2, 2, 'Consulta sobre Proyecto B', '2024-12-02 11:00:00', 4, 'PENDIENTE', NULL, NULL),
                                                                                                                                  (3, 1, 3, 'Consulta sobre Proyecto C', '2024-12-03 12:00:00', NULL, 'PENDIENTE', NULL, NULL),
                                                                                                                                  (4, 2, 4, 'Consulta sobre Proyecto D', '2024-12-04 14:00:00', 3, 'COMPLETADA', '2024-12-04 14:30:00', '2024-12-04 15:00:00'),
                                                                                                                                  (5, 1, 5, 'Consulta sobre Proyecto E', '2024-12-05 16:00:00', 4, 'REABIERTA', '2024-12-05 16:30:00', NULL)
    ON DUPLICATE KEY UPDATE cliente_id=VALUES(cliente_id), proyecto_id=VALUES(proyecto_id), consulta=VALUES(consulta),
    fecha_creacion=VALUES(fecha_creacion), agente_id=VALUES(agente_id), estado=VALUES(estado),
                         fecha_asignacion=VALUES(fecha_asignacion), fecha_cerrado=VALUES(fecha_cerrado);
