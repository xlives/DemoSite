--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file loads default scheduled jobs
--

-- Create a scheduled job to delete events that have been processed by all the nodes
INSERT INTO BLC_SCHED_JOB (SCHED_JOB_ID, TYPE, NAME, ENABLED, DATE_UPDATED, CRON_EXPRESSION) VALUES (-100, 'EVENT_PURGE', 'Event Purge', TRUE, CURRENT_TIMESTAMP, '0/30 * * * * ?');

