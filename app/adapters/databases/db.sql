CREATE DATABASE truck_systemdb;

CREATE TABLE vehicles(
    id SERIAL PRIMARY KEY ,
    vehicle_plate VARCHAR(20),
    current_status INT2 NOT NULL,
    is_active BOOLEAN
);
CREATE TABLE devices(
    id SERIAL PRIMARY KEY ,
    device_type_id INT8 NOT NULL,
    device_name VARCHAR(75),
    is_online BOOLEAN,
    is_active BOOLEAN
);
CREATE TABLE device_type(
    id SERIAL PRIMARY KEY,
    device_name VARCHAR(75) NOT NULL,
    device_description VARCHAR(255),
    is_active BOOLEAN
);
CREATE TABLE log_temperature(
    id SERIAL PRIMARY KEY,
    vehicle_id INT8 NOT NULL,
    device_id INT8 NOT NULL,
    read_data VARCHAR(50),
    created_at TIMESTAMP
);
CREATE TABLE log_location(
    id SERIAL PRIMARY KEY,
    vehicle_id INT8,
    device_id INT8 ,
    latitıde VARCHAR(50),
    longitude VARCHAR (50),
    created_at TIMESTAMP
);
