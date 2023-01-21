-- +migrate Up
-- +migrate StatementBegin

CREATE TABLE categories (
    id SERIAL,
    name_category VARCHAR(256),
    email VARCHAR(256) UNIQUE,
    created_at TIMESTAMP default now(),
    updated_at TIMESTAMP default NULL,
    PRIMARY KEY (id)
)

-- +migrate StatementEnd