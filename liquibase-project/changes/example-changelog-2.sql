--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
create table car (
    id int primary key not null,
    model varchar(50) not null,
)
--rollback DROP TABLE person;