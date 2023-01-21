-- +migrate Up
-- +migrate StatementBegin
CREATE TABLE answers (
    id SERIAL,
    quiz_id INT,
    answer_key VARCHAR(256),
    is_true BOOL DEFAULT false,
    created_at TIMESTAMP default now(),
    updated_at TIMESTAMP default NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id) ON DELETE CASCADE
) -- +migrate StatementEnd