CREATE DATABASE desafio_iti;

CREATE TABLE customer(
	customer_id VARCHAR(30),
	name VARCHAR(30),
	document_number bigint,
	created_at timestamp,
	updated_at timestamp, 
	phone_number bigint,
	address VARCHAR(30),
	timestamp timestamp,
 	event_id VARCHAR(30),
	dt date
);

CREATE TABLE account(
	account_id bigint,
	customer_id VARCHAR(30),
	created_at timestamp,
	updated_at timestamp,
	status VARCHAR(30),
	timestamp timestamp,
	event_id VARCHAR(30),
	dt date
);

CREATE TABLE bankslip(
	amount double,
	account_id bigint,
	beneficiary_name VARCHAR(30),
	barcode VARCHAR(30),
	due_date date,
	timestamp timestamp,
	event_id VARCHAR(30),
	dt date
);

CREATE TABLE pix_send(
	amount double,
	account_id bigint,
	type_document_number_source_holder VARCHAR(30),
	document_number_source_holder bigint,
	type_document_number_destination_holder VARCHAR(30),
	document_number_dentination_holder bigint,
	user_message VARCHAR(30),
	destination_key VARCHAR(30),
	timestamp timestamp,
	event_id VARCHAR(30),
	dt date
);

CREATE TABLE pix_received(
	amount double,
	account_id bigint,
	type_document_number_source_holder VARCHAR(30),
	document_number_source_holder bigint,
	type_document_number_destination_holder VARCHAR(30),
	document_number_dentination_holder bigint,
	user_message VARCHAR(30),
	timestamp timestamp,
	event_id VARCHAR(30),
	dt date
);

CREATE TABLE p2p_tef(
	amount double,
	account_id_source bigint,
	account_id_destination VARCHAR(30),
	timestamp timestamp,
	event_id VARCHAR(30),
	dt date
);

INSERT INTO customer (customer_id, name, document_number, created_at, updated_at, phone_number, address, timestamp, event_id, dt) 
VALUES 
    ('123456', 'João Silva', 12345678901, '2022-01-01 12:00:00', '2022-01-02 12:00:00', 11999999999, 'Rua A, 123', '2022-01-03 12:00:00', 'abc123', '2022-01-04'),
    ('234567', 'Maria Souza', 23456789101, '2022-01-02 12:00:00', '2022-01-03 12:00:00', 11988888888, 'Av. B, 456', '2022-01-04 12:00:00', 'def456', '2022-01-05'),
    ('345678', 'Ana Santos', 34567891012, '2022-01-06 12:00:00', '2022-01-07 12:00:00', 11977777777, 'Rua C, 789', '2022-01-08 12:00:00', 'ghi789', '2022-01-09'),
    ('456789', 'Paulo Ferreira', 45678910111, '2022-01-10 12:00:00', '2022-01-11 12:00:00', 11966666666, 'Av. D, 1011', '2022-01-12 12:00:00', 'jkl012', '2022-01-13'),
    ('567890', 'Luciana Oliveira', 56789011122, '2022-01-14 12:00:00', '2022-01-15 12:00:00', 11955555555, 'Rua E, 1314', '2022-01-16 12:00:00', 'mno345', '2022-01-17');

INSERT INTO account (account_id, customer_id, created_at, updated_at, status, timestamp, event_id, dt) 
VALUES 
    (123456789, '123456', '2022-01-01 12:00:00', '2022-01-02 12:00:00', 'active', '2022-01-03 12:00:00', 'abc123', '2022-01-04'),
    (234567890, '234567', '2022-01-02 12:00:00', '2022-01-03 12:00:00', 'active', '2022-01-04 12:00:00', 'def456', '2022-01-05'),
    (345678901, '345678', '2022-01-06 12:00:00', '2022-01-07 12:00:00', 'active', '2022-01-08 12:00:00', 'ghi789', '2022-01-09'),
    (456789012, '456789', '2022-01-10 12:00:00', '2022-01-11 12:00:00', 'inactive', '2022-01-12 12:00:00', 'jkl012', '2022-01-13'),
    (567890123, '567890', '2022-01-14 12:00:00', '2022-01-15 12:00:00', 'active', '2022-01-16 12:00:00', 'mno345', '2022-01-17');

INSERT INTO bankslip (amount, account_id, beneficiary_name, barcode, due_date, timestamp, event_id, dt) 
VALUES 
    (100.0, 123456789, 'Fulano', '1234567456789123456789', '2022-01-15', '2022-01-14 12:00:00', 'abc123', '2022-01-14'),
    (50.0, 234567890, 'Beltrano', '234567890290234567890', '2022-01-18', '2022-01-17 12:00:00', 'def456', '2022-01-17'),
    (75.0, 345678901, 'Ciclano', '3456789013456789678901', '2022-01-22', '2022-01-21 12:00:00', 'ghi789', '2022-01-20'),
    (200.0, 456789012, 'Deltrano', '45678901245676789012', '2022-01-25', '2022-01-24 12:00:00', 'jkl012', '2022-01-23'),
    (150.0, 567890123, 'Eulano', '5678901235678909870123', '2022-01-28', '2022-01-27 12:00:00', 'mno345', '2022-01-26');

INSERT INTO pix_send (amount, account_id, type_document_number_source_holder, document_number_source_holder, type_document_number_destination_holder, document_number_dentination_holder, user_message, destination_key, timestamp, event_id, dt) 
VALUES 
    (50.0, 123456789, 'CPF', 12345678901, 'CPF', 98765432109, 'Pagamento da conta', '123abc456def789ghi', '2022-01-14 12:00:00', 'abc123', '2022-01-14'),
    (75.0, 234567890, 'CPF', 98765432109, 'CNPJ', 12345678901234, 'Compra na loja virtual', '789def456abc123ghi', '2022-01-17 12:00:00', 'def456', '2022-01-17'),
    (100.0, 345678901, 'CNPJ', 12345678901234, 'CPF', 98765432109, 'Transferência para um amigo', 'ghi789123abc456def', '2022-01-21 12:00:00', 'ghi789', '2022-01-20'),
    (200.0, 456789012, 'CPF', 98765432109, 'Email', 987577574646, 'Pagamento de aluguel', 'jkl012345mno678pqr', '2022-01-24 12:00:00', 'jkl012', '2022-01-23'),
    (150.0, 567890123, 'CNPJ', 12345678901234, 'Email', 4477474747474, 'Compra de serviços', 'stu345vwx678yz0abc', '2022-01-27 12:00:00', 'mno345', '2022-01-26');

INSERT INTO pix_received (amount, account_id, type_document_number_source_holder, document_number_source_holder, type_document_number_destination_holder, document_number_dentination_holder, user_message, timestamp, event_id, dt) 
VALUES 
    (50.0, 123456789, 'CPF', 98765432109, 'CPF', 12345678901, 'Recebimento de pagamento', '2022-01-15 12:00:00', 'pqr789', '2022-01-15'),
    (75.0, 234567890, 'CNPJ', 12345678901234, 'CPF', 98765432109, 'Recebimento de transferência', '2022-01-18 12:00:00', 'stu901', '2022-01-18'),
    (100.0, 345678901, 'Email', 464747474747, 'CNPJ', 12345678901234, 'Recebimento de serviços', '2022-01-22 12:00:00', 'vwx123', '2022-01-21'),
    (200.0, 456789012, 'CPF', 98765432109, 'Email', 123485759595775, 'Recebimento de aluguel', '2022-01-25 12:00:00', 'yza456', '2022-01-24'),
    (150.0, 567890123, 'CPF', 12345678901, 'CNPJ', 12345678901234, 'Recebimento por vendas', '2022-01-28 12:00:00', 'bcd789', '2022-01-27');

INSERT INTO p2p_tef (amount, account_id_source, account_id_destination, timestamp, event_id, dt) 
VALUES 
    (50.0, 123456789, 234567890, '2022-01-15 12:00:00', 'abc123', '2022-01-15'),
    (75.0, 234567890, 345678901, '2022-01-18 12:00:00', 'def456', '2022-01-18'),
    (100.0, 345678901, 456789012, '2022-01-22 12:00:00', 'ghi789', '2022-01-21'),
    (200.0, 456789012, 567890123, '2022-01-25 12:00:00', 'jkl012', '2022-01-24'),
    (150.0, 567890123, 123456789, '2022-01-28 12:00:00', 'mno345', '2022-01-27');

use desafio_iti;

select * from customer;
select * from p2p_tef;
select * from account;
select * from bankslip;
select * from pix_send;
select * from pix_received;

SELECT c.customer_id, a.account_id, name FROM customer AS c
INNER JOIN account AS a on c.customer_id = a.customer_id;

SELECT account_id, amount, dt FROM bankslip
UNION ALL
SELECT account_id, amount, dt FROM pix_send
UNION ALL
SELECT account_id, amount, dt FROM pix_received
UNION ALL
SELECT account_id_source, amount, dt FROM p2p_tef
UNION ALL
SELECT account_id_destination, amount, dt FROM p2p_tef;


SELECT c.customer_id, a.account_id, c.name, t.dt AS date, 
       CASE 
           WHEN t.event_id LIKE 'pix%' THEN 'pix'
           WHEN t.event_id LIKE 'p2p%' THEN 'p2p'
           WHEN t.event_id LIKE 'bankslip%' THEN 'bankslip'
       END AS transaction_type,
       AVG(CASE
               WHEN t.event_id LIKE 'pix%' THEN p.amount
               WHEN t.event_id LIKE 'p2p%' THEN p.amount
               WHEN t.event_id LIKE 'bankslip%' THEN b.amount
           END) AS mean_value
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id
LEFT JOIN pix_send p ON a.account_id = p.account_id
LEFT JOIN pix_received pr ON a.account_id = pr.account_id
LEFT JOIN p2p_tef pt ON a.account_id = pt.account_id_source OR a.account_id = pt.account_id_destination
LEFT JOIN bankslip b ON a.account_id = b.account_id
LEFT JOIN (
    SELECT DISTINCT account_id, dt, event_id
    FROM pix_send
    UNION
    SELECT DISTINCT account_id, dt, event_id
    FROM pix_received
    UNION
    SELECT DISTINCT account_id_source AS account_id, dt, event_id
    FROM p2p_tef
    UNION
    SELECT DISTINCT account_id_destination AS account_id, dt, event_id
    FROM p2p_tef
    UNION
    SELECT DISTINCT account_id, dt, event_id
    FROM bankslip
) AS t ON a.account_id = t.account_id
GROUP BY c.customer_id, a.account_id, c.name, t.dt, transaction_type;

-- Explicação:

-- Começamos selecionando as colunas que queremos recuperar: customer_id, account_id, name, dt (data da transação), transaction_type (uma coluna calculada com base na coluna event_id) e o valor médio da transação (mean_value).
-- Unimos as tabelas customer e account usando a coluna customer_id.
-- Fazemos um left join em todas as tabelas de transações (pix_send, pix_received, p2p_tef, bankslip) na coluna account_id. Usamos um left join porque nem todas as contas podem ter transações de todos os tipos.
-- Usamos uma subconsulta para combinar as tabelas de transação e obter uma lista distinta de todos os IDs de conta, datas de transação e IDs de evento em todos os tipos de transação.
-- Juntamos essa subconsulta com a tabela account na coluna account_id para obter as informações da conta para cada transação.
-- Agrupamos os resultados por customer_id, account_id, name, dt e transaction_type.
-- Usamos a função AVG para calcular a média do valor da transação para cada grupo, usando uma declaração CASE para selecionar a coluna apropriada (amount) com base no tipo de transação.
-- Observação: esta consulta pressupõe que cada transação tem um `event

