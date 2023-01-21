-- +migrate Up
-- +migrate StatementBegin
CREATE TABLE quizzes (
    id SERIAL,
    category_id INT,
    question VARCHAR(256),
    created_at TIMESTAMP default now(),
    updated_at TIMESTAMP default NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
) -- +migrate StatementEnd