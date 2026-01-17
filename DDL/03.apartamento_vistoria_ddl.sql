CREATE TABLE IF NOT EXISTS apartamento_vistoria (
    id_apartamento_vistoria BIGSERIAL NOT NULL,
    nm_apartamento_vistoria VARCHAR(10) NOT NULL,
    id_dia_semana SMALLINT NOT NULL,
    dt_apartamento_vigente DATE,
    nm_horario_vistoria VARCHAR(5),
    id_status_vistoria SMALLINT NOT NULL,
    in_marcar_revistoria BOOLEAN DEFAULT FALSE,
    tx_observacao_revistoria VARCHAR(255),
    dt_revistoria_vigente DATE,
    CONSTRAINT PK_apartamento_vistoria PRIMARY KEY (id_apartamento_vistoria),
    CONSTRAINT UK01_apartamento_vistoria UNIQUE (id_apartamento_vistoria),
    CONSTRAINT FK01_dia_semana_x_apartamento_vistoria FOREIGN KEY (id_dia_semana) REFERENCES dia_semana (id_dia_semana),
    CONSTRAINT FK02_status_vistoria_x_apartamento_vistoria FOREIGN KEY (id_status_vistoria) REFERENCES status_vistoria (id_status_vistoria)
);