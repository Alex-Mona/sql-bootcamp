CREATE VIEW v_generated_dates AS
SELECT generate_date::date
  FROM generate_series('2022-01-01', '2022-01-31', interval '1 day') AS generate_date
 ORDER BY generate_date;