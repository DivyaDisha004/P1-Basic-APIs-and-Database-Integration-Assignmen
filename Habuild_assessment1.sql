-- Database: assess

-- DROP DATABASE IF EXISTS assess;
CREATE DATABASE assess
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

	
create table Topic(
	t_id int Primary key not null,
	topic char(50) not null
);

create table Rating(
	topic_id int references Topic(t_id),
	rateRange int not null,
	CHECK (rateRange BETWEEN 1 AND 100)
);

SELECT * FROM assess.Topic;

SELECT * FROM assess.Rating;



