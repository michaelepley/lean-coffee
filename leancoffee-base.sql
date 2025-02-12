--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sliders_runs; Type: TABLE; Schema: public; Owner: leancoffee
--

CREATE TABLE public.sliders_runs (
    id integer NOT NULL,
    q1 integer,
    q1_value integer DEFAULT 0,
    q2 integer,
    q2_value integer DEFAULT 0,
    q3 integer,
    q3_value integer DEFAULT 0,
    q4 integer,
    q4_value integer DEFAULT 0,
    q5 integer,
    q5_value integer DEFAULT 0,
    q6 integer,
    q6_value integer DEFAULT 0,
    q7 integer,
    q7_value integer DEFAULT 0,
    q8 integer,
    q8_value integer DEFAULT 0,
    q9 integer,
    q9_value integer DEFAULT 0,
    q10 integer,
    q10_value integer DEFAULT 0,
    dtg timestamp without time zone DEFAULT now(),
    totalvotes integer DEFAULT 0,
    hash text
);


ALTER TABLE public.sliders_runs OWNER TO postgres;

--
-- Name: sliders_runs_id_seq; Type: SEQUENCE; Schema: public; Owner: leancoffee
--

CREATE SEQUENCE public.sliders_runs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sliders_runs_id_seq OWNER TO postgres;

--
-- Name: sliders_runs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leancoffee
--

ALTER SEQUENCE public.sliders_runs_id_seq OWNED BY public.sliders_runs.id;


--
-- Name: sliders_topics; Type: TABLE; Schema: public; Owner: leancoffee
--

CREATE TABLE public.sliders_topics (
    id integer NOT NULL,
    topics text NOT NULL,
    defaultvalue integer
);


ALTER TABLE public.sliders_topics OWNER TO postgres;

--
-- Name: sliders_topics_id_seq; Type: SEQUENCE; Schema: public; Owner: leancoffee
--

CREATE SEQUENCE public.sliders_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sliders_topics_id_seq OWNER TO postgres;

--
-- Name: sliders_topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leancoffee
--

ALTER SEQUENCE public.sliders_topics_id_seq OWNED BY public.sliders_topics.id;


--
-- Name: sliders_runs id; Type: DEFAULT; Schema: public; Owner: leancoffee
--

ALTER TABLE ONLY public.sliders_runs ALTER COLUMN id SET DEFAULT nextval('public.sliders_runs_id_seq'::regclass);


--
-- Name: sliders_topics id; Type: DEFAULT; Schema: public; Owner: leancoffee
--

ALTER TABLE ONLY public.sliders_topics ALTER COLUMN id SET DEFAULT nextval('public.sliders_topics_id_seq'::regclass);

--
-- Name: sliders_runs sliders_runs_pkey; Type: CONSTRAINT; Schema: public; Owner: leancoffee
--

ALTER TABLE ONLY public.sliders_runs
    ADD CONSTRAINT sliders_runs_pkey PRIMARY KEY (id);


--
-- Name: sliders_topics sliders_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: leancoffee
--

ALTER TABLE ONLY public.sliders_topics
    ADD CONSTRAINT sliders_topics_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--




