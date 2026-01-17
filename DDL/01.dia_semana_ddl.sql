CREATE TABLE IF NOT EXISTS dia_semana (
    id_dia_semana SMALLINT NOT NULL,
    nm_dia_semana VARCHAR(15),
  CONSTRAINT PK_dia_semana PRIMARY KEY (id_dia_semana),
  CONSTRAINT UK01_nm_dia_semana UNIQUE (nm_dia_semana)
);
