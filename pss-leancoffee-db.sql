


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


