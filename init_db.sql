CREATE TABLE worker(
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >=2),
    birthday DATE CHECK (birthday > '1900-12-31'),
    level VARCHAR(10) NOT NULL,
    salary INT CHECK (salary >= 100 AND salary <= 100000)

);
ALTER TABLE worker
ADD CONSTRAINT level_enum_values
CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior'));

CREATE TABLE client(
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >=2 )
);

CREATE TABLE project(
    id IDENTITY PRIMARY KEY,
    client_id BIGINT NOT NULL,
    start_date DATE,
    finish_date DATE,
    FOREIGN KEY (client_id) REFERENCES client (id)
);
ALTER TABLE project ADD COLUMN name VARCHAR(100);

CREATE TABLE project_worker(
    project_id BIGINT NOT NULL,
    worker_id BIGINT NOT NULL,
    PRIMARY KEY (project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project (id),
    FOREIGN KEY (worker_id) REFERENCES worker (id)

);