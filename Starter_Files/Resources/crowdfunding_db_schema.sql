

-- Crowdfunding DB Schema




-- Create Campaign table
create table Campaign(
	cf_id int primary key not null,
	contact_id int not null,
	company_name varchar(50) not null,
	description varchar(100) not null,
	goal varchar(50) not null,
	pledged varchar(50) not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country varchar(50) not null,
	currency varchar(50) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(50),
	subcategory_id varchar(50),
	foreign key (contact_id) references Contacts(contact_id),
	foreign key (category_id) references Category(category_id),
	foreign key (subcategory_id) references Subcategory(subcategory_id)




);


--  Create Category table
create table Category(
	category_id varchar(10) primary key not null,
	category  varchar(40) not null

);



-- Create Subcategory table
create table Subcategory(
	subcategory_id varchar(50) primary key not null,
	subcategory varchar(50) not null
	
);

-- Create Contacts table
create table Contacts(
	contact_id int primary key not null,
	first_name  varchar(50) not null, 
	last_name varchar(50) not null,
	email varchar(100) not null
	
);



select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;



