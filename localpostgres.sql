--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: agency_partner_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agency_partner_requests (
    "Name of Staffing Agency" character varying,
    "Rating" character varying,
    "Contact Person (ADMIN)" character varying,
    "Industry" character varying,
    "Location" character varying,
    "Job Type" character varying,
    "Times Worked Together" integer,
    "Last Interaction" character varying,
    "Status" character varying,
    "Action" character varying
);


ALTER TABLE public.agency_partner_requests OWNER TO postgres;

--
-- Name: agency_partner_requests_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agency_partner_requests_filtered (
    "Name of Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Contact Person (ADMIN)" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Job Type" character varying(255),
    "Times Worked Together" character varying(255),
    "Last Interaction" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.agency_partner_requests_filtered OWNER TO postgres;

--
-- Name: all_available_candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_available_candidates (
    "Staffing Agency" character varying(255),
    "Rating" numeric(3,1),
    "Candidate ID" integer NOT NULL,
    "Job Title" character varying(255),
    "Job Type" character varying(50),
    "Industry" character varying(100),
    "Location" character varying(100),
    "Experience Level" character varying(50),
    "Availability" character varying(50),
    "Action" character varying(50)
);


ALTER TABLE public.all_available_candidates OWNER TO postgres;

--
-- Name: all_available_candidates_Candidate ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."all_available_candidates_Candidate ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."all_available_candidates_Candidate ID_seq" OWNER TO postgres;

--
-- Name: all_available_candidates_Candidate ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."all_available_candidates_Candidate ID_seq" OWNED BY public.all_available_candidates."Candidate ID";


--
-- Name: all_available_candidates_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_available_candidates_filtered (
    "Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Partner" character varying(255),
    "Candidate ID" integer NOT NULL,
    "Industry" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Location" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.all_available_candidates_filtered OWNER TO postgres;

--
-- Name: all_available_candidates_filtered_Candidate ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."all_available_candidates_filtered_Candidate ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."all_available_candidates_filtered_Candidate ID_seq" OWNER TO postgres;

--
-- Name: all_available_candidates_filtered_Candidate ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."all_available_candidates_filtered_Candidate ID_seq" OWNED BY public.all_available_candidates_filtered."Candidate ID";


--
-- Name: all_staffing_agencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_staffing_agencies (
    "Name of Staffing Agency" character varying(255),
    "Rating" double precision,
    "Contact Person (ADMIN)" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Job Type" character varying(255),
    "Times Worked Together" integer,
    "Partners" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.all_staffing_agencies OWNER TO postgres;

--
-- Name: all_staffing_agencies_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.all_staffing_agencies_filtered (
    "Name of Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Contact Person (ADMIN)" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Job Type" character varying(255),
    "Times Worked Together" character varying(255),
    "Partner" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.all_staffing_agencies_filtered OWNER TO postgres;

--
-- Name: archive_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archive_jobs (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "Posted Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.archive_jobs OWNER TO postgres;

--
-- Name: archive_jobs_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."archive_jobs_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."archive_jobs_Job ID_seq" OWNER TO postgres;

--
-- Name: archive_jobs_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."archive_jobs_Job ID_seq" OWNED BY public.archive_jobs."Job ID";


--
-- Name: archived_candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_candidates (
    "Candidate's ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Title" character varying(255),
    "Industry" character varying(255),
    "State" character varying(255),
    "Salary Expectation" character varying(255),
    "Main Phone" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.archived_candidates OWNER TO postgres;

--
-- Name: archived_candidates_Candidate's ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."archived_candidates_Candidate's ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."archived_candidates_Candidate's ID_seq" OWNER TO postgres;

--
-- Name: archived_candidates_Candidate's ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."archived_candidates_Candidate's ID_seq" OWNED BY public.archived_candidates."Candidate's ID";


--
-- Name: industry_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.industry_jobs (
    "Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Partner" character varying(255),
    "Job ID" character varying(255),
    "Industry" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Location" character varying(255),
    "Posted Date" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.industry_jobs OWNER TO postgres;

--
-- Name: industry_jobs_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.industry_jobs_filtered (
    "Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Partner" character varying(255),
    "Job ID" integer NOT NULL,
    "Industry" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Location" character varying(255),
    "Posted Date" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.industry_jobs_filtered OWNER TO postgres;

--
-- Name: industry_jobs_filtered_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."industry_jobs_filtered_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."industry_jobs_filtered_Job ID_seq" OWNER TO postgres;

--
-- Name: industry_jobs_filtered_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."industry_jobs_filtered_Job ID_seq" OWNED BY public.industry_jobs_filtered."Job ID";


--
-- Name: job_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_activities (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Job Title" character varying(255),
    "Staffing Agency" character varying(255),
    "Partners" character varying(255),
    "Rating" numeric(3,1),
    "Candidate's Profile" text,
    "Last Activity Date" character varying(50),
    "Status" character varying(50),
    "Action" character varying(50)
);


ALTER TABLE public.job_activities OWNER TO postgres;

--
-- Name: job_activities_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_activities_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_activities_job_id_seq OWNER TO postgres;

--
-- Name: job_activities_job_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_activities_job_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_activities_job_id_seq1 OWNER TO postgres;

--
-- Name: job_activities_job_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_activities_job_id_seq1 OWNED BY public.job_activities."Job ID";


--
-- Name: job_agreements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_agreements (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(100),
    "Job Title" character varying(100),
    "Job Type" character varying(50),
    "Staffing Agency" character varying(100),
    "Rating" numeric(3,1),
    "Candidate's Profile" text,
    "Partner Agreement" character varying(25),
    "Status" character varying(50),
    "Action" character varying(50)
);


ALTER TABLE public.job_agreements OWNER TO postgres;

--
-- Name: job_agreements_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."job_agreements_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."job_agreements_Job ID_seq" OWNER TO postgres;

--
-- Name: job_agreements_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."job_agreements_Job ID_seq" OWNED BY public.job_agreements."Job ID";


--
-- Name: job_agreements_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_agreements_filtered (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Candidate's Profile" character varying(255),
    "Partner Agreement" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.job_agreements_filtered OWNER TO postgres;

--
-- Name: job_agreements_filtered_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."job_agreements_filtered_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."job_agreements_filtered_Job ID_seq" OWNER TO postgres;

--
-- Name: job_agreements_filtered_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."job_agreements_filtered_Job ID_seq" OWNED BY public.job_agreements_filtered."Job ID";


--
-- Name: job_postings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_postings (
    client_name character varying(255),
    city character varying(255),
    zip_code character varying(25),
    amount character varying,
    required_education text,
    required_certifications text,
    job_title text,
    required_skills text,
    job_description text,
    fee_agreement text,
    cannot_view text
);


ALTER TABLE public.job_postings OWNER TO postgres;

--
-- Name: jobs_that_were_posted; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs_that_were_posted (
    "Client Name" character varying(255),
    "Industry" character varying(255),
    "Job Title" character varying(255),
    "Number of people to hire for this job" character varying(255),
    "Country" character varying(255),
    "State" character varying(255),
    "City" character varying(255),
    "Zip Code" character varying(255),
    "Salary Type" character varying(255),
    "Amount ($)" character varying(255),
    "Job Type" character varying(255),
    "Location" character varying(255),
    "Start Date" character varying(255),
    "Experience Level" character varying(255),
    "Schedule" character varying(255),
    "Required Education" character varying(255),
    "Required Certifications" character varying(255),
    "Required Skills" character varying(255),
    "Job Benefits" character varying(255),
    "Job Description" character varying(255),
    "Fee Agreement" character varying(255),
    "Select who cannot view this job opening" character varying(255)
);


ALTER TABLE public.jobs_that_were_posted OWNER TO postgres;

--
-- Name: mlsa_reports_my_candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mlsa_reports_my_candidates (
    "Candidate ID" integer NOT NULL,
    "Candidate Name" character varying(255),
    "Main Phone" character varying(255),
    "Email" character varying(255),
    "Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Candidate Status" character varying(255),
    "Created Date" character varying(255)
);


ALTER TABLE public.mlsa_reports_my_candidates OWNER TO postgres;

--
-- Name: mlsa_reports_my_candidates_table_Candidate ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."mlsa_reports_my_candidates_table_Candidate ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."mlsa_reports_my_candidates_table_Candidate ID_seq" OWNER TO postgres;

--
-- Name: mlsa_reports_my_candidates_table_Candidate ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."mlsa_reports_my_candidates_table_Candidate ID_seq" OWNED BY public.mlsa_reports_my_candidates."Candidate ID";


--
-- Name: mlsa_reports_my_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mlsa_reports_my_jobs (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Main Phone" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Status" character varying(255),
    "Posted Date" character varying(255)
);


ALTER TABLE public.mlsa_reports_my_jobs OWNER TO postgres;

--
-- Name: mlsa_reports_my_jobs_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."mlsa_reports_my_jobs_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."mlsa_reports_my_jobs_Job ID_seq" OWNER TO postgres;

--
-- Name: mlsa_reports_my_jobs_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."mlsa_reports_my_jobs_Job ID_seq" OWNED BY public.mlsa_reports_my_jobs."Job ID";


--
-- Name: my_candidate_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(100),
    "Staffing Agency" character varying(100),
    "Partners" character varying(100),
    "Rating" numeric(3,1),
    "Job Title" character varying(100),
    "Industry" character varying(100),
    "Location" character varying(100),
    "Last Activity Date" character varying(25),
    "Status" character varying(50),
    "Action" character varying(50)
);


ALTER TABLE public.my_candidate_activities OWNER TO postgres;

--
-- Name: my_candidate_activities_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_Candidates' ID_seq" OWNED BY public.my_candidate_activities."Candidates' ID";


--
-- Name: my_candidate_activities_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_filtered (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidate_activities_filtered OWNER TO postgres;

--
-- Name: my_candidate_activities_filtered_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_filtered_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_filtered_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_filtered_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_filtered_Candidates' ID_seq" OWNED BY public.my_candidate_activities_filtered."Candidates' ID";


--
-- Name: my_candidate_activities_five; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_five (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidate_activities_five OWNER TO postgres;

--
-- Name: my_candidate_activities_five_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_five_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_five_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_five_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_five_Candidates' ID_seq" OWNED BY public.my_candidate_activities_five."Candidates' ID";


--
-- Name: my_candidate_activities_four; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_four (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidate_activities_four OWNER TO postgres;

--
-- Name: my_candidate_activities_four_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_four_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_four_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_four_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_four_Candidates' ID_seq" OWNED BY public.my_candidate_activities_four."Candidates' ID";


--
-- Name: my_candidate_activities_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_post (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidate_activities_post OWNER TO postgres;

--
-- Name: my_candidate_activities_post_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_post_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_post_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_post_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_post_Candidates' ID_seq" OWNED BY public.my_candidate_activities_post."Candidates' ID";


--
-- Name: my_candidate_activities_process_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_process_page (
    candidateid integer NOT NULL,
    candidatefullname character varying(255),
    staffingagency character varying(255),
    partner character varying(255),
    rating character varying(255),
    jobtitle character varying(255),
    industry character varying(255),
    location character varying(255),
    lastactivitydate character varying(255),
    status character varying(255),
    action character varying(255)
);


ALTER TABLE public.my_candidate_activities_process_page OWNER TO postgres;

--
-- Name: my_candidate_activities_process_page_candidateid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.my_candidate_activities_process_page_candidateid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.my_candidate_activities_process_page_candidateid_seq OWNER TO postgres;

--
-- Name: my_candidate_activities_process_page_candidateid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.my_candidate_activities_process_page_candidateid_seq OWNED BY public.my_candidate_activities_process_page.candidateid;


--
-- Name: my_candidate_activities_three; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidate_activities_three (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidate_activities_three OWNER TO postgres;

--
-- Name: my_candidate_activities_three_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidate_activities_three_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidate_activities_three_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: my_candidate_activities_three_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidate_activities_three_Candidates' ID_seq" OWNED BY public.my_candidate_activities_three."Candidates' ID";


--
-- Name: my_candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidates (
    "Candidate's ID" integer NOT NULL,
    "Candidate's Full Name" character varying(100) NOT NULL,
    "Title" character varying(100),
    "Industry" character varying(100),
    "City, State" character varying(150),
    "Salary Expectation" numeric,
    "Main Phone" character varying(20),
    "Availability" character varying(50),
    "Expiration" character varying(50),
    "Requests" text,
    "Action" character varying(50)
);


ALTER TABLE public.my_candidates OWNER TO postgres;

--
-- Name: my_candidates_Candidate's ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidates_Candidate's ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidates_Candidate's ID_seq" OWNER TO postgres;

--
-- Name: my_candidates_Candidate's ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidates_Candidate's ID_seq" OWNED BY public.my_candidates."Candidate's ID";


--
-- Name: my_candidates_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidates_cards (
    "Total Candidates" integer,
    "Placed Candidates" integer,
    "Pending Candidates" integer,
    "Rejected Candidates" integer
);


ALTER TABLE public.my_candidates_cards OWNER TO postgres;

--
-- Name: my_candidates_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_candidates_filtered (
    "Candidate's ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Title" character varying(255),
    "Industry" character varying(255),
    "City, State" character varying(255),
    "Salary Expectation" character varying(255),
    "Main Phone" character varying(255),
    "Availability" character varying(255),
    "Expiration" character varying(255),
    "Requests" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_candidates_filtered OWNER TO postgres;

--
-- Name: my_candidates_filtered_Candidate's ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_candidates_filtered_Candidate's ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_candidates_filtered_Candidate's ID_seq" OWNER TO postgres;

--
-- Name: my_candidates_filtered_Candidate's ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_candidates_filtered_Candidate's ID_seq" OWNED BY public.my_candidates_filtered."Candidate's ID";


--
-- Name: my_job_activities_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_job_activities_filtered (
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Job Title" character varying(255),
    "Staffing Agency" character varying(255),
    "Partner" character varying(255),
    "Rating" character varying(255),
    "Candidate's Profile" character varying(255),
    "Last Activity Date" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_job_activities_filtered OWNER TO postgres;

--
-- Name: my_job_activities_filtered_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_job_activities_filtered_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_job_activities_filtered_Job ID_seq" OWNER TO postgres;

--
-- Name: my_job_activities_filtered_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_job_activities_filtered_Job ID_seq" OWNED BY public.my_job_activities_filtered."Job ID";


--
-- Name: my_jobs_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_jobs_filtered (
    "All" character varying(255),
    "Job ID" integer NOT NULL,
    "Client Name" character varying(255),
    "Job Title" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Posted Date" character varying(255),
    "Expiration" character varying(255),
    "Applicants" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_jobs_filtered OWNER TO postgres;

--
-- Name: my_jobs_filtered_Job ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."my_jobs_filtered_Job ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."my_jobs_filtered_Job ID_seq" OWNER TO postgres;

--
-- Name: my_jobs_filtered_Job ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."my_jobs_filtered_Job ID_seq" OWNED BY public.my_jobs_filtered."Job ID";


--
-- Name: my_partners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_partners (
    "Name of Staffing Agency" character varying(255),
    "Rating" double precision,
    "Contact Person (ADMIN)" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Job Type" character varying(255),
    "Times Worked Together" integer,
    "Last Interaction" character varying(20),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_partners OWNER TO postgres;

--
-- Name: my_partners_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_partners_filtered (
    "Name of Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Contact Person (ADMIN)" character varying(255),
    "Industry" character varying(255),
    "Location" character varying(255),
    "Job Type" character varying(255),
    "Times Worked Together" character varying(255),
    "Last Interaction" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.my_partners_filtered OWNER TO postgres;

--
-- Name: new_candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.new_candidates (
    "First and Last Name" text,
    "Email" text,
    "Phone Number" text,
    "Employment Eligibility" text,
    "Country" text,
    "State" text,
    "City" text,
    "Preferred Job Type" character varying(255),
    "Preferred Location" character varying(255),
    "Willing to Relocate" character varying(255),
    "Industry" character varying(255),
    "Job Title" character varying(255),
    "Total Years of Experience" character varying(255),
    "Education" character varying(255),
    "Certifications / Credentials" character varying(255),
    "Skills" character varying(255),
    "Expected Salary" character varying(100),
    "Availability to Start Work" character varying(100),
    "LinkedIn" character varying(255),
    "Portfolio Link" character varying(255),
    "Shift Preference" text,
    "Additional Notes" text,
    "Fee Agreement" text,
    "Select who cannot view this resume" text
);


ALTER TABLE public.new_candidates OWNER TO postgres;

--
-- Name: posted_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posted_jobs (
    "Client Name" character varying(255) NOT NULL,
    "Industry" character varying(255) NOT NULL,
    "Job Title" character varying(255) NOT NULL,
    "Number of people to hire for this job" integer NOT NULL,
    "Country" character varying(255) NOT NULL,
    "State" character varying(255) NOT NULL,
    "City" character varying(255),
    "Zip Code" character varying(20),
    "Salary Type" character varying(50) NOT NULL,
    "Amount ($)" numeric NOT NULL,
    "Job Type" character varying(50) NOT NULL,
    "Location" character varying(255) NOT NULL,
    "Start Date" character varying(25),
    "Experience Level" character varying(100) NOT NULL,
    "Schedule" character varying(100),
    "Required Education" character varying(255),
    "Required Certifications" character varying(255),
    "Required Skills" text,
    "Job Benefits" text,
    "Job Description" text,
    "Fee Agreement" text,
    "Select who cannot view this job opening" character varying(255)
);


ALTER TABLE public.posted_jobs OWNER TO postgres;

--
-- Name: recruitment_agreements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recruitment_agreements (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(100),
    "Staffing Agency" character varying(100),
    "Rating" numeric,
    "Job Title" character varying(100),
    "Job Type" character varying(50),
    "Location" character varying(100),
    "Partner Agreement" character varying(25),
    "Status" character varying(50),
    "Action" character varying(50)
);


ALTER TABLE public.recruitment_agreements OWNER TO postgres;

--
-- Name: recruitment_agreements_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."recruitment_agreements_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."recruitment_agreements_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: recruitment_agreements_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."recruitment_agreements_Candidates' ID_seq" OWNED BY public.recruitment_agreements."Candidates' ID";


--
-- Name: recruitment_agreements_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recruitment_agreements_filtered (
    "Candidates' ID" integer NOT NULL,
    "Candidate's Full Name" character varying(255),
    "Staffing Agency" character varying(255),
    "Rating" character varying(255),
    "Job Title" character varying(255),
    "Job Type" character varying(255),
    "Location" character varying(255),
    "Partner Agreement" character varying(255),
    "Status" character varying(255),
    "Action" character varying(255)
);


ALTER TABLE public.recruitment_agreements_filtered OWNER TO postgres;

--
-- Name: recruitment_agreements_filtered_Candidates' ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."recruitment_agreements_filtered_Candidates' ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."recruitment_agreements_filtered_Candidates' ID_seq" OWNER TO postgres;

--
-- Name: recruitment_agreements_filtered_Candidates' ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."recruitment_agreements_filtered_Candidates' ID_seq" OWNED BY public.recruitment_agreements_filtered."Candidates' ID";


--
-- Name: all_available_candidates Candidate ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_available_candidates ALTER COLUMN "Candidate ID" SET DEFAULT nextval('public."all_available_candidates_Candidate ID_seq"'::regclass);


--
-- Name: all_available_candidates_filtered Candidate ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_available_candidates_filtered ALTER COLUMN "Candidate ID" SET DEFAULT nextval('public."all_available_candidates_filtered_Candidate ID_seq"'::regclass);


--
-- Name: archive_jobs Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archive_jobs ALTER COLUMN "Job ID" SET DEFAULT nextval('public."archive_jobs_Job ID_seq"'::regclass);


--
-- Name: archived_candidates Candidate's ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_candidates ALTER COLUMN "Candidate's ID" SET DEFAULT nextval('public."archived_candidates_Candidate''s ID_seq"'::regclass);


--
-- Name: industry_jobs_filtered Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.industry_jobs_filtered ALTER COLUMN "Job ID" SET DEFAULT nextval('public."industry_jobs_filtered_Job ID_seq"'::regclass);


--
-- Name: job_activities Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_activities ALTER COLUMN "Job ID" SET DEFAULT nextval('public.job_activities_job_id_seq1'::regclass);


--
-- Name: job_agreements Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_agreements ALTER COLUMN "Job ID" SET DEFAULT nextval('public."job_agreements_Job ID_seq"'::regclass);


--
-- Name: job_agreements_filtered Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_agreements_filtered ALTER COLUMN "Job ID" SET DEFAULT nextval('public."job_agreements_filtered_Job ID_seq"'::regclass);


--
-- Name: mlsa_reports_my_candidates Candidate ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlsa_reports_my_candidates ALTER COLUMN "Candidate ID" SET DEFAULT nextval('public."mlsa_reports_my_candidates_table_Candidate ID_seq"'::regclass);


--
-- Name: mlsa_reports_my_jobs Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlsa_reports_my_jobs ALTER COLUMN "Job ID" SET DEFAULT nextval('public."mlsa_reports_my_jobs_Job ID_seq"'::regclass);


--
-- Name: my_candidate_activities Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidate_activities_filtered Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_filtered ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_filtered_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidate_activities_five Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_five ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_five_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidate_activities_four Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_four ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_four_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidate_activities_post Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_post ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_post_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidate_activities_process_page candidateid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_process_page ALTER COLUMN candidateid SET DEFAULT nextval('public.my_candidate_activities_process_page_candidateid_seq'::regclass);


--
-- Name: my_candidate_activities_three Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_three ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."my_candidate_activities_three_Candidates'' ID_seq"'::regclass);


--
-- Name: my_candidates Candidate's ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidates ALTER COLUMN "Candidate's ID" SET DEFAULT nextval('public."my_candidates_Candidate''s ID_seq"'::regclass);


--
-- Name: my_candidates_filtered Candidate's ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidates_filtered ALTER COLUMN "Candidate's ID" SET DEFAULT nextval('public."my_candidates_filtered_Candidate''s ID_seq"'::regclass);


--
-- Name: my_job_activities_filtered Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_job_activities_filtered ALTER COLUMN "Job ID" SET DEFAULT nextval('public."my_job_activities_filtered_Job ID_seq"'::regclass);


--
-- Name: my_jobs_filtered Job ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_jobs_filtered ALTER COLUMN "Job ID" SET DEFAULT nextval('public."my_jobs_filtered_Job ID_seq"'::regclass);


--
-- Name: recruitment_agreements Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruitment_agreements ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."recruitment_agreements_Candidates'' ID_seq"'::regclass);


--
-- Name: recruitment_agreements_filtered Candidates' ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruitment_agreements_filtered ALTER COLUMN "Candidates' ID" SET DEFAULT nextval('public."recruitment_agreements_filtered_Candidates'' ID_seq"'::regclass);


--
-- Data for Name: agency_partner_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agency_partner_requests ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Last Interaction", "Status", "Action") FROM stdin;
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-Time	3	Month, Date, Year	Pending Agreement	
Agency 15	4.0	Kate Murphy	Healthcare	New York, NY	Part-time Full-time	0	Month, Date, Year	Rejected Agreement	
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Withdraw Agreement
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Send Message
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Review Terms
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Read Reviews
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Re-request
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Update Terms
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Archive
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Write a Review
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	View Terms
Agency 20	2.5	Sam Tomson	Healthcare	Boston, MA	Full-time	15	Month, Date, Year	Closed	Re-open Partnership
\.


--
-- Data for Name: agency_partner_requests_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agency_partner_requests_filtered ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Last Interaction", "Status", "Action") FROM stdin;
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Texas	Contract	3	01/03/2024	Pending Agreement	
Agency 15	4.0	Kate Murphy	Healthcare	New York	Full-time	0	02/03/2024	Rejected Agreement	
Agency 20	2.5	Sam Tomson	Healthcare	Massachusetts	Part-time	15	12/03/2023	Closed	
Agency 21	3.3	Sam Smith	Oil and Gas	Massachusetts	Temporary	2	11/03/2023	Pending Request	
Agency 22	4.7	Sam Jones	Consumer Goods	Vermont	Seasonal	6	10/04/2023	Submission Pending	
Agency 23	3.7	Elizabeth Sterling	Insurance	New York	Contract	7	09/30/2023	Submission Accepted	
Agency 24	2.7	Tom Fitzgerald	Manufacturing	Louisiana	Full-time	8	08/30/2023	Submission Rejected	
Agency 25	3.9	Albert Flores	Government	Arizona	Full-time	9	07/30/2023	Candidate Review	
Agency 26	4.8	Francisco Garcia	Pharmaceuticals	Florida	Full-time	9	05/09/2023	Declined	
Agency 27	4.3	Tom Branson	Power and Utilities	California	Contract	9	05/09/2023	Submitted to Client	
Agency 27	4.3	Tom Jackson	Healthcare	California	Contract	9	05/04/2023	Interviewing	
\.


--
-- Data for Name: all_available_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_available_candidates ("Staffing Agency", "Rating", "Candidate ID", "Job Title", "Job Type", "Industry", "Location", "Experience Level", "Availability", "Action") FROM stdin;
Staffing Agency	3.9	1	Job Title	Job Type	Industry	City, State	Experience	Availability	
Staffing Agency	4.8	2	Job Title	Job Type	Industry	City, State	Experience	Availability	
Staffing Agency	4.0	3	Job Title	Job Type	Industry	City, State	Experience	Availability	
Staffing Agency	4.2	4	Job Title	Job Type	Industry	City, State	Experience	Availability	
Staffing Agency	3.5	5	Job Title	Job Type	Industry	City, State	Experience	Availability	
Staffing Agency	3.5	6	Job Title	Job Type	Industry	City, State	Experience	Availability	View Candidate Details
\.


--
-- Data for Name: all_available_candidates_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_available_candidates_filtered ("Staffing Agency", "Rating", "Partner", "Candidate ID", "Industry", "Job Title", "Job Type", "Location", "Action") FROM stdin;
Staffing Smarter	3.9	Yes	1	Manufacturing	Operator	Full-time	Texas	
Your Agency	4.8	No	2	Healthcare	CT-Tech	Contract	South Carolina	
Agency Roll	4.8	Yes	3	Healthcare	NP	Contract	New York	
Data Agency	4.5	No	4	Oil and Gas	Energy Engineer	Full-time	Florida	
Hexini	4.2	Yes	5	Agricultural	Engineer	Full-time	Florida	
Staffing Agency 1	4.2	No	6	Conglomerate	Engineer	Full-time	Oregon	
Staffing Agency 2	4.2	Yes	7	Consumer Goods	Engineer	Seasonal	Mississippi	
Staffing Agency 3	4.2	No	8	Computers and Technology	Engineer	Temporary	Michigan	
Staffing Agency 4	4.2	Yes	9	Insurance	Insurance Salesman	Contract	Washington	
Staffing Agency 5	4.2	No	10	Pharmaceuticals	Pharmacist	Full-time	Arizona	
Staffing Agency 6	4.4	Yes	11	Professional Services / Consulting	Consultant	Full-time	Florida	
Staffing Agency 7	4.9	No	12	Academia	Professor	Full-time	Tennessee	
Staffing Agency 8	2.7	Yes	13	Government	Attorney	Full-time	Virginia	
Staffing Agency 8	1.3	No	14	Power and Utilities	Electrician	Full-time	North Carolina	
Staffing Agency 9	3.3	Yes	15	Telecommunications	Network Administrator	Contract	Oklahoma	
Staffing Agency 9	4.3	Yes	16	Computer and Technology	Software Developer	Full-time	California	
Staffing Agency 10	2.3	No	17	Financial	Financial Analyst	Full-time	New York	
Staffing Agency 11	4.8	No	18	Aerospace and Defense	Aerospace Engineer	Full-time	California	
\.


--
-- Data for Name: all_staffing_agencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_staffing_agencies ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Partners", "Action") FROM stdin;
Agency 2	4.8	Contact Person (ADMIN)	IT	City, State	Full-time	0		
Agency 3	4.8	Contact Person (ADMIN)	Education	City, State	Temporary, Full-time	3		
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		
Healthcare Staffing Services	4.5	Contact Person (ADMIN)	Healthcare	Elgin, IL	Full-time, Temporary	2		
Agency 1	4.8	Contact Person (ADMIN)	Hospitality	City, State	Seasonal	3		
Maxim Healthcare Staffing	4.8	Contact Person (ADMIN)	Healthcare	City, State	Part-time, Full-time	3		
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Agency Details
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Ask for Partnership
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		View Terms
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Send Message
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Read Reviews
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Browse Jobs
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Browse Candidates
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Write a Review
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Update Terms
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract, Full-time	3		Close Agreement
\.


--
-- Data for Name: all_staffing_agencies_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.all_staffing_agencies_filtered ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Partner", "Action") FROM stdin;
Agency 2	4.8	Contact Person (ADMIN)	Computers and Technology	Florida	Full-time	0	Yes	
Agency 3	4.8	Contact Person (ADMIN)	IT	Florida	Full-time	0	Yes	
Agency 4	4.5	Contact Person (ADMIN)	Education	California	Full-time	3	No	
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Texas	Contract	3	Yes	
Healthcare Staffing Services	4.5	Contact Person (ADMIN)	Healthcare	Illinois	Part-time	2	No	
Agency 1	4.8	Contact Person (ADMIN)	Hospitality	New York	Temporary	3	Yes	
Maxim Healthcare Staffing	4.1	Contact Person (ADMIN)	Healthcare	New York	Seasonal	3	No	
Robert Half	4.9	John Robinson	Insurance	Nebraska	Full-time	7	Yes	
Vaco	4.7	Melanie Hibbert	Oil and Gas	Texas	Contract	5	Yes	
Aerotek	4.6	Robert Fernandez	Power and Utilities	Florida	Full-time	5	Yes	
\.


--
-- Data for Name: archive_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archive_jobs ("Job ID", "Client Name", "Job Title", "Industry", "City", "State", "Posted Date", "Status", "Action") FROM stdin;
1	Berkshire Medical Center	RN - ER	Healthcare	North Adams	MA	01/05/2024	Expired	
\.


--
-- Data for Name: archived_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_candidates ("Candidate's ID", "Candidate's Full Name", "Title", "Industry", "State", "Salary Expectation", "Main Phone", "Status", "Action") FROM stdin;
1	Tom Peterson	RN - ER	Healthcare	MA	$8000	(267) 634-0109	Expired	
\.


--
-- Data for Name: industry_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.industry_jobs ("Staffing Agency", "Rating", "Partner", "Job ID", "Industry", "Job Title", "Job Type", "Location", "Posted Date", "Action") FROM stdin;
Staffing Smarter	3.9		ID252621	Manufacturing	Operator	Full-time	Borger, TX	02/17/2024	
Your Agency	4.8		ID252622	Healthcare	CT-Tech	Contract	SC	02/22/2024	
Agency Roll	4.8		ID252631	Healthcare	NP	Contract	NY	03/05/2024	
Data Agency	4.5		ID252632	Oil and Gas	Energy Engineer	Full-time	Fort Myers, FL	03/15/2024	
Hexini	4.2		ID252635	Agricultural	Engineer	Full-time	Tampa, FL	03/20/2024	
\.


--
-- Data for Name: industry_jobs_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.industry_jobs_filtered ("Staffing Agency", "Rating", "Partner", "Job ID", "Industry", "Job Title", "Job Type", "Location", "Posted Date", "Action") FROM stdin;
Staffing Smarter	3.9	Yes	1	Manufacturing	Operator	Full-time	Texas	02/17/2024	
Your Agency	4.8	No	2	Healthcare	CT-Tech	Contract	South Carolina	02/22/2024	
Agency Roll	4.8	Yes	3	Healthcare	NP	Contract	New York	03/05/2024	
Data Agency	4.5	No	4	Oil and Gas	Energy Engineer	Full-time	Florida	03/15/2024	
Hexini	4.2	Yes	5	Agricultural	Engineer	Full-time	Florida	03/20/2024	
Staffing Agency 1	3.6	No	6	Academia	Professor	Full-time	California	03/21/2024	
Staffing Agency 2	3.7	Yes	7	Aerospace and Defense	Aerospace Engineer	Part-time	Texas	03/22/2024	
Staffing Agency 3	3.8	Yes	8	Agricultural	Farmer	Seasonal	Iowa	03/23/2024	
Staffing Agency 4	3.9	No	9	Computers and Technology	Software Engineer	Temporary	California	03/24/2024	
Staffing Agency 5	4.0	Yes	10	Financial	Financial Analyst	Full-time	New York	03/25/2024	
Staffing Agency 6	4.1	No	11	Government	Grant Writer	Part-time	Virginia	03/26/2024	
Staffing Agency 7	4.2	Yes	12	Insurance	Insurance Salesman	Full-time	Louisiana	03/27/2024	
Staffing Agency 8	4.3	No	13	Oil and Gas	Petroleum Engineer	Full-time	South Dakota	03/28/2024	
Staffing Agency 9	4.4	Yes	14	Pharmaceuticals	Pharmacist	Full-time	New Jersey	03/29/2024	
Staffing Agency 10	4.5	No	15	Power and Utilities	Electrician	Temporary	Texas	04/01/2024	
\.


--
-- Data for Name: job_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_activities ("Job ID", "Client Name", "Job Title", "Staffing Agency", "Partners", "Rating", "Candidate's Profile", "Last Activity Date", "Status", "Action") FROM stdin;
1	Texas Health Presbyterian	Allied - CMA	Agency 1		3.9	Candidate's Profile	12/25/2023	Pending Submission	
2	Texas Health Presbyterian	Allied - CMA	Agency 2		4.1	Candidate's Profile	Last Activity Date	Accepted Submission	
3	Texas Health Presbyterian	Allied - CMA	Agency 3		4.5	Candidate's Profile	12/25/2023	Rejected Submission	
4	Texas Health Presbyterian	Allied - CMA	Agency 4		2.8	Candidate's Profile	12/25/2023	Candidate Review	
5	Texas Health Presbyterian	Allied - CMA	Agency 5		4.2	Candidate's Profile	12/25/2023	Declined	
6	Texas Health Presbyterian	Allied - CMA	Agency 6		5.0	Candidate's Profile	12/25/2023	Submitted to Client	
7	Texas Health Presbyterian	Allied - CMA	Agency 7		4.2	Candidate's Profile	12/25/2023	Interviewing	
8	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	
9	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	View Terms
10	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Candidate Resume
11	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Accept Submission
12	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Reject Submission
13	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Send Message
14	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Read Reviews
15	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Candidate Review
16	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	View Terms
17	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Write a Review
18	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Archive
19	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Client Submittal
20	Texas Health Presbyterian	Allied - CMA	Agency 8		4.3	Candidate's Profile	12/25/2023	Rejected by Client	Declined
21	Texas Health Presbyterian	Allied CMA	Agency 9		4.8	Candidate's Profile	12/25/2023	Offer Pending	
22	Texas Health Presbyterian	Allied CMA	Agency 10		4.9	Candidate's Profile	12/25/2023	Offer Accepted	
23	Texas Health Presbyterian	Allied CMA	Agency 11		5.0	Candidate's Profile	12/25/2023	Offer Declined	
24	Texas Health Presbyterian	Allied CMA	Agency 12		3.9	Candidate's Profile	12/25/2023	Placed	
25	Texas Health Presbyterian	Allied CMA	Agency 13		3.5	Candidate's Profile	12/25/2023	Invoiced	
26	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	
27	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Interviewing
28	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Send Offer
29	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Rejected by Client
30	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Placed
31	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Send New Offer
32	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Send Invoice
33	Texas Health Presbyterian	Allied CMA	Agency 14		3.7	Candidate's Profile	12/25/2023	Completed	Ask for Partnership
\.


--
-- Data for Name: job_agreements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_agreements ("Job ID", "Client Name", "Job Title", "Job Type", "Staffing Agency", "Rating", "Candidate's Profile", "Partner Agreement", "Status", "Action") FROM stdin;
1	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate's Profile	NO	Signed	
2	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate's Profile	NO	Signed	View Terms
3	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate's Profile	NO	Signed	Send Message
4	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate's Profile	NO	Signed	Write a Review
5	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate's Profile	NO	Signed	Ask for Partnership
\.


--
-- Data for Name: job_agreements_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_agreements_filtered ("Job ID", "Client Name", "Job Title", "Job Type", "Staffing Agency", "Rating", "Candidate's Profile", "Partner Agreement", "Status", "Action") FROM stdin;
1	Texas Health Presbyterian	Allied - CMA	Full-time	Agency 1	3.9	Candidate Profile	No	Signed	
3	Jackson Memorial Hospital	Nurse	Contract	Agency 2	2.5	Candidate Profile	Yes	Request Pending	
4	Lockheed Martin	Mechanical Engineer	Full-time	Agency 3	3.0	Candidate Profile	No	Pending Submission	
5	Apple	Technical Support	Temporary	Agency 4	3.3	Candidate Profile	Yes	Accepted Submission	
6	Microsoft	Salesman	Contract	Agency 5	3.6	Candidate Profile	No	Rejected Submission	
7	Broward Health	Doctor	Full-time	Agency 6	3.9	Candidate Profile	Yes	Candidate Review	
8	Minute Maid	Orange Picker	Seasonal	Agency 7	4.2	Candidate Profile	No	Declined	
9	Cinemark	Theatre Usher	Seasonal	Agency 8	4.5	Candidate Profile	Yes	Submitted to Client	
10	Baptist Health	Nurse Aide	Part-time	Agency 9	4.8	Candidate Profile	No	Interviewing	
11	Miami Herald	Columnist	Contract	Agency 10	2.6	Candidate Profile	Yes	Rejected by Client	
12	General Dynamics	Electrical Engineer	Full-time	Agency 11	2.8	Candidate Profile	No	Offer Pending	
13	Broward County Schools	Teacher	Full-time	Agency 12	3.0	Candidate Profile	Yes	Offer Accepted	
14	Hard Rock Casino	Maintenance Technician	Part-time	Agency 13	4.0	Candidate Profile	No	Offer Declined	
15	Hilton Hotels	Receptionist	Part-time	Agency 14	4.4	Candidate Profile	Yes	Placed	
16	Carnival Cruise Line	Chef	Seasonal	Agency 15	4.6	Candidate Profile	No	Invoiced	
17	Miami Metro Zoo	Zookeeper	Full-time	Agency 16	4.1	Candidate Profile	No	Completed	
\.


--
-- Data for Name: job_postings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_postings (client_name, city, zip_code, amount, required_education, required_certifications, job_title, required_skills, job_description, fee_agreement, cannot_view) FROM stdin;
\.


--
-- Data for Name: jobs_that_were_posted; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs_that_were_posted ("Client Name", "Industry", "Job Title", "Number of people to hire for this job", "Country", "State", "City", "Zip Code", "Salary Type", "Amount ($)", "Job Type", "Location", "Start Date", "Experience Level", "Schedule", "Required Education", "Required Certifications", "Required Skills", "Job Benefits", "Job Description", "Fee Agreement", "Select who cannot view this job opening") FROM stdin;
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	401 (K)	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Life Insurance	\N	\N	\N
Carnival Cruise Lines	Manufacturing	Captain	25	United States	Colorado	Miami	33329	Full-time	$80,000	Full-time	On-site	\N	Between 3 and 4 years of experience	\N	Bachelor's	Cruise Ship	Selling products	\N	Job	No	Agency 2
\.


--
-- Data for Name: mlsa_reports_my_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mlsa_reports_my_candidates ("Candidate ID", "Candidate Name", "Main Phone", "Email", "Title", "Industry", "Location", "Candidate Status", "Created Date") FROM stdin;
1	John Smith	(904) 504-1066	jsmith@gmail.com	RN-ER	Healthcare	Texas	Interviewing	12/21/2023
2	Ann Morton	(517) 420-2557	amorton@gmail.com	CT Tech	Healthcare	New York	Placed	12/21/2023
3	Sarah Davis	(517) 420-2555	sdavis@gmail.com	Ultrasound Tech	Healthcare	Illinois	Pending Request	12/21/2023
4	Joe Williams	(517) 420-2558	jw3432@gmail.com	CNA	Healthcare	North Carolina	Submission Pending	12/21/2023
5	Tom Peterson	(517) 850-2555	tomp@gmail.com	RN-ER	Healthcare	Massachusetts	Submission Accepted	12/21/2023
6	Alexa Hamilton	(954) 854-2565	alexah@gmail.com	Professor	Academia	Virginia	Submission Rejected	12/21/2023
7	Mike Smith	(561) 834-2165	mikesmith@gmail.com	Aerospace Engineer	Aerospace and Defense	Iowa	Candidate Review	12/21/2023
8	Leslie Williams	(786) 837-9323	lesliew@gmail.com	Farmer	Agricultural	Arkansas	Declined	12/21/2023
9	Antonio Johnson	(305) 567-6324	antoniog@gmail.com	Software Developer	Computers and Technology	Oklahoma	Submitted to Client	12/21/2023
10	Jamie Wilson	(407) 667-6824	jamiew@gmail.com	Analyst	Consumer Goods	Nevada	Interviewing	12/21/2023
11	Luke Sanchez	(305) 132-1894	lukesanchez@gmail.com	Accountant	Financial	New York	Rejected By Client	12/21/2023
12	Mia Jones	(505) 152-1354	miajones@gmail.com	Grant Writer	Government	Rhode Island	Pending Offer	12/21/2023
13	Harrison Klein	(605) 152-1754	harrisonk@gmail.com	Claims Officer	Insurance	Vermont	Pending Offer	12/21/2023
14	Lisa Cardone	(305) 152-1754	lisac@gmail.com	QA Analyst	Manufacturing	Florida	Accepted Offer	12/21/2023
15	Howie Fisher	(786) 122-1232	howiefish@gmail.com	Sales Rep	Pharmaceuticals	Florida	Declined Offer	12/21/2023
\.


--
-- Data for Name: mlsa_reports_my_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mlsa_reports_my_jobs ("Job ID", "Client Name", "Main Phone", "Job Title", "Job Type", "Industry", "Location", "Status", "Posted Date") FROM stdin;
1	Texas Health Presbyterian	(904) 897-1066	Allied - CMA	Full-time	Healthcare	Texas		12/25/2023
2	Berkshire Medical Center	(517) 401-2557	CT Tech	Contract	Healthcare	Massachusetts		12/30/2023
3	Sarah Bush Lincoln Health	(517) 430-2885	Ultrasound Tech	Full-time	Healthcare	Illinois		12/28/2023
4	Atrium Health Union West	(517) 720-2688	CNA	Full-time	Healthcare	North Carolina		01/10/2024
5	Berkshire Medical Center	(517) 750-8855	RN - ER	Full-time	Healthcare	Massachusetts		01/05/2024
6	University of Miami	(305) 412-7432	Professor	Full-time	Academia	Florida		01/06/2024
7	Lockheed Martin	(412) 543-7214	Aerospace Engineer	Contract	Aerospace and Defense	Georgia		01/08/2024
8	Minute Maid	(407) 511-3451	Orange Picker	Seasonal	Agricultural	Florida		01/10/2024
9	Apple	(215) 248-2159	Hardware Engineer	Full-time	Computers and Technology	California		01/15/2024
10	Walmart	(334) 451-3276	Store Clerk	Temporary	Consumer Goods	Mississippi		01/16/2024
11	Goldman Sachs	(204) 178-3246	Financial Analyst	Contract	Financial	New York		01/18/2024
12	United Health Care	(561) 123-1799	Claims Officer	Full-time	Insurance	Florida		01/20/2024
13	Caterpillar	(201) 375-1216	Electrical Engineer	Contract	Manufacturing	Illinois		01/22/2024
14	Exxon Mobile	(783) 245-1211	Petroleum Engineer	Full-time	Oil and Gas	Texas		01/24/2024
15	Pfizer	(219) 578-3943	Research Scientist	Full-time	Pharmaceuticals	Ohio		01/25/2024
16	AT&T	(422) 548-3543	Network Engineer	Full-time	Telecommunications	Texas		01/26/2024
\.


--
-- Data for Name: my_candidate_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partners", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	John Smith	HDF Staffing Agency		3.9	ER	Healthcare	TX	12/30/2023	Submission Pending	
2	Ann Morton	Agency 2		4.0	CT Tech	Healthcare	NY	1/03/2024	Submission Accepted	
3	John Smith	Agency 3		3.8	ER	Healthcare	NY	1/03/2024	Submission Rejected	
4	Ann Morton	Agency 4		4.5	ER	Healthcare	MA	12/30/2023	Candidate Review	
5	Sarah Davis	Agency 5		4.2	Ultrasound Tech	Healthcare	TX	12/30/2023	Declined	
6	Joe Williams	Agency 8		5.0	CNA	Healthcare	NC	12/30/2023	Submitted to Client	
7	Candidate 5	Agency 10		4.5	Job Title	Healthcare	State	Submittal Date	Interviewing	
8	Candidate 6	Agency 11		4.5	Job Title	Healthcare	State	Submittal Date	Rejected by Client	
9	Candidate 7	Agency 12		4.5	Job Title	Healthcare	State	Submittal Date	Pending Offer	
10	Candidate 8	Agency 13		4.5	Job Title	Healthcare	State	Submittal Date	Accepted Offer	
11	Candidate 9	Agency 14		4.5	Job Title	Healthcare	State	Submittal Date	Declined Offer	
12	Candidate 10	Agency 15		4.5	Job Title	Healthcare	State	Submittal Date	Placed	
13	Candidate 11	Agency 16		4.5	Job Title	Healthcare	State	Submittal Date	Invoiced	
14	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	
15	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	View Job Details
16	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	View Job Details
17	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Withdraw Submission
18	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Send Message
19	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	View Terms
20	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Read Reviews
21	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Write a Review
22	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Archive
23	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Archive
24	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Accept Offer
25	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Decline Offer
26	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Confirm Invoice
27	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	Ask for Partnership
\.


--
-- Data for Name: my_candidate_activities_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_filtered ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partner", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	John Smith	HDF Staffing Agency	Yes	3.9	ER	Healthcare	Texas	12/30/2023	Submission Pending	
2	Ann Morton	Agency 2	No	4.0	CT Tech	Healthcare	New York	01/03/2024	Submission Accepted	
3	John Smith	Agency 3	Yes	3.8	ER	Healthcare	New York	01/03/2024	Submission Rejected	
4	Ann Morton	Agency 4	No	4.5	ER	Healthcare	Massachusetts	12/30/2023	Candidate Review	
5	Sarah Davis	Agency 5	Yes	4.2	Ultrasound Tech	Healthcare	Texas	12/30/2023	Declined	
6	Joe Williams	Agency 8	No	5.0	CNA	Healthcare	North Carolina	12/30/2023	Submitted to Client	
7	Candidate 5	Agency 10	Yes	4.5	Job Title	Consumer Goods	Washington	Submittal Date	Interviewing	
8	Candidate 6	Agency 11	No	4.5	Job Title	Pharmaceuticals	New Mexico	Submittal Date	Rejected by Client	
9	Candidate 7	Agency 12	Yes	4.5	Job Title	Professional Services / Consulting	Arizona	Submittal Date	Pending Offer	
10	Candidate 8	Agency 13	No	4.5	Job Title	Government	California	Submittal Date	Accepted Offer	
11	Candidate 9	Agency 14	Yes	4.5	Job Title	Manufacturing	Colorado	Submittal Date	Declined Offer	
12	Candidate 10	Agency 15	No	4.5	Job Title	Power and Utilities	Florida	Submittal Date	Placed	
13	Candidate 11	Agency 16	Yes	4.5	Job Title	Consumer Goods	Georgia	Submittal Date	Invoiced	
14	Candidate 12	Agency 17	No	4.5	Job Title	Agricultural	South Carolina	Submittal Date	Completed	
15	Anna Restrepo	Agency 18	Yes	4.6	Nurse	Healthcare	Wisconsin	01/09/2024	Placed	
16	Robert Griffin	Agency 19	No	4.7	Consultant	Financial	Texas	01/15/2024	Completed	
17	Michelle Howley	Agency 20	Yes	4.8	Advertising Executive	Consumer Goods	Massachusetts	01/16/2024	Declined	
18	Patrick Johnson	Agency 21	No	3.8	Computer Engineer	Manufacturing	New York	01/16/2024	Submission Rejected	
\.


--
-- Data for Name: my_candidate_activities_five; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_five ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partner", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	Sarah Davis	Agency 1	Yes	4.7	Nurse	Healthcare	Florida	12/30/2023	Withdraw Submission	
\.


--
-- Data for Name: my_candidate_activities_four; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_four ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partner", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	Ann Morton	Agency 1	Yes	4.0	CT - Tech	Healthcare	New York	01/03/2024		
\.


--
-- Data for Name: my_candidate_activities_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_post ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partner", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	Jason Smith	HDF Staffing Agency	Yes	3.9	ER	Healthcare	Texas	12/30/2023		
2	Ann Morton	Agency 1	No	4.0	CT Tech	Healthcare	New York	01/03/2024		
3	Harry Morton	Agency 2	Yes	3.8	Doctor	Healthcare	New York	01/04/2024		
4	Elizabeth Reagan	Agency 3	No	4.5	Professor	Academia	Massachusetts	01/05/2024		
5	Albert Harris	Agency 4	Yes	4.2	Aerospace Engineer	Aerospace and Defense	Texas	01/06/2024		
6	Jessica Singletary	Agency 5	No	5.0	Farmer	Agricultural	North Carolina	01/07/2024		
7	Joe Williams	Agency 6	Yes	4.5	Software Developer	Computers and Technology	California	01/08/2024		
8	Jennifer Grant	Agency 7	No	2.5	Analyst	Consumer Goods	Arizona	01/09/2024		
9	Hudson Davis	Agency 8	Yes	2.7	Accountant	Financial	Georgia	01/10/2024		
10	Delaney Walker	Agency 9	No	3.0	Grant Writer	Government	Virginia	01/11/2024		
11	Harrison James	Agency 10	Yes	3.2	Salesman	Insurance	Virginia	01/12/2024		
12	Lily Halpern	Agency 11	No	3.5	Advertising Executive	Consumer Goods	Connecticut	01/14/2024		
13	James Smith	Agency 12	No	3.7	Assembler	Manufacturing	Michigan	01/15/2024		
14	Elizabeth Howard	Agency 13	Yes	3.9	Nurse	Healthcare	South Dakota	01/16/2024		
15	Robert Spencer	Agency 14	No	4.0	Petroleum Engineer	Oil and Gas	South Dakota	01/17/2024		
16	Rowan Jones	Agency 15	Yes	4.2	Pharmacist	Pharmaceuticals	Michigan	01/18/2024		
17	James Roberson	Agency 16	No	4.3	Electrical Engineer	Power and Utilities	Wisconsin	01/19/2024		
19	Jill Swank	Agency 17	Yes	4.4	Consultant	Professional Services / Consulting	Illinois	01/20/2024		
20	Michael Davenport	Agency 18	Yes	4.6	Doctor	Healthcare	Michigan	01/21/2024		
21	Lisa Heathcoate	Agency 19	No	4.8	Nurse	Healthcare	Alabama	01/22/2024		
\.


--
-- Data for Name: my_candidate_activities_process_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_process_page (candidateid, candidatefullname, staffingagency, partner, rating, jobtitle, industry, location, lastactivitydate, status, action) FROM stdin;
1	John Smith	HDF Staffing Agency		3.9	ER	Healthcare	TX	12/30/2023	Submission Pending	
2	Ann Morton	Agency 2		4.0	CT Tech	Healthcare	NY	01/03/2024	Submission Accepted	
3	John Smith	Agency 3		3.8	ER	Healthcare	NY	01/03/2024	Submission Rejected	
4	Ann Morton	Agency 4		4.5	ER	Healthcare	MA	12/30/2023	Candidate Review	
5	Sarah Davis	Agency 5		4.2	Ultrasound Tech	Healthcare	TX	12/30/2023	Declined	
6	Joe Williams	Agency 8		5.0	CNA	Healthcare	NC	12/30/2023	Submitted to Client	
7	Candidate 5	Agency 10		4.5	Job Title	Healthcare	State	Submittal Date	Interviewing	
8	Candidate 6	Agency 11		4.5	Job Title	Healthcare	State	Submittal Date	Rejected by Client	
9	Candidate 7	Agency 12		4.5	Job Title	Healthcare	State	Submittal Date	Pending Offer	
10	Candidate 8	Agency 13		4.5	Job Title	Healthcare	State	Submittal Date	Accepted Offer	
11	Candidate 9	Agency 14		4.5	Job Title	Healthcare	State	Submittal Date	Declined Offer	
12	Candidate 10	Agency 15		4.5	Job Title	Healthcare	State	Submittal Date	Placed	
13	Candidate 11	Agency 16		4.5	Job Title	Healthcare	State	Submittal Date	Invoiced	
14	Candidate 12	Agency 17		4.5	Job Title	Healthcare	State	Submittal Date	Completed	
\.


--
-- Data for Name: my_candidate_activities_three; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidate_activities_three ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Partner", "Rating", "Job Title", "Industry", "Location", "Last Activity Date", "Status", "Action") FROM stdin;
1	John Smith	HDF Staffing Agency	Yes	3.9	ER	Healthcare	Texas	12/30/2023		
\.


--
-- Data for Name: my_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidates ("Candidate's ID", "Candidate's Full Name", "Title", "Industry", "City, State", "Salary Expectation", "Main Phone", "Availability", "Expiration", "Requests", "Action") FROM stdin;
1	John Smith	RN - ER	Healthcare	TX	8000	(904) 504-1066	Availability	90 days	2 Jobs	
2	Ann Morton	CT - Tech	Healthcare	New York, NY	8000	(517) 420-2557	Availability	40 days	2 Jobs	
3	Sarah Davis	Ultrasound Tech	Healthcare	IL	8000	(517) 420-2557	Availability	33 days	1 Jobs	
4	Joe Williams	CNA	Healthcare	NC	8000	(908) 415-4817	Availability	5 days	2 Jobs	
5	Tom Peterson	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	
6	Tom Peterson	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	Edit
7	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	View Candidate Resume
8	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	Find Job
9	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	View Requests
10	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	Renew Candidate
11	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	Archive
12	Candidate 12	RN - ER	Healthcare	MA	8000	(267) 634-0109	Availability	Expired	0 Jobs	Archive
\.


--
-- Data for Name: my_candidates_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidates_cards ("Total Candidates", "Placed Candidates", "Pending Candidates", "Rejected Candidates") FROM stdin;
5	0	0	0
\.


--
-- Data for Name: my_candidates_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_candidates_filtered ("Candidate's ID", "Candidate's Full Name", "Title", "Industry", "City, State", "Salary Expectation", "Main Phone", "Availability", "Expiration", "Requests", "Action") FROM stdin;
1	John Smith	RN - ER	Healthcare	Texas	$8000	(904) 504-1066	Availability	90 days	2 Jobs	
2	Ann Morton	CT Tech	Healthcare	New York	$8000	(517) 420-2557	Availability	40 days	2 Jobs	
3	Sarah Davis	Ultrasound Tech	Healthcare	Illinois	$8000	(517) 420-2557	Availability	33 days	1 Job	
4	Joe Williams	CNA	Healthcare	North Carolina	$8000	(908) 415-4817	Availability	5 days	2 Jobs	
5	Tom Peterson	RN - ER	Healthcare	Massachusetts	$8000	(267) 634-0109	Availability	Expired	0 Jobs	
6	John Robinson	Scientist	Academia	California	$25,000	321-567-8769	Availability	20 days	3 Jobs	
7	Thomas Jackson	Aerospace Engineer	Aerospace and Defense	New York	$100,000	(456) 906-4315	Availability	7 days	3 Jobs	
8	Michelle Smith	Analyst	Consumer Goods	Nebraska	$75,000	(654) 968-4194	Availability	13 days	3 Jobs	
9	Holly Steele	Financial Planner	Financial	Nebraska	$75,000	(654) 555-4674	Availability	18 days	9 Jobs	
10	Jose Calderon	Grant Writer	Government	Florida	$50,000	(305) 545-5740	Availability	5 days	3 Jobs	
11	Adam Klipstein	Warehouse Assembler	Manufacturing	Wisconsin	$50,000	(789) 345-2345	Availability	10 days	5 Jobs	
12	Kelly Pohl	Pharmaceutical Rep	Pharmaceuticals	Ohio	$100,000	(247) 952-1934	Availability	15 days	6 Jobs	
13	Harry Lopez	Consultant	Professional Services / Consulting	New York	$100,000	(212) 910-2345	Availability	11 days	2 Jobs	
14	Autumn Smith	Network Engineer	Telecommunications	New York	$250,000	(212) 385-2115	Availability	10 days	3 Jobs	
15	Michael Brady	Insurance Agent	Insurance	Florida	$75,000	(561) 674-4743	Availability	10 days	5 Jobs	
\.


--
-- Data for Name: my_job_activities_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_job_activities_filtered ("Job ID", "Client Name", "Job Title", "Staffing Agency", "Partner", "Rating", "Candidate's Profile", "Last Activity Date", "Status", "Action") FROM stdin;
1	Texas Health Presbyterian	Allied - CMA	Agency 1	Yes	3.9	Candidate Profile	12/25/2023	Pending Submission	
2	FPL	Electrician	Agency 2	No	4.1	Candidate Profile	12/26/2023	Accepted Submission	
3	Jackson Memorial Hospital	Surgeon	Agency 3	Yes	4.5	Candidate Profile	12/27/2023	Rejected Submission	
4	Florida State University	Adjunct Professor	Agency 4	No	2.8	Candidate Profile	12/28/2023	Candidate Review	
5	Minute Maid	Orange Farmer	Agency 5	Yes	4.2	Candidate Profile	12/29/2023	Declined	
6	NVIDIA	Hardware Engineer	Agency 6	No	5.0	Candidate Profile	12/30/2023	Submitted to Client	
7	Orange Country Hospital System	Nurse	Agency 7	Yes	4.2	Candidate Profile	12/31/2023	Interviewing	
8	New York City Hospital System	Nurse	Agency 8	No	4.3	Candidate Profile	01/01/2024	Rejected by Client	
9	New York City Police Department	Police	Agency 9	Yes	4.8	Candidate Profile	01/02/2024	Offer Pending	
10	Delray Beach Municipal Works	Restaurant Inspector	Agency 10	No	4.9	Candidate Profile	01/03/2024	Offer Accepted	
11	Chicago Hospital System	Doctor	Agency 11	Yes	5.0	Candidate Profile	01/04/2024	Offer Declined	
12	Microsoft	Engineering Director	Agency 12	No	3.9	Candidate Profile	01/05/2024	Placed	
13	Palm Beach Water Department	Quality Inspector	Agency 13	Yes	3.5	Candidate Profile	01/06/2024	Invoiced	
14	Miami Hospital System	Nurse	Agency 14	No	3.7	Candidate Profile	01/07/2024	Completed	
15	Miami Dade Park System	Park Ranger	Agency 15	Yes	4.0	Candidate Profile	01/08/2024	Interviewing	
\.


--
-- Data for Name: my_jobs_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_jobs_filtered ("All", "Job ID", "Client Name", "Job Title", "Industry", "Location", "Posted Date", "Expiration", "Applicants", "Action") FROM stdin;
	1	Texas Health Presbyterian	Allied - CMA	Healthcare	Texas	12/25/2023	14 days	2 Candidates	
	2	Berkshire Medical Center	CT Tech	Healthcare	Massachusetts	12/30/2023	10 days	0 Candidates	
	3	Sarah Bush Lincoln Health	Ultrasound Tech	Healthcare	Illinois	12/28/2023	5 days	1 Candidate	
	4	Atrium Health Union West	CNA	Healthcare	North Carolina	01/10/2024	1 day	4 Candidates	
	5	Berkshire Medical Center	RN - ER	Healthcare	Massachusetts	01/05/2024	Expired	5 Candidates	
	6	Mayo Clinic	RN - ER	Healthcare	Florida	01/05/2024	Expired	5 Candidates	
	7	Mayo Clinic	RN - ER	Healthcare	Texas	01/05/2024	10 days	5 Candidates	
	8	Cleveland Clinic	RN - ER	Healthcare	California	01/05/2024	10 days	5 Candidates	
	9	Cleveland Clinic	RN - ER	Healthcare	Texas	01/05/2024	10 days	5 Candidates	
	10	Baptist Health	RN - ER	Healthcare	Florida	01/05/2024	10 days	5 Candidates	
	11	Jackson Memorial	RN - ER	Healthcare	Florida	01/05/2024	6 days	7 Candidates	
	12	City Hospital	RN - ER	Healthcare	New York	01/05/2024	6 days	7 Candidates	
	13	City Hospital	RN - ER	Healthcare	California	01/05/2024	6 days	7 Candidates	
	14	General Hospital	RN - ER	Healthcare	California	01/05/2024	6 days	7 Candidates	
	15	General Hospital	RN - ER	Healthcare	Florida	01/05/2024	6 days	7 Candidates	
	16	General Hospital	RN - ER	Healthcare	Florida	01/05/2024	21 days	3 Candidates	
\.


--
-- Data for Name: my_partners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_partners ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Last Interaction", "Status", "Action") FROM stdin;
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Send Message
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Browse Jobs
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Browse Candidates
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	View Terms
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Write a Review
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Update Terms
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Close Agreement
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Austin, TX	Contract Full-time	3	Jan 10, 2024	Active Partnership	Read Reviews
\.


--
-- Data for Name: my_partners_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_partners_filtered ("Name of Staffing Agency", "Rating", "Contact Person (ADMIN)", "Industry", "Location", "Job Type", "Times Worked Together", "Last Interaction", "Status", "Action") FROM stdin;
HDF Staffing Agency	3.9	Alison Johnson	Healthcare	Texas	Contract	3	Jan 10, 2024	Active Partnership	
Agency 1	4.0	Michael Johnson	Healthcare	Florida	Full-time	4	Jan 11, 2024	Pending Request	
Agency 2	4.2	Harry Smith	Healthcare	Florida	Contract	5	Jan 15, 2024	Submission Pending	
Agency 3	4.4	Harold Correa	Oil and Gas	Texas	Part-time	6	Jan 16, 2024	Submission Accepted	
Agency 4	4.6	Lisa Robinson	Insurance	California	Contract	7	Jan 17, 2024	Submission Rejected	
Agency 5	4.8	Lisa Howard	Professional Services / Consulting	California	Full-time	3	Jan 20, 2024	Candidate Review	
Agency 6	5.0	Howard Foreman	Aerospace and Defense	Michigan	Full-time	4	Jan 21, 2024	Declined	
Agency 7	2.5	Keith Smith	Agricultural	Florida	Seasonal	4	Jan 22, 2024	Submitted to Client	
Agency 8	2.7	Chris Harris	Computers and Technology	Arizona	Contract	5	Jan 23, 2024	Interviewing	
Agency 9	2.7	Alexa Rice	Academia	California	Full-time	6	Jan 25, 2024	Rejected by Client	
Agency 10	2.9	Annette Smith	Healthcare	Alabama	Part-time	8	Jan 26, 2024	Pending Offer	
Agency 11	3.1	Jennifer Wilson	Healthcare	Georgia	Temporary	10	Jan 27, 2024	Accepted Offer	
Agency 12	3.3	Alexander Wang	Insurance	Virginia	Full-time	11	Jan 28, 2024	Declined Offer	
Agency 13	3.6	Robert Williams	Manufacturing	Texas	Contract	2	Jan 29, 2024	Placed	
Agency 14	3.7	Tom Fitzgerald	Professional Services / Consulting	Texas	Contract	3	Jan 29, 2024	Invoiced	
Agency 15	3.8	Tom Huffington	Financial	New York	Full-time	7	Jan 29, 2024	Invoiced	
\.


--
-- Data for Name: new_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.new_candidates ("First and Last Name", "Email", "Phone Number", "Employment Eligibility", "Country", "State", "City", "Preferred Job Type", "Preferred Location", "Willing to Relocate", "Industry", "Job Title", "Total Years of Experience", "Education", "Certifications / Credentials", "Skills", "Expected Salary", "Availability to Start Work", "LinkedIn", "Portfolio Link", "Shift Preference", "Additional Notes", "Fee Agreement", "Select who cannot view this resume") FROM stdin;
John Smith	johnsmith@careermanagementgroup.com	(561) 345-7321	Resident Alient	United States	Florida	Delray Beach	Full Time	Florida	Yes	Education	Doctor	10	Bachelor's	Teacher's Certificate	Plastic Surgery	$75,000	one month	www.linkedin.com/MichaelSmith	github.com/MichaelRobinson	\N	He is an excellent doctor.	Yes	Staffing Agency 1
\.


--
-- Data for Name: posted_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posted_jobs ("Client Name", "Industry", "Job Title", "Number of people to hire for this job", "Country", "State", "City", "Zip Code", "Salary Type", "Amount ($)", "Job Type", "Location", "Start Date", "Experience Level", "Schedule", "Required Education", "Required Certifications", "Required Skills", "Job Benefits", "Job Description", "Fee Agreement", "Select who cannot view this job opening") FROM stdin;
\.


--
-- Data for Name: recruitment_agreements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recruitment_agreements ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Rating", "Job Title", "Job Type", "Location", "Partner Agreement", "Status", "Action") FROM stdin;
1	Candidate's Full Name	Agency 25	5.0	Job Title	Contract	City, State	YES	Signed	
2	Candidate's Full Name	Agency 25	5.0	Job Title	Contract	City, State	YES	Signed	View Terms
3	Candidate's Full Name	Agency 25	5.0	Job Title	Contract	City, State	YES	Signed	Send Message
4	Candidate's Full Name	Agency 25	5.0	Job Title	Contract	City, State	YES	Signed	Write a Review
5	Candidate's Full Name	Agency 25	5.0	Job Title	Contract	City, State	YES	Signed	Ask for Partnership
6	Candidate's Full Name	Agency 26	5.0	Job Title	Contract	City, State	YES	Signed	Ask for Partnership
\.


--
-- Data for Name: recruitment_agreements_filtered; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recruitment_agreements_filtered ("Candidates' ID", "Candidate's Full Name", "Staffing Agency", "Rating", "Job Title", "Job Type", "Location", "Partner Agreement", "Status", "Action") FROM stdin;
1	Ann Morton	Agency 1	5.0	Nurse	Contract	Florida	Yes	Signed	
2	John Smith	Agency 2	2.8	Scientist	Full-time	Georgia	No	Request Pending	
3	Elizabeth Jones	Agency 3	2.9	Park Ranger	Part-time	Alabama	Yes	Pending Submission	
4	Alberto Morales	Agency 4	3.1	Financial Analyst	Temporary	Louisiana	No	Accepted Submission	
5	Michelle Beadle	Agency 5	3.2	Automotive Engineer	Full-time	Michigan	Yes	Rejected Submission	
6	David Voller	Agency 6	3.3	Software Developer	Full-time	Texas	Yes	Candidate Review	
7	Samantha Jones	Agency 7	3.4	Teaching Assistant	Temporary	Texas	Yes	Declined	
8	Michael Madden	Agency 8	3.5	Sports Coach	Seasonal	Mississippi	No	Submitted to Client	
9	Taylor Johnson	Agency 9	3.6	Nutritionist	Part-time	California	Yes	Interviewing	
10	Ryan Harrison	Agency 10	3.7	Police Officer	Full-time	Arizona	No	Rejected By Client	
11	Kimberly Reynolds	Agency 11	3.8	Teacher	Full-time	Oregon	Yes	Pending Offer	
12	Alison Williams	Agency 12	3.9	Executive Assistant	Part-time	Washington	No	Accepted Offer	
13	Raymond Wilson	Agency 13	4.0	Audio Engineer	Contract	Illinois	Yes	Declined Offer	
14	Harriet Smith	Agency 14	4.1	Store Clerk	Seasonal	Georgia	No	Placed	
15	Matthew Ryan	Agency 15	4.2	Engineering Manager	Full-time	North Dakota	Yes	Invoiced	
\.


--
-- Name: all_available_candidates_Candidate ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."all_available_candidates_Candidate ID_seq"', 5, true);


--
-- Name: all_available_candidates_filtered_Candidate ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."all_available_candidates_filtered_Candidate ID_seq"', 18, true);


--
-- Name: archive_jobs_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."archive_jobs_Job ID_seq"', 1, true);


--
-- Name: archived_candidates_Candidate's ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."archived_candidates_Candidate''s ID_seq"', 1, true);


--
-- Name: industry_jobs_filtered_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."industry_jobs_filtered_Job ID_seq"', 15, true);


--
-- Name: job_activities_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_activities_job_id_seq', 1, false);


--
-- Name: job_activities_job_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_activities_job_id_seq1', 33, true);


--
-- Name: job_agreements_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."job_agreements_Job ID_seq"', 5, true);


--
-- Name: job_agreements_filtered_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."job_agreements_filtered_Job ID_seq"', 17, true);


--
-- Name: mlsa_reports_my_candidates_table_Candidate ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mlsa_reports_my_candidates_table_Candidate ID_seq"', 15, true);


--
-- Name: mlsa_reports_my_jobs_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mlsa_reports_my_jobs_Job ID_seq"', 16, true);


--
-- Name: my_candidate_activities_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_Candidates'' ID_seq"', 27, true);


--
-- Name: my_candidate_activities_filtered_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_filtered_Candidates'' ID_seq"', 18, true);


--
-- Name: my_candidate_activities_five_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_five_Candidates'' ID_seq"', 1, true);


--
-- Name: my_candidate_activities_four_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_four_Candidates'' ID_seq"', 6, true);


--
-- Name: my_candidate_activities_post_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_post_Candidates'' ID_seq"', 21, true);


--
-- Name: my_candidate_activities_process_page_candidateid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.my_candidate_activities_process_page_candidateid_seq', 14, true);


--
-- Name: my_candidate_activities_three_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidate_activities_three_Candidates'' ID_seq"', 82, true);


--
-- Name: my_candidates_Candidate's ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidates_Candidate''s ID_seq"', 12, true);


--
-- Name: my_candidates_filtered_Candidate's ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_candidates_filtered_Candidate''s ID_seq"', 15, true);


--
-- Name: my_job_activities_filtered_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_job_activities_filtered_Job ID_seq"', 15, true);


--
-- Name: my_jobs_filtered_Job ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."my_jobs_filtered_Job ID_seq"', 16, true);


--
-- Name: recruitment_agreements_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."recruitment_agreements_Candidates'' ID_seq"', 6, true);


--
-- Name: recruitment_agreements_filtered_Candidates' ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."recruitment_agreements_filtered_Candidates'' ID_seq"', 15, true);


--
-- Name: all_available_candidates_filtered all_available_candidates_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_available_candidates_filtered
    ADD CONSTRAINT all_available_candidates_filtered_pkey PRIMARY KEY ("Candidate ID");


--
-- Name: all_available_candidates all_available_candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.all_available_candidates
    ADD CONSTRAINT all_available_candidates_pkey PRIMARY KEY ("Candidate ID");


--
-- Name: archive_jobs archive_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archive_jobs
    ADD CONSTRAINT archive_jobs_pkey PRIMARY KEY ("Job ID");


--
-- Name: archived_candidates archived_candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_candidates
    ADD CONSTRAINT archived_candidates_pkey PRIMARY KEY ("Candidate's ID");


--
-- Name: industry_jobs_filtered industry_jobs_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.industry_jobs_filtered
    ADD CONSTRAINT industry_jobs_filtered_pkey PRIMARY KEY ("Job ID");


--
-- Name: job_activities job_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_activities
    ADD CONSTRAINT job_activities_pkey PRIMARY KEY ("Job ID");


--
-- Name: job_agreements_filtered job_agreements_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_agreements_filtered
    ADD CONSTRAINT job_agreements_filtered_pkey PRIMARY KEY ("Job ID");


--
-- Name: job_agreements job_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_agreements
    ADD CONSTRAINT job_agreements_pkey PRIMARY KEY ("Job ID");


--
-- Name: mlsa_reports_my_candidates mlsa_reports_my_candidates_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlsa_reports_my_candidates
    ADD CONSTRAINT mlsa_reports_my_candidates_table_pkey PRIMARY KEY ("Candidate ID");


--
-- Name: mlsa_reports_my_jobs mlsa_reports_my_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlsa_reports_my_jobs
    ADD CONSTRAINT mlsa_reports_my_jobs_pkey PRIMARY KEY ("Job ID");


--
-- Name: my_candidate_activities_filtered my_candidate_activities_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_filtered
    ADD CONSTRAINT my_candidate_activities_filtered_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidate_activities_five my_candidate_activities_five_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_five
    ADD CONSTRAINT my_candidate_activities_five_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidate_activities_four my_candidate_activities_four_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_four
    ADD CONSTRAINT my_candidate_activities_four_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidate_activities my_candidate_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities
    ADD CONSTRAINT my_candidate_activities_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidate_activities_post my_candidate_activities_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_post
    ADD CONSTRAINT my_candidate_activities_post_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidate_activities_process_page my_candidate_activities_process_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_process_page
    ADD CONSTRAINT my_candidate_activities_process_page_pkey PRIMARY KEY (candidateid);


--
-- Name: my_candidate_activities_three my_candidate_activities_three_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidate_activities_three
    ADD CONSTRAINT my_candidate_activities_three_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: my_candidates_filtered my_candidates_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidates_filtered
    ADD CONSTRAINT my_candidates_filtered_pkey PRIMARY KEY ("Candidate's ID");


--
-- Name: my_candidates my_candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_candidates
    ADD CONSTRAINT my_candidates_pkey PRIMARY KEY ("Candidate's ID");


--
-- Name: my_job_activities_filtered my_job_activities_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_job_activities_filtered
    ADD CONSTRAINT my_job_activities_filtered_pkey PRIMARY KEY ("Job ID");


--
-- Name: my_jobs_filtered my_jobs_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_jobs_filtered
    ADD CONSTRAINT my_jobs_filtered_pkey PRIMARY KEY ("Job ID");


--
-- Name: recruitment_agreements_filtered recruitment_agreements_filtered_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruitment_agreements_filtered
    ADD CONSTRAINT recruitment_agreements_filtered_pkey PRIMARY KEY ("Candidates' ID");


--
-- Name: recruitment_agreements recruitment_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruitment_agreements
    ADD CONSTRAINT recruitment_agreements_pkey PRIMARY KEY ("Candidates' ID");


--
-- PostgreSQL database dump complete
--

