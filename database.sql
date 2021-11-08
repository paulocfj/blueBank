CREATE CACHED TABLE "PUBLIC"."MOVIMENTACAO"(
    "ID" BIGINT NOT NULL,
    "CONTA_DESTINO" BIGINT,
    "CONTA_ORIGEM" BIGINT,
    "DATA" TIMESTAMP,
    "TIPO_DE_MOVIMENTACAO" INTEGER NOT NULL,
    "VALOR" DOUBLE NOT NULL,
    "MOVIMENTACAO_ID" BIGINT
)
CREATE CACHED TABLE "PUBLIC"."CONTA"(
    "ID" BIGINT NOT NULL,
    "ATIVA" BOOLEAN,
    "NUMERO_CONTA" BIGINT NOT NULL,
    "SALDO" DOUBLE NOT NULL,
    "TIPO_DE_CONTA" INTEGER
)
CREATE CACHED TABLE "PUBLIC"."ENDERECO"(
    "ID" BIGINT NOT NULL,
    "BAIRRO" VARCHAR(255) NOT NULL,
    "CEP" VARCHAR(255) NOT NULL,
    "CIDADE" VARCHAR(255) NOT NULL,
    "COMPLEMENTO" VARCHAR(255),
    "NUMERO" INTEGER NOT NULL,
    "RUA" VARCHAR(255) NOT NULL,
    "UF" VARCHAR(255) NOT NULL
)
CREATE CACHED TABLE "PUBLIC"."CLIENTE"(
    "ID" BIGINT NOT NULL,
    "DOCUMENTO" VARCHAR(255) NOT NULL,
    "EMAIL" VARCHAR(255) NOT NULL,
    "IDADE" INTEGER NOT NULL,
    "NOME" VARCHAR(255) NOT NULL,
    "TELEFONE" VARCHAR(255) NOT NULL,
    "ENDERECO_ID" BIGINT
)
CREATE CACHED TABLE "PUBLIC"."CLIENTE_CONTAS"(
    "CLIENTE_ID" BIGINT NOT NULL,
    "CONTAS_ID" BIGINT NOT NULL
)