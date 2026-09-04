USE imobiliaria_migrante;

INSERT INTO tipo_imovel (id, nome) VALUES
(1, 'Apartamento'),
(2, 'Casa'),
(3, 'Sala Comercial'),
(4, 'Galpão');

INSERT INTO imovel (id, codigo, descricao, id_tipo_imovel) VALUES
(1, 4356, 'Apartamento 100 m2 em condomínio fechado', 1),
(2, 4357, 'Apartamento studio compacto para locação', 1),
(3, 5101, 'Casa térrea com quintal amplo', 2),
(4, 5102, 'Casa em condomínio residencial', 2),
(5, 6201, 'Sala comercial central para escritórios', 3),
(6, 6202, 'Conjunto de salas para coworking', 3),
(7, 7301, 'Galpão logístico com docas de carga', 4),
(8, 7302, 'Galpão industrial com pátio para manobra', 4);

INSERT INTO pagamento (data_pagamento, valor, id_imovel) VALUES
('2023-01-10', 5000.00, 1), ('2023-01-12', 1800.00, 2), ('2023-01-15', 3200.00, 3),
('2023-01-20', 4500.00, 4), ('2023-01-22', 2800.00, 5), ('2023-03-05', 3500.00, 6),
('2023-03-10', 8500.00, 7), ('2023-03-11', 9200.00, 8), ('2023-03-15', 5000.00, 1),
('2023-03-18', 1900.00, 2), ('2023-05-02', 3200.00, 3), ('2023-05-08', 4600.00, 4),
('2023-05-12', 2900.00, 5), ('2023-05-15', 3600.00, 6), ('2023-05-20', 8700.00, 7),
('2023-08-10', 5000.00, 1), ('2023-08-12', 1850.00, 2), ('2023-08-14', 3300.00, 3),
('2023-08-19', 4700.00, 4), ('2023-08-22', 3000.00, 5), ('2023-08-25', 9500.00, 8),
('2023-10-05', 3700.00, 6), ('2023-10-10', 5200.00, 1), ('2023-10-15', 1900.00, 2),
('2023-10-20', 8800.00, 7), ('2023-10-25', 9600.00, 8), ('2024-01-08', 3400.00, 3),
('2024-01-11', 4800.00, 4), ('2024-01-15', 3100.00, 5), ('2024-01-18', 3800.00, 6),
('2024-01-22', 9000.00, 7), ('2024-01-26', 9800.00, 8);