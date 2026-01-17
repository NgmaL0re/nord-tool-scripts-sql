CREATE TABLE IF NOT EXISTS status_vistoria (
    id_status_vistoria SMALLINT NOT NULL,
    nm_status_vistoria VARCHAR(15) NOT NULL,
    CONSTRAINT PK_status_vistoria PRIMARY KEY (id_status_vistoria),
    CONSTRAINT UK01_nm_status_vistoria UNIQUE (nm_status_vistoria)
);
