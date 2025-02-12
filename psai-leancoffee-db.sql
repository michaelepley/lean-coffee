
INSERT INTO public.sliders_runs VALUES (4, 2, 1, 17, 1, 12, 1, 10, 0, 11, 0, 7, 0, 14, 0, 8, 0, 13, 0, 22, 0, '2024-11-14 13:49:03.450441', 1, 'P9KD4');


--
-- Data for Name: sliders_topics; Type: TABLE DATA; Schema: public; Owner: leancoffee
--

INSERT INTO public.sliders_topics VALUES (1, 'Shared Knowledge', NULL );
INSERT INTO public.sliders_topics VALUES (2, 'Data Sovereignty', NULL );
INSERT INTO public.sliders_topics VALUES (3, 'Privacy Protection', NULL );
INSERT INTO public.sliders_topics VALUES (4, 'Domain-Specific LLMs (SLMs)', NULL );
INSERT INTO public.sliders_topics VALUES (5, 'Trust, Transparency, and Accountability', NULL );
INSERT INTO public.sliders_topics VALUES (6, 'Future Outlook', NULL );
INSERT INTO public.sliders_topics VALUES (7, 'Market Impact', NULL );
INSERT INTO public.sliders_topics VALUES (8, 'Model Development & Performance', NULL );
INSERT INTO public.sliders_topics VALUES (9, 'Data Engineering & Management', NULL );
INSERT INTO public.sliders_topics VALUES (10, 'Security & Privacy', NULL );
INSERT INTO public.sliders_topics VALUES (11, 'Deployment & Operations (MLOps)', NULL );
INSERT INTO public.sliders_topics VALUES (12, 'AI at the Edge', NULL );
INSERT INTO public.sliders_topics VALUES (13, 'Ethics, Compliance & Regulatory', NULL );
INSERT INTO public.sliders_topics VALUES (14, 'Creating Innovation', NULL );
INSERT INTO public.sliders_topics VALUES (15, 'Procurement & Infrastructure', NULL );
INSERT INTO public.sliders_topics VALUES (16, 'Human-in-the-Loop', NULL );
INSERT INTO public.sliders_topics VALUES (17, 'Large Language Models (LLMs)', NULL );
INSERT INTO public.sliders_topics VALUES (18, 'Federated Learning', NULL );
INSERT INTO public.sliders_topics VALUES (19, 'Model Architectures', NULL );
INSERT INTO public.sliders_topics VALUES (20, 'Agent Based Models', NULL );
INSERT INTO public.sliders_topics VALUES (21, 'Predictive Models', NULL );

--
-- Name: sliders_runs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_runs_id_seq', 1, true);


--
-- Name: sliders_topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_topics_id_seq', 23, true);


