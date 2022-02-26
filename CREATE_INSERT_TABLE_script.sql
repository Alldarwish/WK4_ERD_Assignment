-- Week 4 - ERD Assignment --
-- car_dealership_db --
-- 
-- sales_rep TABLE
create table sales_rep (
		sales_rep_id SERIAL not null primary key,
		rep_fname VARCHAR(20),
		rep_lname VARCHAR(20)
);

insert into sales_rep (
		sales_rep_id, rep_fname, rep_lname)
values 
		(1, 'John', 'Michael'),
		(2, 'Jessica', 'Smith'),
		(3, 'Janet', 'Perez'),
		(4, 'Sean', 'Lewis'),
		(5, 'David', 'Smith'),
		(6, 'Megan', 'Brown');

-----------------------------------------------------------
-- technician TABLE 
create table technician (
		tech_id SERIAL not null primary key,
		tech_fname VARCHAR(20),
		tech_lname VARCHAR(20)
);

insert into technician (
		tech_id, tech_fname, tech_lname)
values
		(1, 'Patricia', 'Heath'),
		(2, 'Steven', 'Smith'),
		(3, 'John', 'Davis'),
		(4, 'David', 'Price'),
		(5, 'Ralph', 'Martin'),
		(6, 'Peter', 'Parker'),
		(7, 'Brooke', 'Randall');
-----------------------------------------------------------
-- customer TABLE
create table customer (
		cust_id SERIAL not null primary key,
		cust_fname VARCHAR(20),
		cust_lname VARCHAR(20)
);

insert into customer (
		cust_id, cust_fname, cust_lname)
values 
		(1, 'Jennifer', 'Davis'),
		(2, 'Kenneth', 'Mcdonald'),
		(3, 'Craig', 'Turner'),
		(4, 'Morgan', 'Fleming'),
		(5, 'Susan', 'Holmes'),
		(6, 'Brian', 'Garcia'),
		(7, 'Robert', 'Martinez'),
		(8, 'Michael', 'Franklin');
		
-----------------------------------------------------------
-- parts TABLE 
create table parts (
		part_id SERIAL not null primary key,
		part_desc VARCHAR(150),
		model_series VARCHAR(20),
		model_year DECIMAL(4) default 9999,
		engine_size VARCHAR(20),
		part_price NUMERIC(8,2) not null
);

insert into parts (
		part_id, part_desc, model_series, model_year, engine_size, part_price)
values 
		(1, 'Bumber Absorber', 'Buick Enclave', 2020, '3.6L V6', 1100.00),
		(2, 'Headlight Assembly', 'Buick Enclave', 2020, '3.6L V6', 178.00),
		(3, 'ABS Control Module', 'Buick Enclave', 2020, '3.6L V6', 475.00),
		(4, 'Tail Lamp, Light Assembly', 'Buick Enclave', 2020, '3.6L V6', 114.00),
		(5, 'Brake Pad', 'Buick Enclave', 2020, '3.6L V6', 35.00),
		(6, 'Reverse Lamp Bulb', 'Buick Enclave', 2020, '3.6L V6', 15.00),
		(7, 'Axle Bolt and Screw', 'Buick Enclave', 2020, '3.6L V6', 36.00),
		(8, 'Air & Fuel Delivery - Electrical Connector', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 300.00),
		(9, 'Cooling System - Water Pump', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 278.00),
		(10, 'Battery Cable', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 245.00),
		(11, 'Exhaust Manifort', 'Cadillac CTS', 2020, '3.6L V6', 288.00),
		(12, 'Disk Brake Rotor', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 94.00),
		(13, 'Brake Pads', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 170.50),
		(14, 'Automatic Transmission Clutch Plate', 'Cadillac CTS', 2019, '2.0L L4 - Gas', 70.81),
		(15, 'Automatic Transmission Shifter Cable', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 93.58),
		(16, 'Cylinder Asm-Clu Mas', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 176.30),
		(17, 'Indicator Asm-A/Cl Air Rstn', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 32.67),
		(18, 'Water Sensor', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 118.02),
		(19, 'Solenoid', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 335.00),
		(20, 'Fuel Pump', 'GMC Sierra SL', 2020, '6.5L V8 - Diesel', 72.72);
		
-----------------------------------------------------------
-- NHTSA_registry TABLE
create table NHTSA_registry (
		veh_vin VARCHAR(17) not null primary key,
		country VARCHAR(10) not null,
		manufacturer VARCHAR(20) not null,
		veh_type VARCHAR(50) not null,
		veh_brand VARCHAR(20) not null,
		body_style VARCHAR(50) not null,
		engine_size VARCHAR(50) not null,
		model_series VARCHAR(50) not null,
		model_year DECIMAL(4) default 9999,
		assembly_plant VARCHAR(20) not null,
		serial_number VARCHAR(6) not null
);

insert into NHTSA_registry (
	veh_vin, country, manufacturer, veh_type, veh_brand, body_style, engine_size, model_series, model_year, assembly_plant, serial_number)
		
values 
	('5GAEVAKW1LJ130741', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130741'),
	('5GAEVAKW1LJ130752', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130752'),
	('5GAEVAKW1LJ130760', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130760'),
	('5GAEVAKW1LJ130768', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130768'),
	('5GAEVAKW1LJ130771', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130771'),
	('5GAEVAKW1LJ130773', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130773'),
	('5GAEVAKW1LJ130777', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130777'),
	('5GAEVAKW1LJ130780', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130780'),
	('5GAEVAKW1LJ130781', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130781'),
	('5GAEVAKW1LJ130782', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130782'),
	('5GAEVAKW1LJ130783', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130783'),
	('5GAEVAKW1LJ130784', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130784'),
	('5GAEVAKW1LJ130785', 'USA', 'GM', 'SUV', 'Buick', 'Sport Utility 4-DR', '3.6L V6 DOHC 24V', 'Enclave', 2022, 'Arlington', '130785'),
	('5GAEVAKW1LJ145768', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145768'),
	('5GAEVAKW1LJ145771', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145771'),
	('5GAEVAKW1LJ145773', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145773'),
	('5GAEVAKW1LJ145777', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145777'),
	('5GAEVAKW1LJ145780', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145780'),
	('5GAEVAKW1LJ145781', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145781'),
	('5GAEVAKW1LJ145782', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145782'),
	('5GAEVAKW1LJ145783', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145783'),
	('5GAEVAKW1LJ145784', 'USA', 'GM', 'Sedan', 'Cadillac', 'Sedan RWD V-Series', '6.2L Supercharged V8 DI', 'CT5-V', 2022, 'Fairfax', '145784'),
	('1GT49REY6NF165727', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165727'),
	('1GT49REY6NF165739', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165739'),
	('1GT49REY6NF165811', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165811'),
	('1GT49REY6NF165817', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165817'),
	('1GT49REY6NF165823', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165823'),
	('1GT49REY6NF165842', 'USA', 'GM', 'Truck', 'GMC', 'Truck Crew Cab 4-DR', 'DURAMAX 6.6L TURBO-DIESEL', 'Sierra 2500 Denali', 2022, 'Flint', '165842');

-----------------------------------------------------------
-- car_inventory TABLE
create table car_inventory (
		inventory_no SERIAL not null primary key,
		veh_year DECIMAL(4) default 9999,
		veh_type VARCHAR(50) not null,
		veh_vin VARCHAR(17) not null,
			foreign key (veh_vin) references NHTSA_registry(veh_vin),
		manufacturer VARCHAR(20) not null,
		veh_brand VARCHAR(20) not null,
		model_series VARCHAR(50) not null,
		is_veh_new BOOLEAN default TRUE,
		retail_price NUMERIC(8,2) not null,
		is_available BOOLEAN default TRUE
);

insert into car_inventory (
	inventory_no, veh_year, veh_type, veh_vin, manufacturer, veh_brand, model_series, is_veh_new, retail_price, is_available)

values 
		(1, 2022, 'SUV', '5GAEVAKW1LJ130741', 'GM', 'Buick', 'Enclave', TRUE, 56950.00, TRUE),
		(2, 2022, 'SUV', '5GAEVAKW1LJ130760', 'GM', 'Buick', 'Enclave', TRUE, 58950.00, TRUE),
		(3, 2022, 'SUV', '5GAEVAKW1LJ130771', 'GM', 'Buick', 'Enclave', TRUE, 54950.00, TRUE),
		(4, 2022, 'SUV', '5GAEVAKW1LJ130752', 'GM', 'Buick', 'Enclave', TRUE, 60950.00, TRUE),
		(5, 2022, 'Sedan', '5GAEVAKW1LJ145784', 'GM', 'Cadillac', 'CT5-V', TRUE, 93650.00, FALSE),
		(6, 2022, 'SUV', '5GAEVAKW1LJ130773', 'GM', 'Buick', 'Enclave', TRUE, 59950.00, TRUE),
		(7, 2022, 'SUV', '5GAEVAKW1LJ130780', 'GM', 'Buick', 'Enclave', TRUE, 60950.00, TRUE),
		(8, 2022, 'Sedan', '5GAEVAKW1LJ145768', 'GM', 'Cadillac', 'CT5-V', TRUE, 86950.00, TRUE),
		(9, 2022, 'Sedan', '5GAEVAKW1LJ145771', 'GM', 'Cadillac', 'CT5-V', TRUE, 88950.00, FALSE),
		(10, 2022, 'SUV', '5GAEVAKW1LJ130768', 'GM', 'Buick', 'Enclave', TRUE, 63750.00, TRUE),
		(11, 2022, 'Sedan', '5GAEVAKW1LJ145783', 'GM', 'Cadillac', 'CT5-V', TRUE, 91850.00, FALSE),
		(12, 2022, 'Sedan', '5GAEVAKW1LJ145773', 'GM', 'Cadillac', 'CT5-V', TRUE, 84950.00, TRUE),
		(13, 2022, 'Sedan', '5GAEVAKW1LJ145777', 'GM', 'Cadillac', 'CT5-V', TRUE, 89950.00, FALSE),
		(14, 2022, 'Sedan', '5GAEVAKW1LJ145780', 'GM', 'Cadillac', 'CT5-V', TRUE, 90950.00, TRUE),
		(15, 2022, 'Sedan', '5GAEVAKW1LJ145782', 'GM', 'Cadillac', 'CT5-V', TRUE, 90750.00, TRUE),
		(16, 2022, 'SUV', '5GAEVAKW1LJ130777', 'GM', 'Buick', 'Enclave', TRUE, 63450.00, FALSE),
		(17, 2022, 'SUV', '5GAEVAKW1LJ130781', 'GM', 'Buick', 'Enclave', TRUE, 65850.00, TRUE),
		(18, 2022, 'SUV', '5GAEVAKW1LJ130783', 'GM', 'Buick', 'Enclave', TRUE, 68950.00, TRUE),
		(19, 2022, 'Truck', '1GT49REY6NF165727', 'GM', 'GMC', 'Sierra 2500 Denali', FALSE, 65850.00, FALSE),
		(20, 2022, 'Truck', '1GT49REY6NF165739', 'GM', 'GMC', 'Sierra 2500 Denali', FALSE, 65850.00, TRUE),
		(21, 2022, 'Truck', '1GT49REY6NF165811', 'GM', 'GMC', 'Sierra 2500 Denali', FALSE, 65850.00, TRUE),
		(22, 2022, 'SUV', '5GAEVAKW1LJ130784', 'GM', 'Buick', 'Enclave', TRUE, 61950.00, TRUE),
		(23, 2022, 'SUV', '5GAEVAKW1LJ130785', 'GM', 'Buick', 'Enclave', TRUE, 66950.00, FALSE),
		(24, 2022, 'Truck', '1GT49REY6NF165817', 'GM', 'GMC', 'Sierra 2500 Denali', TRUE, 74850.00, FALSE),
		(25, 2022, 'Truck', '1GT49REY6NF165823', 'GM', 'GMC', 'Sierra 2500 Denali', FALSE, 61850.00, FALSE),
		(26, 2022, 'Truck', '1GT49REY6NF165842', 'GM', 'GMC', 'Sierra 2500 Denali', TRUE, 77850.00, TRUE);
		
-----------------------------------------------------------
	
-- service_ticket TABLE
create table service_ticket (
		ticket_no SERIAL not null primary key,
		cust_id INTEGER not null,
			foreign key (cust_id) references customer(cust_id),
		veh_vin VARCHAR(17) not null,
			foreign key (veh_vin) references NHTSA_registry(veh_vin),
		in_date TIMESTAMP not null,
		out_date TIMESTAMP,
		issue_desc VARCHAR(500),
		diagnosis VARCHAR(500),
		part_id INTEGER,
			foreign key (part_id) references parts(part_id),
		part_price NUMERIC(8,2),
		labor_chg NUMERIC(8,2),
		total_chg NUMERIC(8,2)
);

insert into service_ticket (
	ticket_no, cust_id, veh_vin, in_date, out_date, issue_desc, diagnosis, part_id, part_price, labor_chg, total_chg)
	
values
	(1, 1, '5GAEVAKW1LJ145781', '02/21/2022 8:30:00', '02/21/2022 12:00:20',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lectus velit, dapibus sed maximus in, volutpat eu diam.
	Maecenas ornare pellentesque risus, et consectetur felis mollis quis. Aliquam aliquam facilisis pretium. Nulla finibus,
	neque quis varius consequat, tortor odio varius neque, nec pulvinar ligula justo ac leo. Nam ac erat non justo ultricies pulvinar.
	Phasellus sit amet est et elit placerat convallis. Nulla facilisi', 'Fixed', 10, 245.00, 250.00, 495.00),
	(2, 6, '5GAEVAKW1LJ130782', '02/23/2022 10:30:00', '02/23/2022 12:00:40',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lectus velit, dapibus sed maximus in, volutpat eu diam.
	Maecenas ornare pellentesque risus, et consectetur felis mollis quis. Aliquam aliquam facilisis pretium. Nulla finibus,
	neque quis varius consequat, tortor odio varius neque, nec pulvinar ligula justo ac leo. Nam ac erat non justo ultricies pulvinar.
	Phasellus sit amet est et elit placerat convallis. Nulla facilisi', 'Fixed', 2, 178.00, 150.00, 328.00);

-----------------------------------------------------------
-- invoice TABLE
create table invoice (
		invoice_no SERIAL not null primary key,
		sales_date TIMESTAMP not null,
		sales_rep_id INTEGER not null,
			foreign key (sales_rep_id) references sales_rep(sales_rep_id),
		retail_price NUMERIC(8,2) not null,
		sales_price NUMERIC(8,2) not null,
		taxes NUMERIC(8,2) not null,
		fees NUMERIC(8,2) not null,
		total_chg numeric(8,2) not null,
		cust_id INTEGER not null,
			foreign key (cust_id) references customer(cust_id),
		inventory_no INTEGER not null,
			foreign key (inventory_no) references car_inventory(inventory_no)
);

insert into invoice (
	invoice_no, sales_date, sales_rep_id, retail_price, sales_price, taxes, fees, total_chg, cust_id, inventory_no)
	
values 
	(1, '02/01/2022 10:00:14', 2, 93650.00, 91650.00, 6873.75, 1234.56, 99758.31, 7, 5),
	(2, '02/03/2022 16:34:10', 6, 88950.00, 88950.00, 6671.25, 1234.56, 96855.81, 2, 9),
	(3, '02/05/2022 9:13:21', 3, 91850.00, 91850.00, 6888.75, 1234.56, 99973.31, 6, 11),
	(4, '02/09/2022 11:08:44', 1, 89950.00, 87950.00, 6596.25, 1234.56, 95780.81, 3, 13),
	(5, '02/11/2022 15:45:53', 2, 63450.00, 63450.00, 4758.75, 1234.56, 69443.31, 1, 16),
	(6, '02/13/2022 19:09:24', 4, 65850.00, 65850.00, 4938.75, 1234.56, 72023.31, 8, 19),
	(7, '02/17/2022 17:10:20', 5, 66950.00, 66950.00, 5021.25, 1234.56, 73205.81, 4, 23),
	(8, '02/20/2022 20:34:16', 3, 74850.00, 73750.00, 5531.25, 1234.56, 80515.81, 5, 24),
	(9, '02/23/2022 18:03:37', 1, 61850.00, 61850.00, 4638.75, 1234.56, 67723.31, 7, 25);

-----------------------------------------------------------
-- sold_cars TABLE 
create table sold_cars (
		sold_car_id SERIAL not null primary key,
		invoice_no INTEGER not null,
			foreign key (invoice_no) references invoice(invoice_no),
		veh_vin VARCHAR(17) not null,
			foreign key (veh_vin) references NHTSA_registry(veh_vin),
		sales_date TIMESTAMP not null	
);

insert into sold_cars (
	sold_car_id, invoice_no, veh_vin, sales_date)
	
values 
	(1, 1, '5GAEVAKW1LJ145784', '02/01/2022 10:00:14'),
	(2, 2, '5GAEVAKW1LJ145771', '02/03/2022 16:34:10'),
	(3, 3, '5GAEVAKW1LJ145783', '02/05/2022 9:13:21'),
	(4, 4, '5GAEVAKW1LJ145777', '02/09/2022 11:08:44'),
	(5, 5, '5GAEVAKW1LJ130777', '02/11/2022 15:45:53'),
	(6, 6, '1GT49REY6NF165727', '02/13/2022 19:09:24'),
	(7, 7, '5GAEVAKW1LJ130785', '02/17/2022 17:10:20'),
	(8, 8, '1GT49REY6NF165817', '02/20/2022 20:34:16'),
	(9, 9, '1GT49REY6NF165823', '02/23/2022 18:03:37');
-----------------------------------------------------------
-- acc_receivables TABLE
create table acc_receivables (
		AR_receivables SERIAL not null primary key,
		invoice_ticket_no INTEGER not null,
		sales_or_service VARCHAR(10) not null,
		trans_date TIMESTAMP not null,
		amount_paid NUMERIC(8,2) not null,
		payment_date DATE not null
);

insert into acc_receivables (
	AR_receivables, invoice_ticket_no, sales_or_service, trans_date, amount_paid, payment_date)
	
values
	(1, 1, 'sales', '2022-02-01 10:00:14', 99758.31, '2022-02-01'),
	(2, 2, 'sales', '2022-02-03 16:34:10', 96855.81, '2022-02-03'),
	(3, 3, 'sales', '2022-02-05 09:13:21', 99973.31, '2022-02-05'),
	(4, 4, 'sales', '2022-02-09 11:08:44', 95780.81, '2022-02-09'),
	(5, 5, 'sales', '2022-02-11 15:45:53', 69443.31, '2022-02-11'),
	(6, 6, 'sales', '2022-02-13 19:09:24', 72023.31, '2022-02-13'),
	(7, 7, 'sales', '2022-02-17 17:10:20', 73205.81, '2022-02-17'),
	(8, 8, 'sales', '2022-02-20 20:34:16', 80515.81, '2022-02-20'),
	(9, 1, 'service', '2022-02-21 12:00:20', 495.00, '2022-02-21'),
	(10, 2, 'service', '2022-02-23 12:00:40', 328.00, '2022-02-23'),
	(11, 9, 'sales', '2022-02-23 18:03:37', 67723.31, '2022-02-23');

-----------------------------------------------------------