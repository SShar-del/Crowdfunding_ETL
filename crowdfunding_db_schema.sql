CREATE TABLE "Category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(30)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" VARCHAR(10)   NOT NULL,
    "contact_id" VARCHAR(10)   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" DOUBLE PRECISION NOT NULL,
    "pledged" DOUBLE PRECISION NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "currency" VARCHAR(30)   NOT NULL,
    "launched_date" TIMESTAMP  NOT NULL,
    "end_date" TIMESTAMP  NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     ),
     CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
        REFERENCES "Contacts" ("contact_id"),
     CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
        REFERENCES "Category" ("category_id"),
     CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
        REFERENCES "Subcategory" ("subcategory_id") 


);

