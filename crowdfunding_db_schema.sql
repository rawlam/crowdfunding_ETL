-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Project 2
-- Physical data model

DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(255)   NOT NULL,
    description varchar(255)   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar(255)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(255)   NOT NULL,
    currency varchar(255)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(255)   NOT NULL,
    subcategory_id varchar(255)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

CREATE TABLE category (
    category_id varchar(255)   NOT NULL,
    category varchar(255)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(255)   NOT NULL,
    last_name varchar(255)   NOT NULL,
    email varchar(255)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(255)   NOT NULL,
    subcategory varchar(255)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);


select * from campaign;
select * from category;
select * from contacts;
select * from subcategory;









