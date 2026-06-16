CREATE TABLE cliente (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    documento VARCHAR(20) NOT NULL UNIQUE,
    tipo VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_cadastro TIMESTAMP NOT NULL
);

CREATE TABLE operacao (
    id BIGSERIAL PRIMARY KEY,
    cliente_id BIGINT NOT NULL,
    tipo_operacao VARCHAR(50) NOT NULL,
    valor DECIMAL(15,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_operacao TIMESTAMP NOT NULL,

    CONSTRAINT fk_operacao_cliente
        FOREIGN KEY(cliente_id)
        REFERENCES cliente(id)
);
