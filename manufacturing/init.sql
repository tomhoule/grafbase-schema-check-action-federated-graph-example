CREATE TABLE miso (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    ingredients TEXT,
    fermentation_period INT,
    production_date DATE
);

CREATE TABLE batch (
    batch_id SERIAL PRIMARY KEY,
    miso_id INT REFERENCES miso(id),
    batch_size INT,
    start_date DATE,
    end_date DATE
);

CREATE TABLE quality_check (
    check_id SERIAL PRIMARY KEY,
    batch_id INT REFERENCES batch(batch_id),
    check_date DATE,
    quality_score INT,
    notes TEXT
);

-- Insert sample data into `miso`
INSERT INTO miso (type, ingredients, fermentation_period, production_date)
VALUES ('Shiro Miso', 'Soybeans, Rice, Salt', 180, '2023-01-01'),
       ('Aka Miso', 'Soybeans, Barley, Salt', 360, '2023-02-15');

-- Insert sample data into `batch`
INSERT INTO batch (miso_id, batch_size, start_date, end_date)
VALUES (1, 1000, '2023-01-01', '2023-07-01'),
       (2, 800, '2023-02-15', '2024-02-15');

-- Insert sample data into `quality_check`
INSERT INTO quality_check (batch_id, check_date, quality_score, notes)
VALUES (1, '2023-03-01', 85, 'Good fermentation progress'),
       (2, '2023-04-15', 90, 'Excellent flavor development');
