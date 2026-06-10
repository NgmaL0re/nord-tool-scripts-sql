CREATE TABLE apartamento_vistoria_historico (
    id_apartamento_vistoria_historico BIGSERIAL PRIMARY KEY,
    id_apartamento_vistoria BIGINT NOT NULL,
    nr_versao INTEGER NOT NULL,
    nm_atributo VARCHAR(25) NOT NULL,
    tx_anterior TEXT,
    tx_atual TEXT,
    dt_alteracao TIMESTAMP NOT NULL DEFAULT NOW(),
    nm_usuario VARCHAR(36) NULL,
    CONSTRAINT PK_apartamento_vistoria_historico PRIMARY KEY (id_apartamento_vistoria_historico),
    CONSTRAINT FK01_apartamento_vistoria_x_apartamento_vistoria_historico 
        FOREIGN KEY (id_apartamento_vistoria) REFERENCES apartamento_vistoria (id_apartamento_vistoria)
);