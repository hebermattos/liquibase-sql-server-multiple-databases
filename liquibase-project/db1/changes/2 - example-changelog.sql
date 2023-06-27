--liquibase formatted sql

--changeset other.dev:3 labels:example-label context:example-context
--comment: on more example comment
alter table person add country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;