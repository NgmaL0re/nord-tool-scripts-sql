INSERT INTO dia_semana (id_dia_semana, nm_dia_semana)
VALUES (1, 'Segunda-Feira')
ON CONFLICT (nm_dia_semana) DO NOTHING;

INSERT INTO dia_semana (id_dia_semana, nm_dia_semana)
VALUES (2, 'Terça-Feira')
ON CONFLICT (nm_dia_semana) DO NOTHING;

INSERT INTO dia_semana (id_dia_semana, nm_dia_semana)
VALUES (3, 'Quarta-Feira')
ON CONFLICT (nm_dia_semana) DO NOTHING;

INSERT INTO dia_semana (id_dia_semana, nm_dia_semana)
VALUES (4, 'Quinta-Feira')
ON CONFLICT (nm_dia_semana) DO NOTHING;

INSERT INTO dia_semana (id_dia_semana, nm_dia_semana)
VALUES (5, 'Sexta-Feira')
ON CONFLICT (nm_dia_semana) DO NOTHING;