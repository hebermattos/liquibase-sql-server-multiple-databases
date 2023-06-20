--liquibase formatted sql

--changeset your.name:6 labels:example-label context:example-context
--comment: example comment
create table car6 (
    id int primary key not null,
    model varchar(50) not null,
)
--rollback DROP TABLE person;