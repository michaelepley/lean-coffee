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
-- Data for Name: sliders_runs; Type: TABLE DATA; Schema: public; Owner: leancoffee
--

INSERT INTO public.sliders_runs VALUES (1, 10, NULL, 11, NULL, 7, NULL, 14, NULL, 8, NULL, 4, NULL, 19, NULL, 22, NULL, 20, NULL, 3, NULL, '2024-11-14 13:20:46.295055', NULL, 'WX4A7');
INSERT INTO public.sliders_runs VALUES (2, 10, NULL, 11, NULL, 7, NULL, 14, NULL, 8, NULL, 4, NULL, 19, NULL, 22, NULL, 20, NULL, 3, NULL, '2024-11-14 13:22:21.865075', 1, '9QK4E');
INSERT INTO public.sliders_runs VALUES (3, 2, NULL, 17, NULL, 12, NULL, 14, NULL, 8, NULL, 13, NULL, 22, NULL, 6, NULL, 5, NULL, 18, NULL, '2024-11-14 13:35:43.393404', 4, 'WTMKG');
INSERT INTO public.sliders_runs VALUES (4, 2, 1, 17, 1, 12, 1, 10, 0, 11, 0, 7, 0, 14, 0, 8, 0, 13, 0, 22, 0, '2024-11-14 13:49:03.450441', 1, 'P9KD4');


--
-- Data for Name: sliders_topics; Type: TABLE DATA; Schema: public; Owner: leancoffee
--

INSERT INTO public.sliders_topics VALUES (1, 'Red Hat Compliance', NULL);
INSERT INTO public.sliders_topics VALUES (2, 'AI & Security/Safety', NULL);
INSERT INTO public.sliders_topics VALUES (3, 'On-Prem / Cloud considerations in PubSec', NULL);
INSERT INTO public.sliders_topics VALUES (4, 'Data Sovereignty', NULL);
INSERT INTO public.sliders_topics VALUES (5, 'Security Impact Levels', NULL);
INSERT INTO public.sliders_topics VALUES (6, 'Public / Private clouds', NULL);
INSERT INTO public.sliders_topics VALUES (7, 'Cyber hygiene', NULL);
INSERT INTO public.sliders_topics VALUES (8, 'Data/Network segmentation', NULL);
INSERT INTO public.sliders_topics VALUES (9, 'PubSec incident response and recovery', NULL);
INSERT INTO public.sliders_topics VALUES (10, 'Confidential Computing', NULL);
INSERT INTO public.sliders_topics VALUES (11, 'CVEs', NULL);
INSERT INTO public.sliders_topics VALUES (12, 'Compliance Operator Profiles', NULL);
INSERT INTO public.sliders_topics VALUES (13, 'Hub Data lake', NULL);
INSERT INTO public.sliders_topics VALUES (14, 'Data encryption', NULL);
INSERT INTO public.sliders_topics VALUES (15, 'Trusted Software Supply Chain', NULL);
INSERT INTO public.sliders_topics VALUES (16, 'Security oriented automation', NULL);
INSERT INTO public.sliders_topics VALUES (17, 'Common PubSec challenges', NULL);
INSERT INTO public.sliders_topics VALUES (18, 'Zero Trust Architectures', NULL);
INSERT INTO public.sliders_topics VALUES (19, 'Defence in Depth', NULL);
INSERT INTO public.sliders_topics VALUES (20, 'Legacy Applications', NULL);
INSERT INTO public.sliders_topics VALUES (21, 'Emerging Tech', NULL);
INSERT INTO public.sliders_topics VALUES (22, 'Interagency Collaboration', NULL);


--
-- Name: sliders_runs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_runs_id_seq', 4, true);


--
-- Name: sliders_topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_topics_id_seq', 23, true);


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

