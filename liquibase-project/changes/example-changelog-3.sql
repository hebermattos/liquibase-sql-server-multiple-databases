--liquibase formatted sql

--changeset your.name:7 labels:example-label context:example-context
--comment: example comment
create table car7 (
    id int primary key not null,
    model varchar(50) not null,
)
--rollback DROP TABLE person;