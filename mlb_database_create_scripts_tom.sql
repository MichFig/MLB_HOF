/* Create the mlb database */

-- Database: mlb

-- DROP DATABASE mlb;

CREATE DATABASE mlb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

    
/* Create all of the tables */

-- Table: public.batting

-- DROP TABLE public.batting;

CREATE TABLE public.batting
(
    "playerID" character varying COLLATE pg_catalog."default" NOT NULL,
    "yearID" integer,
    stint integer,
    "teamID" character varying COLLATE pg_catalog."default",
    "lgID" character varying COLLATE pg_catalog."default",
    "G" integer,
    "AB" integer,
    "R" integer,
    "H" integer,
    "2B" integer,
    "3B" integer,
    "HR" integer,
    "RBI" integer,
    "SB" integer,
    "CS" integer,
    "BB" integer,
    "SO" integer,
    "IBB" integer,
    "HBP" integer,
    "SH" integer,
    "SF" integer,
    "GIDP" integer
)

TABLESPACE pg_default;

ALTER TABLE public.batting
    OWNER to postgres;
    

-- Table: public.career_hof_bat

-- DROP TABLE public.career_hof_bat;

CREATE TABLE public.career_hof_bat
(
    "playerID" character varying COLLATE pg_catalog."default",
    "G" integer,
    "AB" integer,
    "R" integer,
    "H" integer,
    "2B" integer,
    "3B" integer,
    "HR" integer,
    "RBI" integer,
    "SB" integer
)

TABLESPACE pg_default;

ALTER TABLE public.career_hof_bat
    OWNER to postgres;
    
-- Table: public.career_hof_pitch

-- DROP TABLE public.career_hof_pitch;

CREATE TABLE public.career_hof_pitch
(
    "playerID" character varying COLLATE pg_catalog."default",
    "W" integer,
    "L" integer,
    "GS" integer,
    "CG" integer,
    "SHO" integer,
    "SV" integer,
    "IPouts" integer,
    "ER" integer,
    "BB" integer,
    "SO" integer
)

TABLESPACE pg_default;

ALTER TABLE public.career_hof_pitch
    OWNER to postgres;
    
-- Table: public.hof_inductees

-- DROP TABLE public.hof_inductees;

CREATE TABLE public.hof_inductees
(
    "playerID" character varying COLLATE pg_catalog."default",
    yearid character varying COLLATE pg_catalog."default",
    category character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.hof_inductees
    OWNER to postgres;
    
-- Table: public.people

-- DROP TABLE public.people;

CREATE TABLE public.people
(
    "playerID" character varying COLLATE pg_catalog."default" NOT NULL,
    "birthYear" integer,
    "birthMonth" integer,
    "birthDay" integer,
    "birthCountry" character varying COLLATE pg_catalog."default",
    "birthState" character varying COLLATE pg_catalog."default",
    "birthCity" character varying COLLATE pg_catalog."default",
    "deathYear" integer,
    "deathMonth" integer,
    "deathDay" integer,
    "deathCountry" character varying COLLATE pg_catalog."default",
    "deathState" character varying COLLATE pg_catalog."default",
    "deathCity" character varying COLLATE pg_catalog."default",
    "nameFirst" character varying COLLATE pg_catalog."default",
    "nameLast" character varying COLLATE pg_catalog."default",
    "nameGiven" character varying COLLATE pg_catalog."default",
    weight integer,
    height integer,
    bats character varying(1) COLLATE pg_catalog."default",
    throws character varying(1) COLLATE pg_catalog."default",
    debut character varying COLLATE pg_catalog."default",
    "finalGame" character varying COLLATE pg_catalog."default",
    "retroID" character varying COLLATE pg_catalog."default",
    "bbrefID" character varying COLLATE pg_catalog."default",
    CONSTRAINT pk_people PRIMARY KEY ("playerID")
)

TABLESPACE pg_default;

ALTER TABLE public.people
    OWNER to postgres;
    
-- Table: public.pitching

-- DROP TABLE public.pitching;

CREATE TABLE public.pitching
(
    "playerID" character varying COLLATE pg_catalog."default" NOT NULL,
    "yearID" integer,
    stint integer,
    "teamID" character varying COLLATE pg_catalog."default",
    "lgID" character varying COLLATE pg_catalog."default",
    "W" integer,
    "L" integer,
    "G" integer,
    "GS" integer,
    "CG" integer,
    "SHO" integer,
    "SV" integer,
    "IPouts" integer,
    "H" integer,
    "ER" integer,
    "HR" integer,
    "BB" integer,
    "SO" integer,
    "BAOpp" integer,
    "ERA" integer,
    "IBB" integer,
    "WP" integer,
    "HBP" integer,
    "BK" integer,
    "BFP" integer,
    "GF" integer,
    "R" integer,
    "SH" integer,
    "SF" integer,
    "GIDP" integer
)

TABLESPACE pg_default;

ALTER TABLE public.pitching
    OWNER to postgres;
    


