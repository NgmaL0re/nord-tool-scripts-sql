CREATE TABLE IF NOT EXISTS apartamento_vistoria (
    id_apartamento_vistoria BIGSERIAL NOT NULL,
    nm_apartamento_vistoria VARCHAR(10) NOT NULL,
    id_dia_semana SMALLINT NOT NULL,
    dt_apartamento_vigente DATE,
    nm_horario_vistoria VARCHAR(5),
    id_status_vistoria SMALLINT NOT NULL,
    in_marcar_revistoria BOOLEAN DEFAULT FALSE,
    tx_observacao_revistoria TYPE TEXT,
    dt_revistoria_vigente DATE,
    CONSTRAINT PK_apartamento_vistoria PRIMARY KEY (id_apartamento_vistoria),
    CONSTRAINT UK01_apartamento_vistoria UNIQUE (id_apartamento_vistoria),
    CONSTRAINT FK01_dia_semana_x_apartamento_vistoria FOREIGN KEY (id_dia_semana) REFERENCES dia_semana (id_dia_semana),
    CONSTRAINT FK02_status_vistoria_x_apartamento_vistoria FOREIGN KEY (id_status_vistoria) REFERENCES status_vistoria (id_status_vistoria)
);

DO $$
    BEGIN
        IF EXISTS (SELECT 1 FROM pg_attribute
            WHERE attrelid = 'apartamento_vistoria'::regclass
            AND attname = 'tx_observacao_revistoria'
            AND NOT attisdropped
        ) THEN
            ALTER TABLE apartamento_vistoria
            ALTER COLUMN tx_observacao_revistoria TYPE TEXT;
    END IF;
END $$;