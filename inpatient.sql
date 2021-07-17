Drop table population;
CREATE TABLE population (
    "id" Serial Primary Key,
    "population" int   NOT NULL,
    "minimum_age" int NOT NULL,
    "maximum_age" int,
    "gender" text,
    "zipcode" int NOT NULL
);


select * from population

drop table income;
CREATE TABLE income (
    "id" serial primary key  NOT NULL,
    "State_Name" text   NOT NULL,
    "County" text  NOT NULL,
    "City" text   NOT NULL,
    "Place" text   NOT NULL,
    "Type" text   NOT NULL,
    "zipcode" int   NOT NULL,
    "Mean" float   NOT NULL,
    "Median" float   NOT NULL,
    "Stdev" float   NOT NULL
);

select * from income

CREATE TABLE provider (
    "ProviderId" int primary key NOT NULL,
    "ProviderName" text   NOT NULL,
    "ProviderCity" text    NOT NULL,
    "ProviderState" text   NOT NULL,
    "zipcode" int   NOT NULL
);

select * from provider

drop table inpatient;
CREATE TABLE inpatient (
    "id" serial primary key  NOT NULL,
    "DRGDefinition" text   NOT NULL,
    "ProviderId" int   NOT NULL,
    "TotalDischarges" int   NOT NULL,
    "AverageCoveredCharges" float   NOT NULL,
    "AverageTotalPayments" float   NOT NULL,
    "AverageMedicarePayments" float   NOT NULL,
    foreign key ("ProviderId") references provider("ProviderId")
);
select * from inpatient