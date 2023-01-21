-- +migrate Up
-- +migrate StatementBegin
CREATE TABLE scores (
    id SERIAL,
    users_id INT,
    score INT,
    created_at TIMESTAMP default now(),
    updated_at TIMESTAMP default NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id) ON DELETE CASCADE
) -- +migrate StatementEnd