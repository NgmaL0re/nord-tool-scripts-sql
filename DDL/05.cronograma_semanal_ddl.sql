CREATE TABLE IF NOT EXISTS cronograma_semanal (
    id_cronograma_semanal BIGSERIAL NOT NULL,
    id_dia_semana SMALLINT NOT NULL,
    nm_cronograma_semanal VARCHAR(20) NOT NULL,
    nm_horario VARCHAR(5),
    nm_categoria VARCHAR(15),
    nm_status_cronograma VARCHAR(15),
    tx_observacao VARCHAR(1000),
    dt_prazo TIMESTAMP NULL,
    dt_finalizacao TIMESTAMP NULL,
    nm_usuario VARCHAR(36) NULL,
    dt_inclusao TIMESTAMP NOT NULL DEFAULT NOW(),
    dt_alteracao TIMESTAMP NULL,
    CONSTRAINT PK_cronograma_semanal PRIMARY KEY (id_cronograma_semanal),
    CONSTRAINT UK01_id_cronograma_semanal UNIQUE (id_cronograma_semanal),
    CONSTRAINT FK01_dia_semana_x_cronograma_semanal FOREIGN KEY (id_dia_semana) REFERENCES dia_semana (id_dia_semana)
);
