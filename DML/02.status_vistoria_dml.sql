INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (1, 'Não Liberado')
ON CONFLICT (nm_status_vistoria) DO NOTHING;

INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (2, 'Agendado')
ON CONFLICT (nm_status_vistoria) DO NOTHING;

INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (3, 'Liberado')
ON CONFLICT (nm_status_vistoria) DO NOTHING;

INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (4, 'Aprovado')
ON CONFLICT (nm_status_vistoria) DO NOTHING;

INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (5, 'Reprovado')
ON CONFLICT (nm_status_vistoria) DO NOTHING;

INSERT INTO status_vistoria (id_status_vistoria, nm_status_vistoria)
VALUES (6, 'Pendente')
ON CONFLICT (nm_status_vistoria) DO NOTHING;
