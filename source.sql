-- PILLAR 1: DATA SOURCE (FROM)
-- Create our tracking data warehouse table
CREATE TABLE IF NOT EXISTS user_events (
    event_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    event_name VARCHAR(50) NOT NULL, -- 'signup', 'view_landing_page', 'purchase'
    device_type VARCHAR(20),          -- 'mobile', 'desktop'
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seed rows simulating raw app click streams
INSERT INTO user_events (user_id, event_name, device_type, event_timestamp) VALUES
(101, 'view_landing_page', 'mobile',  '2026-06-01 10:00:00'),
(101, 'signup',            'mobile',  '2026-06-01 10:05:00'),
(102, 'view_landing_page', 'desktop', '2026-06-01 10:12:00'),
(103, 'view_landing_page', 'mobile',  '2026-06-01 11:30:00'),
(101, 'purchase',          'mobile',  '2026-06-01 12:00:00'),
(102, 'signup',            'desktop', '2026-06-01 12:15:00'),
(104, 'view_landing_page', 'desktop', '2026-06-01 14:22:00'),
(102, 'purchase',          'desktop', '2026-06-01 15:00:00');

SELECT * FROM user_events;

SELECT * 
FROM user_events
WHERE device_type = 'mobile';

SELECT event_name, COUNT(*) AS total_engagements
FROM user_events
GROUP BY event_name;
