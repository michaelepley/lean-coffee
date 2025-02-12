
DELETE FROM public.sliders_topics;

INSERT INTO public.sliders_runs VALUES (1, 10, NULL, 11, NULL, 7, NULL, 14, NULL, 8, NULL, 4, NULL, 19, NULL, 22, NULL, 20, NULL, 3, NULL, '2024-11-14 13:20:46.295055', NULL, 'WX4A7');
INSERT INTO public.sliders_runs VALUES (2, 10, NULL, 11, NULL, 7, NULL, 14, NULL, 8, NULL, 4, NULL, 19, NULL, 22, NULL, 20, NULL, 3, NULL, '2024-11-14 13:22:21.865075', 1, '9QK4E');
INSERT INTO public.sliders_runs VALUES (3, 2, NULL, 17, NULL, 12, NULL, 14, NULL, 8, NULL, 13, NULL, 22, NULL, 6, NULL, 5, NULL, 18, NULL, '2024-11-14 13:35:43.393404', 4, 'WTMKG');
INSERT INTO public.sliders_runs VALUES (4, 2, 1, 17, 1, 12, 1, 10, 0, 11, 0, 7, 0, 14, 0, 8, 0, 13, 0, 22, 0, '2024-11-14 13:49:03.450441', 1, 'P9KD4');


--
-- Data for Name: sliders_topics; Type: TABLE DATA; Schema: public; Owner: leancoffee
--

INSERT INTO public.sliders_topics VALUES (1, 'RH compliance', NULL );
INSERT INTO public.sliders_topics VALUES (2, 'AI & Security/Safety', NULL );
INSERT INTO public.sliders_topics VALUES (3, 'On-Prem / Cloud considerations ', NULL );
INSERT INTO public.sliders_topics VALUES (4, 'Data Sovereignty', NULL );
INSERT INTO public.sliders_topics VALUES (5, 'Security Impact Levels', NULL );
INSERT INTO public.sliders_topics VALUES (6, 'Multi-level Security (MLS) or Multi-Category Security (MCS)', NULL );
INSERT INTO public.sliders_topics VALUES (7, 'Public / Private (PubSec only) clouds', NULL );
INSERT INTO public.sliders_topics VALUES (8, 'Cyber hygiene (what & how)', NULL );
INSERT INTO public.sliders_topics VALUES (9, 'Data/Network segmentation', NULL );
INSERT INTO public.sliders_topics VALUES (10, 'Incident response and recovery', NULL );
INSERT INTO public.sliders_topics VALUES (11, 'Embargo (security vulnerabilities)', NULL );
INSERT INTO public.sliders_topics VALUES (12, 'Confidential Computing', NULL );
INSERT INTO public.sliders_topics VALUES (13, 'CVE’s', NULL );
INSERT INTO public.sliders_topics VALUES (14, 'Compliance Operator Profiles', NULL );
INSERT INTO public.sliders_topics VALUES (15, 'Hub Data lake', NULL );
INSERT INTO public.sliders_topics VALUES (16, 'Data encryption', NULL );
INSERT INTO public.sliders_topics VALUES (17, 'TSSC - The how and the why?', NULL );
INSERT INTO public.sliders_topics VALUES (18, 'Security oriented automation', NULL );
INSERT INTO public.sliders_topics VALUES (19, 'Common PubSec challenges', NULL );
INSERT INTO public.sliders_topics VALUES (20, 'Zero Trust / ZTA', NULL );
INSERT INTO public.sliders_topics VALUES (21, 'Defence in Depth', NULL );
INSERT INTO public.sliders_topics VALUES (22, 'Patching', NULL );
INSERT INTO public.sliders_topics VALUES (23, 'Legacy Applications', NULL );
INSERT INTO public.sliders_topics VALUES (24, 'Emerging Tech', NULL );
INSERT INTO public.sliders_topics VALUES (25, 'Interagency Collaboration', NULL );
INSERT INTO public.sliders_topics VALUES (26, 'NIS2 (EMEA only)', NULL );
INSERT INTO public.sliders_topics VALUES (27, 'SELinux', NULL );
INSERT INTO public.sliders_topics VALUES (28, 'FIPS', NULL );
INSERT INTO public.sliders_topics VALUES (29, 'Common Criteria', NULL );
INSERT INTO public.sliders_topics VALUES (30, 'CSfC', NULL );
INSERT INTO public.sliders_topics VALUES (31, 'Disconnected operations', NULL );
INSERT INTO public.sliders_topics VALUES (32, 'Identity And Access Management', NULL );
INSERT INTO public.sliders_topics VALUES (33, 'Signing and Attestation', NULL );
INSERT INTO public.sliders_topics VALUES (34, 'Credentialing ', NULL );
INSERT INTO public.sliders_topics VALUES (35, 'Inventory and Fleet Management', NULL );
INSERT INTO public.sliders_topics VALUES (36, 'Key Management', NULL );
INSERT INTO public.sliders_topics VALUES (37, 'PKI', NULL );
INSERT INTO public.sliders_topics VALUES (38, 'Post Quantum Cryptography (PQC) / Quantum Ready Cryptography', NULL );
INSERT INTO public.sliders_topics VALUES (39, 'SOMs (SBOMs/HBOMs/AIBOMs)', NULL );
INSERT INTO public.sliders_topics VALUES (40, 'Supply Chain Risk Management', NULL );
INSERT INTO public.sliders_topics VALUES (41, 'Secure Software Development Framework (SSDF)', NULL );
INSERT INTO public.sliders_topics VALUES (42, 'Secure-by-Default', NULL );
INSERT INTO public.sliders_topics VALUES (43, 'Secure-by-Design', NULL );
INSERT INTO public.sliders_topics VALUES (44, 'Threat Intelligence / Threat Monitoring', NULL );
INSERT INTO public.sliders_topics VALUES (45, 'Threat Intelligence Sharing', NULL );
INSERT INTO public.sliders_topics VALUES (46, 'Critical Infrastructure', NULL );
INSERT INTO public.sliders_topics VALUES (47, 'Adversarial Testing / Penetration Testing', NULL );

--
-- Name: sliders_runs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_runs_id_seq', 4, true);


--
-- Name: sliders_topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leancoffee
--

SELECT pg_catalog.setval('public.sliders_topics_id_seq', 48, true);


