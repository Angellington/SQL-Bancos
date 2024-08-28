CREATE TABLE weather (
    city VARCHAR(80),
    temp_lo INT, -- LOW TEMPERATURE
    temp_hi INT, -- HIGH TEMPERATURE
    prcp REAL,   -- PRECIPITATION
    date, date
);

CREATE TABLE cities (
    name varchar(80),
    location point
)
