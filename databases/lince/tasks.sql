--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Data for Name: command; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.command (id, quantity, command) FROM stdin;
\.


--
-- Data for Name: configuration; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.configuration (id, quantity, save_mode, view_id, column_information_mode, keymap, truncation, table_query, language, timezone) FROM stdin;
1	1	Automatic	1	verbose	{}	{"body": 150, "head": 150, "view": 100, "command": 150}	{"record": "SELECT * FROM RECORD ORDER BY quantity ASC, head ASC, body ASC, id ASC", "command": "SELECT * FROM command ORDER BY id ASC", "frequency": "SELECT * FROM frequency ORDER BY id ASC"}	en-US	-3
\.


--
-- Data for Name: frequency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.frequency (id, quantity, day_week, months, days, seconds, next_date, finish_date, catch_up_sum) FROM stdin;
\.


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.history (id, record_id, change_time, old_quantity, new_quantity) FROM stdin;
\.


--
-- Data for Name: karma; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.karma (id, quantity, expression) FROM stdin;
\.


--
-- Data for Name: record; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.record (id, quantity, head, body, location) FROM stdin;
1	1	Documentar Lince de forma misteriosa e wizardry	Lince	\N
2	0	Eventually Consistent Databases.	Lince	\N
3	0	Poder mudar o id de qualquer item, com todas as referencias a esse item mudando tmbm	Lince	\N
4	0	Acessibility: Get information through any medium and turn them into any operation (Any language, verbal, sign, whistled..).	Lince	\N
5	0	Computing Donation: Give the agent the option to make the machine use its resources for network traffic optimization. Whatever that means.	Lince	\N
6	1	consertar ter de as vezes criar o cadastro duas vezes na primeira buga	Lince	\N
7	1	Criar referencias visuais dos alias do karma, com um gráfico das conexões e regras, tipo mindmap, mas tmbm tooltip quando passa o mouse por uma alias	Lince	\N
8	0	Default Location: When doing transfers the default location is where the machine is at the moment, only not when the location is filled with a coordinate.	Lince	\N
9	1	fix frequency next_date being updated and only giving non 0 to one row on karma because	Lince	\N
10	1	Light/Dark mode toggle? se user tiver proprio html e css ele que lute n? ter um default da lince?	Lince	\N
11	0	Maximization of Value Architecture: Create an architecture that allows for any amount of receptables of models and rules that alter the functioning of the app.	Lince	\N
12	0	Mudar automaticamente o id de itens de uma table pra o mais baixo possivel, entao o 18 vai pro 17 se o 17 for excluido, nao o 19 pro 17 e o 18 fica igual, poder sinalizar se nao quer que mude o id	Lince	\N
13	0	Optimization: get recommendations or automatically optimize all tables and execute actions. Make the text pretty and formated. The transfer proposals in accordance with social quotas, and cost/benefit, automatic transfer with highest one, Lince agent. Correct frequencies for records and commands. Script correction...	Lince	\N
14	0	Streaming: be able to stream video and/or audio through a p2p connection. Be part of a karma expression.	Lince	\N
15	0	Transfer: 1. Multiple parties make their proposal. Each part can receive and contribute many things to any party. 2. Every proposal is accepted. 3. Every party marks deal as uphold. Tip: study smart contracts.	Lince	\N
16	1	um cadastro pode ter uma contribuição prometida, tendo ex: 10, mas 3 prometidos, então na real ele tem 7 livres, mas ele pode também ter 2 de necessidade prometida, então ta esperando por 2 chegarem, ele tem 7 livres mas 9 em potencial, de crédito? ter uma forma de olhar o real e o potencial, com os prometidos pra mais e menos	Lince	\N
17	0	Communication: between nodes, maybe use pub/sub protocol, IPFS, libp2p, Merkle-CRDTs.	Lince	\N
18	0	Graph View: See dependent records and their triggers through karma, with its dependencies like commands and frequencies. Also view dependencies with other records from other nodes, see the chain, sypply chain.	Lince	\N
19	0	Wheel of Time: simulate passage of time, to see the quantities changing. Be able see the result of a transfer. Tip: study Operational Research	Lince	\N
20	1	transfer ter alem de records being passados de mao em mao tambem condições de quando como onde quem vai garantir que tais records passem de quem pra quem, conditions	Lince	\N
21	1	colocar tarefas da lince no lince-social/dna, achar forma de mudar de banco de dados facilmente sem fechar tudo trocar o arquivo e abrir denovo	Lince	\N
22	1	Poder mudar de base de dados facilmente	\N	\N
\.


--
-- Data for Name: sum; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sum (id, quantity, record_id, sum_mode, interval_length, interval_relative, end_lag, end_date) FROM stdin;
\.


--
-- Data for Name: transfer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transfer (id, records_received, records_contributed, agreement, agreement_time, transfer_confirmation, transfer_time) FROM stdin;
\.


--
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.views (id, view, view_name) FROM stdin;
1	SELECT * FROM record	\N
\.


--
-- Name: command_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.command_id_seq', 1, false);


--
-- Name: configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.configuration_id_seq', 1, true);


--
-- Name: frequency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.frequency_id_seq', 1, false);


--
-- Name: history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.history_id_seq', 1, false);


--
-- Name: karma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.karma_id_seq', 1, false);


--
-- Name: record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.record_id_seq', 23, true);


--
-- Name: sum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sum_id_seq', 1, false);


--
-- Name: transfer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transfer_id_seq', 1, false);


--
-- Name: views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.views_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

