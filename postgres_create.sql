-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Population" (
    "id" int   NOT NULL,
    "population" int   NOT NULL,
    "minimum_age" int   NOT NULL,
    "maximum_age" int   NOT NULL,
    "gender" string   NOT NULL,
    "zipcode" int   NOT NULL,
    CONSTRAINT "pk_Population" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Income" (
    "id" int   NOT NULL,
    "State_Name" string   NOT NULL,
    "County" string   NOT NULL,
    "City" string   NOT NULL,
    "Place" string   NOT NULL,
    "Type" string   NOT NULL,
    "zipcode" int   NOT NULL,
    "Mean" float   NOT NULL,
    "Median" float   NOT NULL,
    "Stdev" float   NOT NULL,
    CONSTRAINT "pk_Income" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Provider" (
    "ProviderId" int   NOT NULL,
    "ProviderName" string   NOT NULL,
    "ProviderCity" string   NOT NULL,
    "ProviderState" string   NOT NULL,
    "zipcode" int   NOT NULL,
    CONSTRAINT "pk_Provider" PRIMARY KEY (
        "ProviderId"
     )
);

CREATE TABLE "Inpatient" (
    "id" int   NOT NULL,
    "DRGDefinition" string   NOT NULL,
    "ProviderID" int   NOT NULL,
    "TotalDischarges" int   NOT NULL,
    "AverageCoverdCharges" float   NOT NULL,
    "AverageTotalPayments" float   NOT NULL,
    "AverageMedicarePayments" float   NOT NULL,
    CONSTRAINT "pk_Inpatient" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Population" ADD CONSTRAINT "fk_Population_zipcode" FOREIGN KEY("zipcode")
REFERENCES "Provider" ("zipcode");

ALTER TABLE "Income" ADD CONSTRAINT "fk_Income_zipcode" FOREIGN KEY("zipcode")
REFERENCES "Population" ("zipcode");

ALTER TABLE "Inpatient" ADD CONSTRAINT "fk_Inpatient_ProviderID" FOREIGN KEY("ProviderID")
REFERENCES "Provider" ("ProviderId");

