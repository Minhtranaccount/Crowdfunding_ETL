CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL)
;
CREATE TABLE category (
    category_id VARCHAR(6) PRIMARY KEY,
    category VARCHAR(50) NOT NULL)
;
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50)   NOT NULL)
;
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR(50)   NOT NULL,
    description VARCHAR(200)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(20)   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR(5)   NOT NULL,
    currency VARCHAR(6)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(6)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	)
;
