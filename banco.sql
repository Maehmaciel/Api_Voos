--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aviao; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.aviao (
    id integer NOT NULL,
    prefixoaero text NOT NULL,
    capacidade smallint NOT NULL,
    companhia_id integer NOT NULL
);


ALTER TABLE public.aviao OWNER TO yumnwbtj;

--
-- Name: aviao_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.aviao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aviao_id_seq OWNER TO yumnwbtj;

--
-- Name: aviao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.aviao_id_seq OWNED BY public.aviao.id;


--
-- Name: cidade; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.cidade (
    id integer NOT NULL,
    nome text NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.cidade OWNER TO yumnwbtj;

--
-- Name: cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidade_id_seq OWNER TO yumnwbtj;

--
-- Name: cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.cliente OWNER TO yumnwbtj;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO yumnwbtj;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: companhia; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.companhia (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.companhia OWNER TO yumnwbtj;

--
-- Name: companhia_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.companhia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companhia_id_seq OWNER TO yumnwbtj;

--
-- Name: companhia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.companhia_id_seq OWNED BY public.companhia.id;


--
-- Name: estado; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.estado (
    id integer NOT NULL,
    nome text NOT NULL,
    uf text NOT NULL
);


ALTER TABLE public.estado OWNER TO yumnwbtj;

--
-- Name: estado_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_seq OWNER TO yumnwbtj;

--
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;


--
-- Name: piloto; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.piloto (
    id integer NOT NULL,
    nome text NOT NULL,
    companhia_id integer NOT NULL
);


ALTER TABLE public.piloto OWNER TO yumnwbtj;

--
-- Name: piloto_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.piloto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.piloto_id_seq OWNER TO yumnwbtj;

--
-- Name: piloto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.piloto_id_seq OWNED BY public.piloto.id;


--
-- Name: reserva; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.reserva (
    id integer NOT NULL,
    economica boolean NOT NULL,
    voo_id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.reserva OWNER TO yumnwbtj;

--
-- Name: reserva_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_id_seq OWNER TO yumnwbtj;

--
-- Name: reserva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.reserva_id_seq OWNED BY public.reserva.id;


--
-- Name: voo; Type: TABLE; Schema: public; Owner: yumnwbtj
--

CREATE TABLE public.voo (
    id integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    aviao_id integer NOT NULL,
    piloto_id integer NOT NULL,
    companhia_id integer NOT NULL,
    origem_id integer NOT NULL,
    destino_id integer NOT NULL,
    chegada timestamp without time zone,
    partida timestamp without time zone
);


ALTER TABLE public.voo OWNER TO yumnwbtj;

--
-- Name: voo_id_seq; Type: SEQUENCE; Schema: public; Owner: yumnwbtj
--

CREATE SEQUENCE public.voo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voo_id_seq OWNER TO yumnwbtj;

--
-- Name: voo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yumnwbtj
--

ALTER SEQUENCE public.voo_id_seq OWNED BY public.voo.id;


--
-- Name: aviao id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.aviao ALTER COLUMN id SET DEFAULT nextval('public.aviao_id_seq'::regclass);


--
-- Name: cidade id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: companhia id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.companhia ALTER COLUMN id SET DEFAULT nextval('public.companhia_id_seq'::regclass);


--
-- Name: estado id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);


--
-- Name: piloto id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.piloto ALTER COLUMN id SET DEFAULT nextval('public.piloto_id_seq'::regclass);


--
-- Name: reserva id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.reserva ALTER COLUMN id SET DEFAULT nextval('public.reserva_id_seq'::regclass);


--
-- Name: voo id; Type: DEFAULT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo ALTER COLUMN id SET DEFAULT nextval('public.voo_id_seq'::regclass);


--
-- Data for Name: aviao; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.aviao (id, prefixoaero, capacidade, companhia_id) FROM stdin;
1	HS-XYZ	50	1
2	F-ABCD	40	2
\.


--
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.cidade (id, nome, estado_id) FROM stdin;
1	Afonso Cludio	8
2	gua Doce do Norte	8
3	guia Branca	8
4	Alegre	8
5	Alfredo Chaves	8
6	Alto Rio Novo	8
7	Anchieta	8
8	Apiac	8
9	Aracruz	8
10	Atilio Vivacqua	8
11	Baixo Guandu	8
12	Barra de So Francisco	8
13	Boa Esperana	8
14	Bom Jesus do Norte	8
15	Brejetuba	8
16	Cachoeiro de Itapemirim	8
17	Cariacica	8
18	Castelo	8
19	Colatina	8
20	Conceio da Barra	8
21	Conceio do Castelo	8
22	Divino de So Loureno	8
23	Domingos Martins	8
24	Dores do Rio Preto	8
25	Ecoporanga	8
26	Fundo	8
27	Governador Lindenberg	8
28	Guau	8
29	Guarapari	8
30	Ibatiba	8
31	Ibirau	8
32	Ibitirama	8
33	Iconha	8
34	Irupi	8
35	Itaguau	8
36	Itapemirim	8
37	Itarana	8
38	Ina	8
39	Jaguar	8
40	Jernimo Monteiro	8
41	Joo Neiva	8
42	Laranja da Terra	8
43	Linhares	8
44	Mantenpolis	8
45	Maratazes	8
46	Marechal Floriano	8
47	Marilndia	8
48	Mimoso do Sul	8
49	Montanha	8
50	Mucurici	8
51	Muniz Freire	8
52	Muqui	8
53	Nova Vencia	8
54	Pancas	8
55	Pedro Canrio	8
56	Pinheiros	8
57	Pima	8
58	Ponto Belo	8
59	Presidente Kennedy	8
60	Rio Bananal	8
61	Rio Novo do Sul	8
62	Santa Leopoldina	8
63	Santa Maria de Jetib	8
64	Santa Teresa	8
65	So Domingos do Norte	8
66	So Gabriel da Palha	8
67	So Jos do Calado	8
68	So Mateus	8
69	So Roque do Cana	8
70	Serra	8
71	Sooretama	8
72	Vargem Alta	8
73	Venda Nova do Imigrante	8
74	Viana	8
75	Vila Pavo	8
76	Vila Valrio	8
77	Vila Velha	8
78	Vitria	8
79	Acrelndia	1
80	Assis Brasil	1
81	Brasilia	1
82	Bujari	1
83	Capixaba	1
84	Cruzeiro do Sul	1
85	Epitaciolndia	1
86	Feij	1
87	Jordo	1
88	Mncio Lima	1
89	Manoel Urbano	1
90	Marechal Thaumaturgo	1
91	Plcido de Castro	1
92	Porto Acre	1
93	Porto Walter	1
94	Rio Branco	1
95	Rodrigues Alves	1
96	Santa Rosa do Purus	1
97	Sena Madureira	1
98	Senador Guiomard	1
99	Tarauac	1
100	Xapuri	1
101	gua Branca	2
102	Anadia	2
103	Arapiraca	2
104	Atalaia	2
105	Barra de Santo Antnio	2
106	Barra de So Miguel	2
107	Batalha	2
108	Belm	2
109	Belo Monte	2
110	Boca da Mata	2
111	Branquinha	2
112	Cacimbinhas	2
113	Cajueiro	2
114	Campestre	2
115	Campo Alegre	2
116	Campo Grande	2
117	Canapi	2
118	Capela	2
119	Carneiros	2
120	Ch Preta	2
121	Coit do Nia	2
122	Colnia Leopoldina	2
123	Coqueiro Seco	2
124	Coruripe	2
125	Crabas	2
126	Delmiro Gouveia	2
127	Dois Riachos	2
128	Estrela de Alagoas	2
129	Feira Grande	2
130	Feliz Deserto	2
131	Flexeiras	2
132	Girau do Ponciano	2
133	Ibateguara	2
134	Igaci	2
135	Igreja Nova	2
136	Inhapi	2
137	Jacar dos Homens	2
138	Jacupe	2
139	Japaratinga	2
140	Jaramataia	2
141	Jequi da Praia	2
142	Joaquim Gomes	2
143	Jundi	2
144	Junqueiro	2
145	Lagoa da Canoa	2
146	Limoeiro de Anadia	2
147	Macei	2
148	Major Isidoro	2
149	Mar Vermelho	2
150	Maragogi	2
151	Maravilha	2
152	Marechal Deodoro	2
153	Maribondo	2
154	Mata Grande	2
155	Matriz de Camaragibe	2
156	Messias	2
157	Minador do Negro	2
158	Monteirpolis	2
159	Murici	2
160	Novo Lino	2
161	Olho dgua das Flores	2
162	Olho dgua do Casado	2
163	Olho dgua Grande	2
164	Olivena	2
165	Ouro Branco	2
166	Palestina	2
167	Palmeira dos ndios	2
168	Po de Acar	2
169	Pariconha	2
170	Paripueira	2
171	Passo de Camaragibe	2
172	Paulo Jacinto	2
173	Penedo	2
174	Piaabuu	2
175	Pilar	2
176	Pindoba	2
177	Piranhas	2
178	Poo das Trincheiras	2
179	Porto Calvo	2
180	Porto de Pedras	2
181	Porto Real do Colgio	2
182	Quebrangulo	2
183	Rio Largo	2
184	Roteiro	2
185	Santa Luzia do Norte	2
186	Santana do Ipanema	2
187	Santana do Munda	2
188	So Brs	2
189	So Jos da Laje	2
190	So Jos da Tapera	2
191	So Lus do Quitunde	2
192	So Miguel dos Campos	2
193	So Miguel dos Milagres	2
194	So Sebastio	2
195	Satuba	2
196	Senador Rui Palmeira	2
197	Tanque dArca	2
198	Taquarana	2
199	Teotnio Vilela	2
200	Traipu	2
201	Unio dos Palmares	2
202	Viosa	2
203	Amap	4
204	Caloene	4
205	Cutias	4
206	Ferreira Gomes	4
207	Itaubal	4
208	Laranjal do Jari	4
209	Macap	4
210	Mazago	4
211	Oiapoque	4
212	Pedra Branca do Amapar	4
213	Porto Grande	4
214	Pracuba	4
215	Santana	4
216	Serra do Navio	4
217	Tartarugalzinho	4
218	Vitria do Jari	4
219	Alvares	3
220	Amatur	3
221	Anam	3
222	Anori	3
223	Apu	3
224	Atalaia do Norte	3
225	Autazes	3
226	Barcelos	3
227	Barreirinha	3
228	Benjamin Constant	3
229	Beruri	3
230	Boa Vista do Ramos	3
231	Boca do Acre	3
232	Borba	3
233	Caapiranga	3
234	Canutama	3
235	Carauari	3
236	Careiro	3
237	Careiro da Vrzea	3
238	Coari	3
239	Codajs	3
240	Eirunep	3
241	Envira	3
242	Fonte Boa	3
243	Guajar	3
244	Humait	3
245	Ipixuna	3
246	Iranduba	3
247	Itacoatiara	3
248	Itamarati	3
249	Itapiranga	3
250	Japur	3
251	Juru	3
252	Juta	3
253	Lbrea	3
254	Manacapuru	3
255	Manaquiri	3
256	Manaus	3
257	Manicor	3
258	Mara	3
259	Maus	3
260	Nhamund	3
261	Nova Olinda do Norte	3
262	Novo Airo	3
263	Novo Aripuan	3
264	Parintins	3
265	Pauini	3
266	Presidente Figueiredo	3
267	Rio Preto da Eva	3
268	Santa Isabel do Rio Negro	3
269	Santo Antnio do I	3
270	So Gabriel da Cachoeira	3
271	So Paulo de Olivena	3
272	So Sebastio do Uatum	3
273	Silves	3
274	Tabatinga	3
275	Tapau	3
276	Tef	3
277	Tonantins	3
278	Uarini	3
279	Urucar	3
280	Urucurituba	3
281	Abara	5
282	Abar	5
283	Acajutiba	5
284	Adustina	5
285	gua Fria	5
286	Aiquara	5
287	Alagoinhas	5
288	Alcobaa	5
289	Almadina	5
290	Amargosa	5
291	Amlia Rodrigues	5
292	Amrica Dourada	5
293	Anag	5
294	Andara	5
295	Andorinha	5
296	Angical	5
297	Anguera	5
298	Antas	5
299	Antnio Cardoso	5
300	Antnio Gonalves	5
301	Apor	5
302	Apuarema	5
303	Araas	5
304	Aracatu	5
305	Araci	5
306	Aramari	5
307	Arataca	5
308	Aratupe	5
309	Aurelino Leal	5
310	Baianpolis	5
311	Baixa Grande	5
312	Banza	5
313	Barra	5
314	Barra da Estiva	5
315	Barra do Choa	5
316	Barra do Mendes	5
317	Barra do Rocha	5
318	Barreiras	5
319	Barro Alto	5
320	Barro Preto (antigo Gov. Lomanto Jr.)	5
321	Barrocas	5
322	Belmonte	5
323	Belo Campo	5
324	Biritinga	5
325	Boa Nova	5
326	Boa Vista do Tupim	5
327	Bom Jesus da Lapa	5
328	Bom Jesus da Serra	5
329	Boninal	5
330	Bonito	5
331	Boquira	5
332	Botupor	5
333	Brejes	5
334	Brejolndia	5
335	Brotas de Macabas	5
336	Brumado	5
337	Buerarema	5
338	Buritirama	5
339	Caatiba	5
340	Cabaceiras do Paraguau	5
341	Cachoeira	5
342	Cacul	5
343	Cam	5
344	Caetanos	5
345	Caetit	5
346	Cafarnaum	5
347	Cairu	5
348	Caldeiro Grande	5
349	Camacan	5
350	Camaari	5
351	Camamu	5
352	Campo Alegre de Lourdes	5
353	Campo Formoso	5
354	Canpolis	5
355	Canarana	5
356	Canavieiras	5
357	Candeal	5
358	Candeias	5
359	Candiba	5
360	Cndido Sales	5
361	Cansano	5
362	Canudos	5
363	Capela do Alto Alegre	5
364	Capim Grosso	5
365	Carabas	5
366	Caravelas	5
367	Cardeal da Silva	5
368	Carinhanha	5
369	Casa Nova	5
370	Castro Alves	5
371	Catolndia	5
372	Catu	5
373	Caturama	5
374	Central	5
375	Chorroch	5
376	Ccero Dantas	5
377	Cip	5
378	Coaraci	5
379	Cocos	5
380	Conceio da Feira	5
381	Conceio do Almeida	5
382	Conceio do Coit	5
383	Conceio do Jacupe	5
384	Conde	5
385	Condeba	5
386	Contendas do Sincor	5
387	Corao de Maria	5
388	Cordeiros	5
389	Coribe	5
390	Coronel Joo S	5
391	Correntina	5
392	Cotegipe	5
393	Cravolndia	5
394	Crispolis	5
395	Cristpolis	5
396	Cruz das Almas	5
397	Cura	5
398	Drio Meira	5
399	Dias dvila	5
400	Dom Baslio	5
401	Dom Macedo Costa	5
402	Elsio Medrado	5
403	Encruzilhada	5
404	Entre Rios	5
405	rico Cardoso	5
406	Esplanada	5
407	Euclides da Cunha	5
408	Eunpolis	5
409	Ftima	5
410	Feira da Mata	5
411	Feira de Santana	5
412	Filadlfia	5
413	Firmino Alves	5
414	Floresta Azul	5
415	Formosa do Rio Preto	5
416	Gandu	5
417	Gavio	5
418	Gentio do Ouro	5
419	Glria	5
420	Gongogi	5
421	Governador Mangabeira	5
422	Guajeru	5
423	Guanambi	5
424	Guaratinga	5
425	Helipolis	5
426	Iau	5
427	Ibiassuc	5
428	Ibicara	5
429	Ibicoara	5
430	Ibicu	5
431	Ibipeba	5
432	Ibipitanga	5
433	Ibiquera	5
434	Ibirapitanga	5
435	Ibirapu	5
436	Ibirataia	5
437	Ibitiara	5
438	Ibitit	5
439	Ibotirama	5
440	Ichu	5
441	Igapor	5
442	Igrapina	5
443	Igua	5
444	Ilhus	5
445	Inhambupe	5
446	Ipecaet	5
447	Ipia	5
448	Ipir	5
449	Ipupiara	5
450	Irajuba	5
451	Iramaia	5
452	Iraquara	5
453	Irar	5
454	Irec	5
455	Itabela	5
456	Itaberaba	5
457	Itabuna	5
458	Itacar	5
459	Itaet	5
460	Itagi	5
461	Itagib	5
462	Itagimirim	5
463	Itaguau da Bahia	5
464	Itaju do Colnia	5
465	Itajupe	5
466	Itamaraju	5
467	Itamari	5
468	Itamb	5
469	Itanagra	5
470	Itanhm	5
471	Itaparica	5
472	Itap	5
473	Itapebi	5
474	Itapetinga	5
475	Itapicuru	5
476	Itapitanga	5
477	Itaquara	5
478	Itarantim	5
479	Itatim	5
480	Itiruu	5
481	Itiba	5
482	Itoror	5
483	Ituau	5
484	Ituber	5
485	Iui	5
486	Jaborandi	5
487	Jacaraci	5
488	Jacobina	5
489	Jaguaquara	5
490	Jaguarari	5
491	Jaguaripe	5
492	Jandara	5
493	Jequi	5
494	Jeremoabo	5
495	Jiquiri	5
496	Jitana	5
497	Joo Dourado	5
498	Juazeiro	5
499	Jucuruu	5
500	Jussara	5
501	Jussari	5
502	Jussiape	5
503	Lafaiete Coutinho	5
504	Lagoa Real	5
505	Laje	5
506	Lajedo	5
507	Lajedinho	5
508	Lajedo do Tabocal	5
509	Lamaro	5
510	Lapo	5
511	Lauro de Freitas	5
512	Lenis	5
513	Licnio de Almeida	5
514	Livramento de Nossa Senhora	5
515	Lus Eduardo Magalhes	5
516	Macajuba	5
517	Macarani	5
518	Macabas	5
519	Macurur	5
520	Madre de Deus	5
521	Maetinga	5
522	Maiquinique	5
523	Mairi	5
524	Malhada	5
525	Malhada de Pedras	5
526	Manoel Vitorino	5
527	Mansido	5
528	Maracs	5
529	Maragogipe	5
530	Mara	5
531	Marcionlio Souza	5
532	Mascote	5
533	Mata de So Joo	5
534	Matina	5
535	Medeiros Neto	5
536	Miguel Calmon	5
537	Milagres	5
538	Mirangaba	5
539	Mirante	5
540	Monte Santo	5
541	Morpar	5
542	Morro do Chapu	5
543	Mortugaba	5
544	Mucug	5
545	Mucuri	5
546	Mulungu do Morro	5
547	Mundo Novo	5
548	Muniz Ferreira	5
549	Muqum de So Francisco	5
550	Muritiba	5
551	Mutupe	5
552	Nazar	5
553	Nilo Peanha	5
554	Nordestina	5
555	Nova Cana	5
556	Nova Ftima	5
557	Nova Ibi	5
558	Nova Itarana	5
559	Nova Redeno	5
560	Nova Soure	5
561	Nova Viosa	5
562	Novo Horizonte	5
563	Novo Triunfo	5
564	Olindina	5
565	Oliveira dos Brejinhos	5
566	Ouriangas	5
567	Ourolndia	5
568	Palmas de Monte Alto	5
569	Palmeiras	5
570	Paramirim	5
571	Paratinga	5
572	Paripiranga	5
573	Pau Brasil	5
574	Paulo Afonso	5
575	P de Serra	5
576	Pedro	5
577	Pedro Alexandre	5
578	Piat	5
579	Pilo Arcado	5
580	Pinda	5
581	Pindobau	5
582	Pintadas	5
583	Pira do Norte	5
584	Pirip	5
585	Piritiba	5
586	Planaltino	5
587	Planalto	5
588	Poes	5
589	Pojuca	5
590	Ponto Novo	5
591	Porto Seguro	5
592	Potiragu	5
593	Prado	5
594	Presidente Dutra	5
595	Presidente Jnio Quadros	5
596	Presidente Tancredo Neves	5
597	Queimadas	5
598	Quijingue	5
599	Quixabeira	5
600	Rafael Jambeiro	5
601	Remanso	5
602	Retirolndia	5
603	Riacho das Neves	5
604	Riacho do Jacupe	5
605	Riacho de Santana	5
606	Ribeira do Amparo	5
607	Ribeira do Pombal	5
608	Ribeiro do Largo	5
609	Rio de Contas	5
610	Rio do Antnio	5
611	Rio do Pires	5
612	Rio Real	5
613	Rodelas	5
614	Ruy Barbosa	5
615	Salinas da Margarida	5
616	Salvador	5
617	Santa Brbara	5
618	Santa Brgida	5
619	Santa Cruz Cabrlia	5
620	Santa Cruz da Vitria	5
621	Santa Ins	5
622	Santa Luzia	5
623	Santa Maria da Vitria	5
624	Santa Rita de Cssia	5
625	Santa Teresinha	5
626	Santaluz	5
627	Santana	5
628	Santanpolis	5
629	Santo Amaro	5
630	Santo Antnio de Jesus	5
631	Santo Estvo	5
632	So Desidrio	5
633	So Domingos	5
634	So Felipe	5
635	So Flix	5
636	So Flix do Coribe	5
637	So Francisco do Conde	5
638	So Gabriel	5
639	So Gonalo dos Campos	5
640	So Jos da Vitria	5
641	So Jos do Jacupe	5
642	So Miguel das Matas	5
643	So Sebastio do Pass	5
644	Sapeau	5
645	Stiro Dias	5
646	Saubara	5
647	Sade	5
648	Seabra	5
649	Sebastio Laranjeiras	5
650	Senhor do Bonfim	5
651	Sento S	5
652	Serra do Ramalho	5
653	Serra Dourada	5
654	Serra Preta	5
655	Serrinha	5
656	Serrolndia	5
657	Simes Filho	5
658	Stio do Mato	5
659	Stio do Quinto	5
660	Sobradinho	5
661	Souto Soares	5
662	Tabocas do Brejo Velho	5
663	Tanhau	5
664	Tanque Novo	5
665	Tanquinho	5
666	Tapero	5
667	Tapiramut	5
668	Teixeira de Freitas	5
669	Teodoro Sampaio	5
670	Teofilndia	5
671	Teolndia	5
672	Terra Nova	5
673	Tremedal	5
674	Tucano	5
675	Uau	5
676	Ubara	5
677	Ubaitaba	5
678	Ubat	5
679	Uiba	5
680	Umburanas	5
681	Una	5
682	Urandi	5
683	Uruuca	5
684	Utinga	5
685	Valena	5
686	Valente	5
687	Vrzea da Roa	5
688	Vrzea do Poo	5
689	Vrzea Nova	5
690	Varzedo	5
691	Vera Cruz	5
692	Vereda	5
693	Vitria da Conquista	5
694	Wagner	5
695	Wanderley	5
696	Wenceslau Guimares	5
697	Xique-Xique	5
698	Abaiara	6
699	Acarape	6
700	Acara	6
701	Acopiara	6
702	Aiuaba	6
703	Alcntaras	6
704	Altaneira	6
705	Alto Santo	6
706	Amontada	6
707	Antonina do Norte	6
708	Apuiars	6
709	Aquiraz	6
710	Aracati	6
711	Aracoiaba	6
712	Ararend	6
713	Araripe	6
714	Aratuba	6
715	Arneiroz	6
716	Assar	6
717	Aurora	6
718	Baixio	6
719	Banabui	6
720	Barbalha	6
721	Barreira	6
722	Barro	6
723	Barroquinha	6
724	Baturit	6
725	Beberibe	6
726	Bela Cruz	6
727	Boa Viagem	6
728	Brejo Santo	6
729	Camocim	6
730	Campos Sales	6
731	Canind	6
732	Capistrano	6
733	Caridade	6
734	Carir	6
735	Caririau	6
736	Caris	6
737	Carnaubal	6
738	Cascavel	6
739	Catarina	6
740	Catunda	6
741	Caucaia	6
742	Cedro	6
743	Chaval	6
744	Chor	6
745	Chorozinho	6
746	Corea	6
747	Crates	6
748	Crato	6
749	Croat	6
750	Cruz	6
751	Deputado Irapuan Pinheiro	6
752	Erer	6
753	Eusbio	6
754	Farias Brito	6
755	Forquilha	6
756	Fortaleza	6
757	Fortim	6
758	Frecheirinha	6
759	General Sampaio	6
760	Graa	6
761	Granja	6
762	Granjeiro	6
763	Groaras	6
764	Guaiba	6
765	Guaraciaba do Norte	6
766	Guaramiranga	6
767	Hidrolndia	6
768	Horizonte	6
769	Ibaretama	6
770	Ibiapina	6
771	Ibicuitinga	6
772	Icapu	6
773	Ic	6
774	Iguatu	6
775	Independncia	6
776	Ipaporanga	6
777	Ipaumirim	6
778	Ipu	6
779	Ipueiras	6
780	Iracema	6
781	Irauuba	6
782	Itaiaba	6
783	Itaitinga	6
784	Itapag	6
785	Itapipoca	6
786	Itapina	6
787	Itarema	6
788	Itatira	6
789	Jaguaretama	6
790	Jaguaribara	6
791	Jaguaribe	6
792	Jaguaruana	6
793	Jardim	6
794	Jati	6
795	Jijoca de Jericoacoara	6
796	Juazeiro do Norte	6
797	Jucs	6
798	Lavras da Mangabeira	6
799	Limoeiro do Norte	6
800	Madalena	6
801	Maracana	6
802	Maranguape	6
803	Marco	6
804	Martinpole	6
805	Massap	6
806	Mauriti	6
807	Meruoca	6
808	Milagres	6
809	Milh	6
810	Mirama	6
811	Misso Velha	6
812	Mombaa	6
813	Monsenhor Tabosa	6
814	Morada Nova	6
815	Morajo	6
816	Morrinhos	6
817	Mucambo	6
818	Mulungu	6
819	Nova Olinda	6
820	Nova Russas	6
821	Novo Oriente	6
822	Ocara	6
823	Ors	6
824	Pacajus	6
825	Pacatuba	6
826	Pacoti	6
827	Pacuj	6
828	Palhano	6
829	Palmcia	6
830	Paracuru	6
831	Paraipaba	6
832	Parambu	6
833	Paramoti	6
834	Pedra Branca	6
835	Penaforte	6
836	Pentecoste	6
837	Pereiro	6
838	Pindoretama	6
839	Piquet Carneiro	6
840	Pires Ferreira	6
841	Poranga	6
842	Porteiras	6
843	Potengi	6
844	Potiretama	6
845	Quiterianpolis	6
846	Quixad	6
847	Quixel	6
848	Quixeramobim	6
849	Quixer	6
850	Redeno	6
851	Reriutaba	6
852	Russas	6
853	Saboeiro	6
854	Salitre	6
855	Santa Quitria	6
856	Santana do Acara	6
857	Santana do Cariri	6
858	So Benedito	6
859	So Gonalo do Amarante	6
860	So Joo do Jaguaribe	6
861	So Lus do Curu	6
862	Senador Pompeu	6
863	Senador S	6
864	Sobral	6
865	Solonpole	6
866	Tabuleiro do Norte	6
867	Tamboril	6
868	Tarrafas	6
869	Tau	6
870	Tejuuoca	6
871	Tiangu	6
872	Trairi	6
873	Tururu	6
874	Ubajara	6
875	Umari	6
876	Umirim	6
877	Uruburetama	6
878	Uruoca	6
879	Varjota	6
880	Vrzea Alegre	6
881	Viosa do Cear	6
882	Braslia	7
883	Abadia de Gois	9
884	Abadinia	9
885	Acrena	9
886	Adelndia	9
887	gua Fria de Gois	9
888	gua Limpa	9
889	guas Lindas de Gois	9
890	Alexnia	9
891	Alondia	9
892	Alto Horizonte	9
893	Alto Paraso de Gois	9
894	Alvorada do Norte	9
895	Amaralina	9
896	Americano do Brasil	9
897	Amorinpolis	9
898	Anpolis	9
899	Anhanguera	9
900	Anicuns	9
901	Aparecida de Goinia	9
902	Aparecida do Rio Doce	9
903	Apor	9
904	Arau	9
905	Aragaras	9
906	Aragoinia	9
907	Araguapaz	9
908	Arenpolis	9
909	Aruan	9
910	Aurilndia	9
911	Avelinpolis	9
912	Baliza	9
913	Barro Alto	9
914	Bela Vista de Gois	9
915	Bom Jardim de Gois	9
916	Bom Jesus de Gois	9
917	Bonfinpolis	9
918	Bonpolis	9
919	Brazabrantes	9
920	Britnia	9
921	Buriti Alegre	9
922	Buriti de Gois	9
923	Buritinpolis	9
924	Cabeceiras	9
925	Cachoeira Alta	9
926	Cachoeira de Gois	9
927	Cachoeira Dourada	9
928	Cau	9
929	Caiapnia	9
930	Caldas Novas	9
931	Caldazinha	9
932	Campestre de Gois	9
933	Campinau	9
934	Campinorte	9
935	Campo Alegre de Gois	9
936	Campo Limpo de Gois	9
937	Campos Belos	9
938	Campos Verdes	9
939	Carmo do Rio Verde	9
940	Castelndia	9
941	Catalo	9
942	Catura	9
943	Cavalcante	9
944	Ceres	9
945	Cezarina	9
946	Chapado do Cu	9
947	Cidade Ocidental	9
948	Cocalzinho de Gois	9
949	Colinas do Sul	9
950	Crrego do Ouro	9
951	Corumb de Gois	9
952	Corumbaba	9
953	Cristalina	9
954	Cristianpolis	9
955	Crixs	9
956	Cromnia	9
957	Cumari	9
958	Damianpolis	9
959	Damolndia	9
960	Davinpolis	9
961	Diorama	9
962	Divinpolis de Gois	9
963	Doverlndia	9
964	Edealina	9
965	Edia	9
966	Estrela do Norte	9
967	Faina	9
968	Fazenda Nova	9
969	Firminpolis	9
970	Flores de Gois	9
971	Formosa	9
972	Formoso	9
973	Gameleira de Gois	9
974	Goianpolis	9
975	Goiandira	9
976	Goiansia	9
977	Goinia	9
978	Goianira	9
979	Gois	9
980	Goiatuba	9
981	Gouvelndia	9
982	Guap	9
983	Guarata	9
984	Guarani de Gois	9
985	Guarinos	9
986	Heitora	9
987	Hidrolndia	9
988	Hidrolina	9
989	Iaciara	9
990	Inaciolndia	9
991	Indiara	9
992	Inhumas	9
993	Ipameri	9
994	Ipiranga de Gois	9
995	Ipor	9
996	Israelndia	9
997	Itabera	9
998	Itaguari	9
999	Itaguaru	9
1000	Itaj	9
1001	Itapaci	9
1002	Itapirapu	9
1003	Itapuranga	9
1004	Itarum	9
1005	Itauu	9
1006	Itumbiara	9
1007	Ivolndia	9
1008	Jandaia	9
1009	Jaragu	9
1010	Jata	9
1011	Jaupaci	9
1012	Jespolis	9
1013	Jovinia	9
1014	Jussara	9
1015	Lagoa Santa	9
1016	Leopoldo de Bulhes	9
1017	Luzinia	9
1018	Mairipotaba	9
1019	Mamba	9
1020	Mara Rosa	9
1021	Marzago	9
1022	Matrinch	9
1023	Maurilndia	9
1024	Mimoso de Gois	9
1025	Minau	9
1026	Mineiros	9
1027	Moipor	9
1028	Monte Alegre de Gois	9
1029	Montes Claros de Gois	9
1030	Montividiu	9
1031	Montividiu do Norte	9
1032	Morrinhos	9
1033	Morro Agudo de Gois	9
1034	Mossmedes	9
1035	Mozarlndia	9
1036	Mundo Novo	9
1037	Mutunpolis	9
1038	Nazrio	9
1039	Nerpolis	9
1040	Niquelndia	9
1041	Nova Amrica	9
1042	Nova Aurora	9
1043	Nova Crixs	9
1044	Nova Glria	9
1045	Nova Iguau de Gois	9
1046	Nova Roma	9
1047	Nova Veneza	9
1048	Novo Brasil	9
1049	Novo Gama	9
1050	Novo Planalto	9
1051	Orizona	9
1052	Ouro Verde de Gois	9
1053	Ouvidor	9
1054	Padre Bernardo	9
1055	Palestina de Gois	9
1056	Palmeiras de Gois	9
1057	Palmelo	9
1058	Palminpolis	9
1059	Panam	9
1060	Paranaiguara	9
1061	Parana	9
1062	Perolndia	9
1063	Petrolina de Gois	9
1064	Pilar de Gois	9
1065	Piracanjuba	9
1066	Piranhas	9
1067	Pirenpolis	9
1068	Pires do Rio	9
1069	Planaltina	9
1070	Pontalina	9
1071	Porangatu	9
1072	Porteiro	9
1073	Portelndia	9
1074	Posse	9
1075	Professor Jamil	9
1076	Quirinpolis	9
1077	Rialma	9
1078	Rianpolis	9
1079	Rio Quente	9
1080	Rio Verde	9
1081	Rubiataba	9
1082	Sanclerlndia	9
1083	Santa Brbara de Gois	9
1084	Santa Cruz de Gois	9
1085	Santa F de Gois	9
1086	Santa Helena de Gois	9
1087	Santa Isabel	9
1088	Santa Rita do Araguaia	9
1089	Santa Rita do Novo Destino	9
1090	Santa Rosa de Gois	9
1091	Santa Tereza de Gois	9
1092	Santa Terezinha de Gois	9
1093	Santo Antnio da Barra	9
1094	Santo Antnio de Gois	9
1095	Santo Antnio do Descoberto	9
1096	So Domingos	9
1097	So Francisco de Gois	9
1098	So Joo dAliana	9
1099	So Joo da Parana	9
1100	So Lus de Montes Belos	9
1101	So Luz do Norte	9
1102	So Miguel do Araguaia	9
1103	So Miguel do Passa Quatro	9
1104	So Patrcio	9
1105	So Simo	9
1106	Senador Canedo	9
1107	Serranpolis	9
1108	Silvnia	9
1109	Simolndia	9
1110	Stio dAbadia	9
1111	Taquaral de Gois	9
1112	Teresina de Gois	9
1113	Terezpolis de Gois	9
1114	Trs Ranchos	9
1115	Trindade	9
1116	Trombas	9
1117	Turvnia	9
1118	Turvelndia	9
1119	Uirapuru	9
1120	Uruau	9
1121	Uruana	9
1122	Uruta	9
1123	Valparaso de Gois	9
1124	Varjo	9
1125	Vianpolis	9
1126	Vicentinpolis	9
1127	Vila Boa	9
1128	Vila Propcio	9
1129	Aailndia	10
1130	Afonso Cunha	10
1131	gua Doce do Maranho	10
1132	Alcntara	10
1133	Aldeias Altas	10
1134	Altamira do Maranho	10
1135	Alto Alegre do Maranho	10
1136	Alto Alegre do Pindar	10
1137	Alto Parnaba	10
1138	Amap do Maranho	10
1139	Amarante do Maranho	10
1140	Anajatuba	10
1141	Anapurus	10
1142	Apicum-Au	10
1143	Araguan	10
1144	Araioses	10
1145	Arame	10
1146	Arari	10
1147	Axix	10
1148	Bacabal	10
1149	Bacabeira	10
1150	Bacuri	10
1151	Bacurituba	10
1152	Balsas	10
1153	Baro de Graja	10
1154	Barra do Corda	10
1155	Barreirinhas	10
1156	Bela Vista do Maranho	10
1157	Belgua	10
1158	Benedito Leite	10
1159	Bequimo	10
1160	Bernardo do Mearim	10
1161	Boa Vista do Gurupi	10
1162	Bom Jardim	10
1163	Bom Jesus das Selvas	10
1164	Bom Lugar	10
1165	Brejo	10
1166	Brejo de Areia	10
1167	Buriti	10
1168	Buriti Bravo	10
1169	Buriticupu	10
1170	Buritirana	10
1171	Cachoeira Grande	10
1172	Cajapi	10
1173	Cajari	10
1174	Campestre do Maranho	10
1175	Cndido Mendes	10
1176	Cantanhede	10
1177	Capinzal do Norte	10
1178	Carolina	10
1179	Carutapera	10
1180	Caxias	10
1181	Cedral	10
1182	Central do Maranho	10
1183	Centro do Guilherme	10
1184	Centro Novo do Maranho	10
1185	Chapadinha	10
1186	Cidelndia	10
1187	Cod	10
1188	Coelho Neto	10
1189	Colinas	10
1190	Conceio do Lago-Au	10
1191	Coroat	10
1192	Cururupu	10
1193	Davinpolis	10
1194	Dom Pedro	10
1195	Duque Bacelar	10
1196	Esperantinpolis	10
1197	Estreito	10
1198	Feira Nova do Maranho	10
1199	Fernando Falco	10
1200	Formosa da Serra Negra	10
1201	Fortaleza dos Nogueiras	10
1202	Fortuna	10
1203	Godofredo Viana	10
1204	Gonalves Dias	10
1205	Governador Archer	10
1206	Governador Edison Lobo	10
1207	Governador Eugnio Barros	10
1208	Governador Luiz Rocha	10
1209	Governador Newton Bello	10
1210	Governador Nunes Freire	10
1211	Graa Aranha	10
1212	Graja	10
1213	Guimares	10
1214	Humberto de Campos	10
1215	Icatu	10
1216	Igarap do Meio	10
1217	Igarap Grande	10
1218	Imperatriz	10
1219	Itaipava do Graja	10
1220	Itapecuru Mirim	10
1221	Itinga do Maranho	10
1222	Jatob	10
1223	Jenipapo dos Vieiras	10
1224	Joo Lisboa	10
1225	Joselndia	10
1226	Junco do Maranho	10
1227	Lago da Pedra	10
1228	Lago do Junco	10
1229	Lago dos Rodrigues	10
1230	Lago Verde	10
1231	Lagoa do Mato	10
1232	Lagoa Grande do Maranho	10
1233	Lajeado Novo	10
1234	Lima Campos	10
1235	Loreto	10
1236	Lus Domingues	10
1237	Magalhes de Almeida	10
1238	Maracaum	10
1239	Maraj do Sena	10
1240	Maranhozinho	10
1241	Mata Roma	10
1242	Matinha	10
1243	Mates	10
1244	Mates do Norte	10
1245	Milagres do Maranho	10
1246	Mirador	10
1247	Miranda do Norte	10
1248	Mirinzal	10
1249	Mono	10
1250	Montes Altos	10
1251	Morros	10
1252	Nina Rodrigues	10
1253	Nova Colinas	10
1254	Nova Iorque	10
1255	Nova Olinda do Maranho	10
1256	Olho dgua das Cunhs	10
1257	Olinda Nova do Maranho	10
1258	Pao do Lumiar	10
1259	Palmeirndia	10
1260	Paraibano	10
1261	Parnarama	10
1262	Passagem Franca	10
1263	Pastos Bons	10
1264	Paulino Neves	10
1265	Paulo Ramos	10
1266	Pedreiras	10
1267	Pedro do Rosrio	10
1268	Penalva	10
1269	Peri Mirim	10
1270	Peritor	10
1271	Pindar-Mirim	10
1272	Pinheiro	10
1273	Pio XII	10
1274	Pirapemas	10
1275	Poo de Pedras	10
1276	Porto Franco	10
1277	Porto Rico do Maranho	10
1278	Presidente Dutra	10
1279	Presidente Juscelino	10
1280	Presidente Mdici	10
1281	Presidente Sarney	10
1282	Presidente Vargas	10
1283	Primeira Cruz	10
1284	Raposa	10
1285	Riacho	10
1286	Ribamar Fiquene	10
1287	Rosrio	10
1288	Sambaba	10
1289	Santa Filomena do Maranho	10
1290	Santa Helena	10
1291	Santa Ins	10
1292	Santa Luzia	10
1293	Santa Luzia do Paru	10
1294	Santa Quitria do Maranho	10
1295	Santa Rita	10
1296	Santana do Maranho	10
1297	Santo Amaro do Maranho	10
1298	Santo Antnio dos Lopes	10
1299	So Benedito do Rio Preto	10
1300	So Bento	10
1301	So Bernardo	10
1302	So Domingos do Azeito	10
1303	So Domingos do Maranho	10
1304	So Flix de Balsas	10
1305	So Francisco do Brejo	10
1306	So Francisco do Maranho	10
1307	So Joo Batista	10
1308	So Joo do Car	10
1309	So Joo do Paraso	10
1310	So Joo do Soter	10
1311	So Joo dos Patos	10
1312	So Jos de Ribamar	10
1313	So Jos dos Baslios	10
1314	So Lus	10
1315	So Lus Gonzaga do Maranho	10
1316	So Mateus do Maranho	10
1317	So Pedro da gua Branca	10
1318	So Pedro dos Crentes	10
1319	So Raimundo das Mangabeiras	10
1320	So Raimundo do Doca Bezerra	10
1321	So Roberto	10
1322	So Vicente Ferrer	10
1323	Satubinha	10
1324	Senador Alexandre Costa	10
1325	Senador La Rocque	10
1326	Serrano do Maranho	10
1327	Stio Novo	10
1328	Sucupira do Norte	10
1329	Sucupira do Riacho	10
1330	Tasso Fragoso	10
1331	Timbiras	10
1332	Timon	10
1333	Trizidela do Vale	10
1334	Tufilndia	10
1335	Tuntum	10
1336	Turiau	10
1337	Turilndia	10
1338	Tutia	10
1339	Urbano Santos	10
1340	Vargem Grande	10
1341	Viana	10
1342	Vila Nova dos Martrios	10
1343	Vitria do Mearim	10
1344	Vitorino Freire	10
1345	Z Doca	10
1346	Acorizal	13
1347	gua Boa	13
1348	Alta Floresta	13
1349	Alto Araguaia	13
1350	Alto Boa Vista	13
1351	Alto Garas	13
1352	Alto Paraguai	13
1353	Alto Taquari	13
1354	Apiacs	13
1355	Araguaiana	13
1356	Araguainha	13
1357	Araputanga	13
1358	Arenpolis	13
1359	Aripuan	13
1360	Baro de Melgao	13
1361	Barra do Bugres	13
1362	Barra do Garas	13
1363	Bom Jesus do Araguaia	13
1364	Brasnorte	13
1365	Cceres	13
1366	Campinpolis	13
1367	Campo Novo do Parecis	13
1368	Campo Verde	13
1369	Campos de Jlio	13
1370	Canabrava do Norte	13
1371	Canarana	13
1372	Carlinda	13
1373	Castanheira	13
1374	Chapada dos Guimares	13
1375	Cludia	13
1376	Cocalinho	13
1377	Colder	13
1378	Colniza	13
1379	Comodoro	13
1380	Confresa	13
1381	Conquista dOeste	13
1382	Cotriguau	13
1383	Cuiab	13
1384	Curvelndia	13
1385	Curvelndia	13
1386	Denise	13
1387	Diamantino	13
1388	Dom Aquino	13
1389	Feliz Natal	13
1390	Figueirpolis dOeste	13
1391	Gacha do Norte	13
1392	General Carneiro	13
1393	Glria dOeste	13
1394	Guarant do Norte	13
1395	Guiratinga	13
1396	Indiava	13
1397	Ipiranga do Norte	13
1398	Itanhang	13
1399	Itaba	13
1400	Itiquira	13
1401	Jaciara	13
1402	Jangada	13
1403	Jauru	13
1404	Juara	13
1405	Juna	13
1406	Juruena	13
1407	Juscimeira	13
1408	Lambari dOeste	13
1409	Lucas do Rio Verde	13
1410	Lucira	13
1411	Marcelndia	13
1412	Matup	13
1413	Mirassol dOeste	13
1414	Nobres	13
1415	Nortelndia	13
1416	Nossa Senhora do Livramento	13
1417	Nova Bandeirantes	13
1418	Nova Brasilndia	13
1419	Nova Cana do Norte	13
1420	Nova Guarita	13
1421	Nova Lacerda	13
1422	Nova Marilndia	13
1423	Nova Maring	13
1424	Nova Monte verde	13
1425	Nova Mutum	13
1426	Nova Olmpia	13
1427	Nova Santa Helena	13
1428	Nova Ubirat	13
1429	Nova Xavantina	13
1430	Novo Horizonte do Norte	13
1431	Novo Mundo	13
1432	Novo Santo Antnio	13
1433	Novo So Joaquim	13
1434	Paranata	13
1435	Paranatinga	13
1436	Pedra Preta	13
1437	Peixoto de Azevedo	13
1438	Planalto da Serra	13
1439	Pocon	13
1440	Pontal do Araguaia	13
1441	Ponte Branca	13
1442	Pontes e Lacerda	13
1443	Porto Alegre do Norte	13
1444	Porto dos Gachos	13
1445	Porto Esperidio	13
1446	Porto Estrela	13
1447	Poxoro	13
1448	Primavera do Leste	13
1449	Querncia	13
1450	Reserva do Cabaal	13
1451	Ribeiro Cascalheira	13
1452	Ribeirozinho	13
1453	Rio Branco	13
1454	Rondolndia	13
1455	Rondonpolis	13
1456	Rosrio Oeste	13
1457	Salto do Cu	13
1458	Santa Carmem	13
1459	Santa Cruz do Xingu	13
1460	Santa Rita do Trivelato	13
1461	Santa Terezinha	13
1462	Santo Afonso	13
1463	Santo Antnio do Leste	13
1464	Santo Antnio do Leverger	13
1465	So Flix do Araguaia	13
1466	So Jos do Povo	13
1467	So Jos do Rio Claro	13
1468	So Jos do Xingu	13
1469	So Jos dos Quatro Marcos	13
1470	So Pedro da Cipa	13
1471	Sapezal	13
1472	Serra Nova Dourada	13
1473	Sinop	13
1474	Sorriso	13
1475	Tabapor	13
1476	Tangar da Serra	13
1477	Tapurah	13
1478	Terra Nova do Norte	13
1479	Tesouro	13
1480	Torixoru	13
1481	Unio do Sul	13
1482	Vale de So Domingos	13
1483	Vrzea Grande	13
1484	Vera	13
1485	Vila Bela da Santssima Trindade	13
1486	Vila Rica	13
1487	gua Clara	12
1488	Alcinpolis	12
1489	Amamba	12
1490	Anastcio	12
1491	Anaurilndia	12
1492	Anglica	12
1493	Antnio Joo	12
1494	Aparecida do Taboado	12
1495	Aquidauana	12
1496	Aral Moreira	12
1497	Bandeirantes	12
1498	Bataguassu	12
1499	Bataipor	12
1500	Bela Vista	12
1501	Bodoquena	12
1502	Bonito	12
1503	Brasilndia	12
1504	Caarap	12
1505	Camapu	12
1506	Campo Grande	12
1507	Caracol	12
1508	Cassilndia	12
1509	Chapado do Sul	12
1510	Corguinho	12
1511	Coronel Sapucaia	12
1512	Corumb	12
1513	Costa Rica	12
1514	Coxim	12
1515	Deodpolis	12
1516	Dois Irmos do Buriti	12
1517	Douradina	12
1518	Dourados	12
1519	Eldorado	12
1520	Ftima do Sul	12
1521	Figueiro	12
1522	Glria de Dourados	12
1523	Guia Lopes da Laguna	12
1524	Iguatemi	12
1525	Inocncia	12
1526	Itapor	12
1527	Itaquira	12
1528	Ivinhema	12
1529	Japor	12
1530	Jaraguari	12
1531	Jardim	12
1532	Jate	12
1533	Juti	12
1534	Ladrio	12
1535	Laguna Carap	12
1536	Maracaju	12
1537	Miranda	12
1538	Mundo Novo	12
1539	Navira	12
1540	Nioaque	12
1541	Nova Alvorada do Sul	12
1542	Nova Andradina	12
1543	Novo Horizonte do Sul	12
1544	Paranaba	12
1545	Paranhos	12
1546	Pedro Gomes	12
1547	Ponta Por	12
1548	Porto Murtinho	12
1549	Ribas do Rio Pardo	12
1550	Rio Brilhante	12
1551	Rio Negro	12
1552	Rio Verde de Mato Grosso	12
1553	Rochedo	12
1554	Santa Rita do Pardo	12
1555	So Gabriel do Oeste	12
1556	Selvria	12
1557	Sete Quedas	12
1558	Sidrolndia	12
1559	Sonora	12
1560	Tacuru	12
1561	Taquarussu	12
1562	Terenos	12
1563	Trs Lagoas	12
1564	Vicentina	12
1565	Abadia dos Dourados	11
1566	Abaet	11
1567	Abre Campo	11
1568	Acaiaca	11
1569	Aucena	11
1570	gua Boa	11
1571	gua Comprida	11
1572	Aguanil	11
1573	guas Formosas	11
1574	guas Vermelhas	11
1575	Aimors	11
1576	Aiuruoca	11
1577	Alagoa	11
1578	Albertina	11
1579	Alm Paraba	11
1580	Alfenas	11
1581	Alfredo Vasconcelos	11
1582	Almenara	11
1583	Alpercata	11
1584	Alpinpolis	11
1585	Alterosa	11
1586	Alto Capara	11
1587	Alto Jequitib	11
1588	Alto Rio Doce	11
1589	Alvarenga	11
1590	Alvinpolis	11
1591	Alvorada de Minas	11
1592	Amparo do Serra	11
1593	Andradas	11
1594	Andrelndia	11
1595	Angelndia	11
1596	Antnio Carlos	11
1597	Antnio Dias	11
1598	Antnio Prado de Minas	11
1599	Araa	11
1600	Aracitaba	11
1601	Araua	11
1602	Araguari	11
1603	Arantina	11
1604	Araponga	11
1605	Arapor	11
1606	Arapu	11
1607	Arajos	11
1608	Arax	11
1609	Arceburgo	11
1610	Arcos	11
1611	Areado	11
1612	Argirita	11
1613	Aricanduva	11
1614	Arinos	11
1615	Astolfo Dutra	11
1616	Atalia	11
1617	Augusto de Lima	11
1618	Baependi	11
1619	Baldim	11
1620	Bambu	11
1621	Bandeira	11
1622	Bandeira do Sul	11
1623	Baro de Cocais	11
1624	Baro de Monte Alto	11
1625	Barbacena	11
1626	Barra Longa	11
1627	Barroso	11
1628	Bela Vista de Minas	11
1629	Belmiro Braga	11
1630	Belo Horizonte	11
1631	Belo Oriente	11
1632	Belo Vale	11
1633	Berilo	11
1634	Berizal	11
1635	Bertpolis	11
1636	Betim	11
1637	Bias Fortes	11
1638	Bicas	11
1639	Biquinhas	11
1640	Boa Esperana	11
1641	Bocaina de Minas	11
1642	Bocaiva	11
1643	Bom Despacho	11
1644	Bom Jardim de Minas	11
1645	Bom Jesus da Penha	11
1646	Bom Jesus do Amparo	11
1647	Bom Jesus do Galho	11
1648	Bom Repouso	11
1649	Bom Sucesso	11
1650	Bonfim	11
1651	Bonfinpolis de Minas	11
1652	Bonito de Minas	11
1653	Borda da Mata	11
1654	Botelhos	11
1655	Botumirim	11
1656	Brs Pires	11
1657	Brasilndia de Minas	11
1658	Braslia de Minas	11
1659	Braspolis	11
1660	Branas	11
1661	Brumadinho	11
1662	Bueno Brando	11
1663	Buenpolis	11
1664	Bugre	11
1665	Buritis	11
1666	Buritizeiro	11
1667	Cabeceira Grande	11
1668	Cabo Verde	11
1669	Cachoeira da Prata	11
1670	Cachoeira de Minas	11
1671	Cachoeira de Paje	11
1672	Cachoeira Dourada	11
1673	Caetanpolis	11
1674	Caet	11
1675	Caiana	11
1676	Cajuri	11
1677	Caldas	11
1678	Camacho	11
1679	Camanducaia	11
1680	Cambu	11
1681	Cambuquira	11
1682	Campanrio	11
1683	Campanha	11
1684	Campestre	11
1685	Campina Verde	11
1686	Campo Azul	11
1687	Campo Belo	11
1688	Campo do Meio	11
1689	Campo Florido	11
1690	Campos Altos	11
1691	Campos Gerais	11
1692	Cana Verde	11
1693	Cana	11
1694	Canpolis	11
1695	Candeias	11
1696	Cantagalo	11
1697	Capara	11
1698	Capela Nova	11
1699	Capelinha	11
1700	Capetinga	11
1701	Capim Branco	11
1702	Capinpolis	11
1703	Capito Andrade	11
1704	Capito Enas	11
1705	Capitlio	11
1706	Caputira	11
1707	Cara	11
1708	Caranaba	11
1709	Caranda	11
1710	Carangola	11
1711	Caratinga	11
1712	Carbonita	11
1713	Careau	11
1714	Carlos Chagas	11
1715	Carmsia	11
1716	Carmo da Cachoeira	11
1717	Carmo da Mata	11
1718	Carmo de Minas	11
1719	Carmo do Cajuru	11
1720	Carmo do Paranaba	11
1721	Carmo do Rio Claro	11
1722	Carmpolis de Minas	11
1723	Carneirinho	11
1724	Carrancas	11
1725	Carvalhpolis	11
1726	Carvalhos	11
1727	Casa Grande	11
1728	Cascalho Rico	11
1729	Cssia	11
1730	Cataguases	11
1731	Catas Altas	11
1732	Catas Altas da Noruega	11
1733	Catuji	11
1734	Catuti	11
1735	Caxambu	11
1736	Cedro do Abaet	11
1737	Central de Minas	11
1738	Centralina	11
1739	Chcara	11
1740	Chal	11
1741	Chapada do Norte	11
1742	Chapada Gacha	11
1743	Chiador	11
1744	Cipotnea	11
1745	Claraval	11
1746	Claro dos Poes	11
1747	Cludio	11
1748	Coimbra	11
1749	Coluna	11
1750	Comendador Gomes	11
1751	Comercinho	11
1752	Conceio da Aparecida	11
1753	Conceio da Barra de Minas	11
1754	Conceio das Alagoas	11
1755	Conceio das Pedras	11
1756	Conceio de Ipanema	11
1757	Conceio do Mato Dentro	11
1758	Conceio do Par	11
1759	Conceio do Rio Verde	11
1760	Conceio dos Ouros	11
1761	Cnego Marinho	11
1762	Confins	11
1763	Congonhal	11
1764	Congonhas	11
1765	Congonhas do Norte	11
1766	Conquista	11
1767	Conselheiro Lafaiete	11
1768	Conselheiro Pena	11
1769	Consolao	11
1770	Contagem	11
1771	Coqueiral	11
1772	Corao de Jesus	11
1773	Cordisburgo	11
1774	Cordislndia	11
1775	Corinto	11
1776	Coroaci	11
1777	Coromandel	11
1778	Coronel Fabriciano	11
1779	Coronel Murta	11
1780	Coronel Pacheco	11
1781	Coronel Xavier Chaves	11
1782	Crrego Danta	11
1783	Crrego do Bom Jesus	11
1784	Crrego Fundo	11
1785	Crrego Novo	11
1786	Couto de Magalhes de Minas	11
1787	Crislita	11
1788	Cristais	11
1789	Cristlia	11
1790	Cristiano Otoni	11
1791	Cristina	11
1792	Crucilndia	11
1793	Cruzeiro da Fortaleza	11
1794	Cruzlia	11
1795	Cuparaque	11
1796	Curral de Dentro	11
1797	Curvelo	11
1798	Datas	11
1799	Delfim Moreira	11
1800	Delfinpolis	11
1801	Delta	11
1802	Descoberto	11
1803	Desterro de Entre Rios	11
1804	Desterro do Melo	11
1805	Diamantina	11
1806	Diogo de Vasconcelos	11
1807	Dionsio	11
1808	Divinsia	11
1809	Divino	11
1810	Divino das Laranjeiras	11
1811	Divinolndia de Minas	11
1812	Divinpolis	11
1813	Divisa Alegre	11
1814	Divisa Nova	11
1815	Divispolis	11
1816	Dom Bosco	11
1817	Dom Cavati	11
1818	Dom Joaquim	11
1819	Dom Silvrio	11
1820	Dom Vioso	11
1821	Dona Eusbia	11
1822	Dores de Campos	11
1823	Dores de Guanhes	11
1824	Dores do Indai	11
1825	Dores do Turvo	11
1826	Dorespolis	11
1827	Douradoquara	11
1828	Durand	11
1829	Eli Mendes	11
1830	Engenheiro Caldas	11
1831	Engenheiro Navarro	11
1832	Entre Folhas	11
1833	Entre Rios de Minas	11
1834	Ervlia	11
1835	Esmeraldas	11
1836	Espera Feliz	11
1837	Espinosa	11
1838	Esprito Santo do Dourado	11
1839	Estiva	11
1840	Estrela Dalva	11
1841	Estrela do Indai	11
1842	Estrela do Sul	11
1843	Eugenpolis	11
1844	Ewbank da Cmara	11
1845	Extrema	11
1846	Fama	11
1847	Faria Lemos	11
1848	Felcio dos Santos	11
1849	Felisburgo	11
1850	Felixlndia	11
1851	Fernandes Tourinho	11
1852	Ferros	11
1853	Fervedouro	11
1854	Florestal	11
1855	Formiga	11
1856	Formoso	11
1857	Fortaleza de Minas	11
1858	Fortuna de Minas	11
1859	Francisco Badar	11
1860	Francisco Dumont	11
1861	Francisco S	11
1862	Franciscpolis	11
1863	Frei Gaspar	11
1864	Frei Inocncio	11
1865	Frei Lagonegro	11
1866	Fronteira	11
1867	Fronteira dos Vales	11
1868	Fruta de Leite	11
1869	Frutal	11
1870	Funilndia	11
1871	Galilia	11
1872	Gameleiras	11
1873	Glaucilndia	11
1874	Goiabeira	11
1875	Goian	11
1876	Gonalves	11
1877	Gonzaga	11
1878	Gouveia	11
1879	Governador Valadares	11
1880	Gro Mogol	11
1881	Grupiara	11
1882	Guanhes	11
1883	Guap	11
1884	Guaraciaba	11
1885	Guaraciama	11
1886	Guaransia	11
1887	Guarani	11
1888	Guarar	11
1889	Guarda-Mor	11
1890	Guaxup	11
1891	Guidoval	11
1892	Guimarnia	11
1893	Guiricema	11
1894	Gurinhat	11
1895	Heliodora	11
1896	Iapu	11
1897	Ibertioga	11
1898	Ibi	11
1899	Ibia	11
1900	Ibiracatu	11
1901	Ibiraci	11
1902	Ibirit	11
1903	Ibitira de Minas	11
1904	Ibituruna	11
1905	Icara de Minas	11
1906	Igarap	11
1907	Igaratinga	11
1908	Iguatama	11
1909	Ijaci	11
1910	Ilicnea	11
1911	Imb de Minas	11
1912	Inconfidentes	11
1913	Indaiabira	11
1914	Indianpolis	11
1915	Inga	11
1916	Inhapim	11
1917	Inhama	11
1918	Inimutaba	11
1919	Ipaba	11
1920	Ipanema	11
1921	Ipatinga	11
1922	Ipiau	11
1923	Ipuina	11
1924	Ira de Minas	11
1925	Itabira	11
1926	Itabirinha de Mantena	11
1927	Itabirito	11
1928	Itacambira	11
1929	Itacarambi	11
1930	Itaguara	11
1931	Itaip	11
1932	Itajub	11
1933	Itamarandiba	11
1934	Itamarati de Minas	11
1935	Itambacuri	11
1936	Itamb do Mato Dentro	11
1937	Itamogi	11
1938	Itamonte	11
1939	Itanhandu	11
1940	Itanhomi	11
1941	Itaobim	11
1942	Itapagipe	11
1943	Itapecerica	11
1944	Itapeva	11
1945	Itatiaiuu	11
1946	Ita de Minas	11
1947	Itana	11
1948	Itaverava	11
1949	Itinga	11
1950	Itueta	11
1951	Ituiutaba	11
1952	Itumirim	11
1953	Iturama	11
1954	Itutinga	11
1955	Jaboticatubas	11
1956	Jacinto	11
1957	Jacu	11
1958	Jacutinga	11
1959	Jaguarau	11
1960	Jaba	11
1961	Jampruca	11
1962	Janaba	11
1963	Januria	11
1964	Japaraba	11
1965	Japonvar	11
1966	Jeceaba	11
1967	Jenipapo de Minas	11
1968	Jequeri	11
1969	Jequita	11
1970	Jequitib	11
1971	Jequitinhonha	11
1972	Jesunia	11
1973	Joama	11
1974	Joansia	11
1975	Joo Monlevade	11
1976	Joo Pinheiro	11
1977	Joaquim Felcio	11
1978	Jordnia	11
1979	Jos Gonalves de Minas	11
1980	Jos Raydan	11
1981	Josenpolis	11
1982	Juatuba	11
1983	Juiz de Fora	11
1984	Juramento	11
1985	Juruaia	11
1986	Juvenlia	11
1987	Ladainha	11
1988	Lagamar	11
1989	Lagoa da Prata	11
1990	Lagoa dos Patos	11
1991	Lagoa Dourada	11
1992	Lagoa Formosa	11
1993	Lagoa Grande	11
1994	Lagoa Santa	11
1995	Lajinha	11
1996	Lambari	11
1997	Lamim	11
1998	Laranjal	11
1999	Lassance	11
2000	Lavras	11
2001	Leandro Ferreira	11
2002	Leme do Prado	11
2003	Leopoldina	11
2004	Liberdade	11
2005	Lima Duarte	11
2006	Limeira do Oeste	11
2007	Lontra	11
2008	Luisburgo	11
2009	Luislndia	11
2010	Luminrias	11
2011	Luz	11
2012	Machacalis	11
2013	Machado	11
2014	Madre de Deus de Minas	11
2015	Malacacheta	11
2016	Mamonas	11
2017	Manga	11
2018	Manhuau	11
2019	Manhumirim	11
2020	Mantena	11
2021	Mar de Espanha	11
2022	Maravilhas	11
2023	Maria da F	11
2024	Mariana	11
2025	Marilac	11
2026	Mrio Campos	11
2027	Marip de Minas	11
2028	Marliria	11
2029	Marmelpolis	11
2030	Martinho Campos	11
2031	Martins Soares	11
2032	Mata Verde	11
2033	Materlndia	11
2034	Mateus Leme	11
2035	Mathias Lobato	11
2036	Matias Barbosa	11
2037	Matias Cardoso	11
2038	Matip	11
2039	Mato Verde	11
2040	Matozinhos	11
2041	Matutina	11
2042	Medeiros	11
2043	Medina	11
2044	Mendes Pimentel	11
2045	Mercs	11
2046	Mesquita	11
2047	Minas Novas	11
2048	Minduri	11
2049	Mirabela	11
2050	Miradouro	11
2051	Mira	11
2052	Miravnia	11
2053	Moeda	11
2054	Moema	11
2055	Monjolos	11
2056	Monsenhor Paulo	11
2057	Montalvnia	11
2058	Monte Alegre de Minas	11
2059	Monte Azul	11
2060	Monte Belo	11
2061	Monte Carmelo	11
2062	Monte Formoso	11
2063	Monte Santo de Minas	11
2064	Monte Sio	11
2065	Montes Claros	11
2066	Montezuma	11
2067	Morada Nova de Minas	11
2068	Morro da Gara	11
2069	Morro do Pilar	11
2070	Munhoz	11
2071	Muria	11
2072	Mutum	11
2073	Muzambinho	11
2074	Nacip Raydan	11
2075	Nanuque	11
2076	Naque	11
2077	Natalndia	11
2078	Natrcia	11
2079	Nazareno	11
2080	Nepomuceno	11
2081	Ninheira	11
2082	Nova Belm	11
2083	Nova Era	11
2084	Nova Lima	11
2085	Nova Mdica	11
2086	Nova Ponte	11
2087	Nova Porteirinha	11
2088	Nova Resende	11
2089	Nova Serrana	11
2090	Nova Unio	11
2091	Novo Cruzeiro	11
2092	Novo Oriente de Minas	11
2093	Novorizonte	11
2094	Olaria	11
2095	Olhos-dgua	11
2096	Olmpio Noronha	11
2097	Oliveira	11
2098	Oliveira Fortes	11
2099	Ona de Pitangui	11
2100	Oratrios	11
2101	Oriznia	11
2102	Ouro Branco	11
2103	Ouro Fino	11
2104	Ouro Preto	11
2105	Ouro Verde de Minas	11
2106	Padre Carvalho	11
2107	Padre Paraso	11
2108	Pai Pedro	11
2109	Paineiras	11
2110	Pains	11
2111	Paiva	11
2112	Palma	11
2113	Palmpolis	11
2114	Papagaios	11
2115	Par de Minas	11
2116	Paracatu	11
2117	Paraguau	11
2118	Paraispolis	11
2119	Paraopeba	11
2120	Passa Quatro	11
2121	Passa Tempo	11
2122	Passabm	11
2123	Passa-Vinte	11
2124	Passos	11
2125	Patis	11
2126	Patos de Minas	11
2127	Patrocnio	11
2128	Patrocnio do Muria	11
2129	Paula Cndido	11
2130	Paulistas	11
2131	Pavo	11
2132	Peanha	11
2133	Pedra Azul	11
2134	Pedra Bonita	11
2135	Pedra do Anta	11
2136	Pedra do Indai	11
2137	Pedra Dourada	11
2138	Pedralva	11
2139	Pedras de Maria da Cruz	11
2140	Pedrinpolis	11
2141	Pedro Leopoldo	11
2142	Pedro Teixeira	11
2143	Pequeri	11
2144	Pequi	11
2145	Perdigo	11
2146	Perdizes	11
2147	Perdes	11
2148	Periquito	11
2149	Pescador	11
2150	Piau	11
2151	Piedade de Caratinga	11
2152	Piedade de Ponte Nova	11
2153	Piedade do Rio Grande	11
2154	Piedade dos Gerais	11
2155	Pimenta	11
2156	Pingo-dgua	11
2157	Pintpolis	11
2158	Piracema	11
2159	Pirajuba	11
2160	Piranga	11
2161	Piranguu	11
2162	Piranguinho	11
2163	Pirapetinga	11
2164	Pirapora	11
2165	Piraba	11
2166	Pitangui	11
2167	Piumhi	11
2168	Planura	11
2169	Poo Fundo	11
2170	Poos de Caldas	11
2171	Pocrane	11
2172	Pompu	11
2173	Ponte Nova	11
2174	Ponto Chique	11
2175	Ponto dos Volantes	11
2176	Porteirinha	11
2177	Porto Firme	11
2178	Pot	11
2179	Pouso Alegre	11
2180	Pouso Alto	11
2181	Prados	11
2182	Prata	11
2183	Pratpolis	11
2184	Pratinha	11
2185	Presidente Bernardes	11
2186	Presidente Juscelino	11
2187	Presidente Kubitschek	11
2188	Presidente Olegrio	11
2189	Prudente de Morais	11
2190	Quartel Geral	11
2191	Queluzito	11
2192	Raposos	11
2193	Raul Soares	11
2194	Recreio	11
2195	Reduto	11
2196	Resende Costa	11
2197	Resplendor	11
2198	Ressaquinha	11
2199	Riachinho	11
2200	Riacho dos Machados	11
2201	Ribeiro das Neves	11
2202	Ribeiro Vermelho	11
2203	Rio Acima	11
2204	Rio Casca	11
2205	Rio do Prado	11
2206	Rio Doce	11
2207	Rio Espera	11
2208	Rio Manso	11
2209	Rio Novo	11
2210	Rio Paranaba	11
2211	Rio Pardo de Minas	11
2212	Rio Piracicaba	11
2213	Rio Pomba	11
2214	Rio Preto	11
2215	Rio Vermelho	11
2216	Ritpolis	11
2217	Rochedo de Minas	11
2218	Rodeiro	11
2219	Romaria	11
2220	Rosrio da Limeira	11
2221	Rubelita	11
2222	Rubim	11
2223	Sabar	11
2224	Sabinpolis	11
2225	Sacramento	11
2226	Salinas	11
2227	Salto da Divisa	11
2228	Santa Brbara	11
2229	Santa Brbara do Leste	11
2230	Santa Brbara do Monte Verde	11
2231	Santa Brbara do Tugrio	11
2232	Santa Cruz de Minas	11
2233	Santa Cruz de Salinas	11
2234	Santa Cruz do Escalvado	11
2235	Santa Efignia de Minas	11
2236	Santa F de Minas	11
2237	Santa Helena de Minas	11
2238	Santa Juliana	11
2239	Santa Luzia	11
2240	Santa Margarida	11
2241	Santa Maria de Itabira	11
2242	Santa Maria do Salto	11
2243	Santa Maria do Suau	11
2244	Santa Rita de Caldas	11
2245	Santa Rita de Ibitipoca	11
2246	Santa Rita de Jacutinga	11
2247	Santa Rita de Minas	11
2248	Santa Rita do Itueto	11
2249	Santa Rita do Sapuca	11
2250	Santa Rosa da Serra	11
2251	Santa Vitria	11
2252	Santana da Vargem	11
2253	Santana de Cataguases	11
2254	Santana de Pirapama	11
2255	Santana do Deserto	11
2256	Santana do Garambu	11
2257	Santana do Jacar	11
2258	Santana do Manhuau	11
2259	Santana do Paraso	11
2260	Santana do Riacho	11
2261	Santana dos Montes	11
2262	Santo Antnio do Amparo	11
2263	Santo Antnio do Aventureiro	11
2264	Santo Antnio do Grama	11
2265	Santo Antnio do Itamb	11
2266	Santo Antnio do Jacinto	11
2267	Santo Antnio do Monte	11
2268	Santo Antnio do Retiro	11
2269	Santo Antnio do Rio Abaixo	11
2270	Santo Hiplito	11
2271	Santos Dumont	11
2272	So Bento Abade	11
2273	So Brs do Suau	11
2274	So Domingos das Dores	11
2275	So Domingos do Prata	11
2276	So Flix de Minas	11
2277	So Francisco	11
2278	So Francisco de Paula	11
2279	So Francisco de Sales	11
2280	So Francisco do Glria	11
2281	So Geraldo	11
2282	So Geraldo da Piedade	11
2283	So Geraldo do Baixio	11
2284	So Gonalo do Abaet	11
2285	So Gonalo do Par	11
2286	So Gonalo do Rio Abaixo	11
2287	So Gonalo do Rio Preto	11
2288	So Gonalo do Sapuca	11
2289	So Gotardo	11
2290	So Joo Batista do Glria	11
2291	So Joo da Lagoa	11
2292	So Joo da Mata	11
2293	So Joo da Ponte	11
2294	So Joo das Misses	11
2295	So Joo del Rei	11
2296	So Joo do Manhuau	11
2297	So Joo do Manteninha	11
2298	So Joo do Oriente	11
2299	So Joo do Pacu	11
2300	So Joo do Paraso	11
2301	So Joo Evangelista	11
2302	So Joo Nepomuceno	11
2303	So Joaquim de Bicas	11
2304	So Jos da Barra	11
2305	So Jos da Lapa	11
2306	So Jos da Safira	11
2307	So Jos da Varginha	11
2308	So Jos do Alegre	11
2309	So Jos do Divino	11
2310	So Jos do Goiabal	11
2311	So Jos do Jacuri	11
2312	So Jos do Mantimento	11
2313	So Loureno	11
2314	So Miguel do Anta	11
2315	So Pedro da Unio	11
2316	So Pedro do Suau	11
2317	So Pedro dos Ferros	11
2318	So Romo	11
2319	So Roque de Minas	11
2320	So Sebastio da Bela Vista	11
2321	So Sebastio da Vargem Alegre	11
2322	So Sebastio do Anta	11
2323	So Sebastio do Maranho	11
2324	So Sebastio do Oeste	11
2325	So Sebastio do Paraso	11
2326	So Sebastio do Rio Preto	11
2327	So Sebastio do Rio Verde	11
2328	So Thom das Letras	11
2329	So Tiago	11
2330	So Toms de Aquino	11
2331	So Vicente de Minas	11
2332	Sapuca-Mirim	11
2333	Sardo	11
2334	Sarzedo	11
2335	Sem-Peixe	11
2336	Senador Amaral	11
2337	Senador Cortes	11
2338	Senador Firmino	11
2339	Senador Jos Bento	11
2340	Senador Modestino Gonalves	11
2341	Senhora de Oliveira	11
2342	Senhora do Porto	11
2343	Senhora dos Remdios	11
2344	Sericita	11
2345	Seritinga	11
2346	Serra Azul de Minas	11
2347	Serra da Saudade	11
2348	Serra do Salitre	11
2349	Serra dos Aimors	11
2350	Serrania	11
2351	Serranpolis de Minas	11
2352	Serranos	11
2353	Serro	11
2354	Sete Lagoas	11
2355	Setubinha	11
2356	Silveirnia	11
2357	Silvianpolis	11
2358	Simo Pereira	11
2359	Simonsia	11
2360	Sobrlia	11
2361	Soledade de Minas	11
2362	Tabuleiro	11
2363	Taiobeiras	11
2364	Taparuba	11
2365	Tapira	11
2366	Tapira	11
2367	Taquarau de Minas	11
2368	Tarumirim	11
2369	Teixeiras	11
2370	Tefilo Otoni	11
2371	Timteo	11
2372	Tiradentes	11
2373	Tiros	11
2374	Tocantins	11
2375	Tocos do Moji	11
2376	Toledo	11
2377	Tombos	11
2378	Trs Coraes	11
2379	Trs Marias	11
2380	Trs Pontas	11
2381	Tumiritinga	11
2382	Tupaciguara	11
2383	Turmalina	11
2384	Turvolndia	11
2385	Ub	11
2386	Uba	11
2387	Ubaporanga	11
2388	Uberaba	11
2389	Uberlndia	11
2390	Umburatiba	11
2391	Una	11
2392	Unio de Minas	11
2393	Uruana de Minas	11
2394	Urucnia	11
2395	Urucuia	11
2396	Vargem Alegre	11
2397	Vargem Bonita	11
2398	Vargem Grande do Rio Pardo	11
2399	Varginha	11
2400	Varjo de Minas	11
2401	Vrzea da Palma	11
2402	Varzelndia	11
2403	Vazante	11
2404	Verdelndia	11
2405	Veredinha	11
2406	Verssimo	11
2407	Vermelho Novo	11
2408	Vespasiano	11
2409	Viosa	11
2410	Vieiras	11
2411	Virgem da Lapa	11
2412	Virgnia	11
2413	Virginpolis	11
2414	Virgolndia	11
2415	Visconde do Rio Branco	11
2416	Volta Grande	11
2417	Wenceslau Braz	11
2418	Abaetetuba	14
2419	Abel Figueiredo	14
2420	Acar	14
2421	Afu	14
2422	gua Azul do Norte	14
2423	Alenquer	14
2424	Almeirim	14
2425	Altamira	14
2426	Anajs	14
2427	Ananindeua	14
2428	Anapu	14
2429	Augusto Corra	14
2430	Aurora do Par	14
2431	Aveiro	14
2432	Bagre	14
2433	Baio	14
2434	Bannach	14
2435	Barcarena	14
2436	Belm	14
2437	Belterra	14
2438	Benevides	14
2439	Bom Jesus do Tocantins	14
2440	Bonito	14
2441	Bragana	14
2442	Brasil Novo	14
2443	Brejo Grande do Araguaia	14
2444	Breu Branco	14
2445	Breves	14
2446	Bujaru	14
2447	Cachoeira do Arari	14
2448	Cachoeira do Piri	14
2449	Camet	14
2450	Cana dos Carajs	14
2451	Capanema	14
2452	Capito Poo	14
2453	Castanhal	14
2454	Chaves	14
2455	Colares	14
2456	Conceio do Araguaia	14
2457	Concrdia do Par	14
2458	Cumaru do Norte	14
2459	Curionpolis	14
2460	Curralinho	14
2461	Curu	14
2462	Curu	14
2463	Dom Eliseu	14
2464	Eldorado dos Carajs	14
2465	Faro	14
2466	Floresta do Araguaia	14
2467	Garrafo do Norte	14
2468	Goiansia do Par	14
2469	Gurup	14
2470	Igarap-Au	14
2471	Igarap-Miri	14
2472	Inhangapi	14
2473	Ipixuna do Par	14
2474	Irituia	14
2475	Itaituba	14
2476	Itupiranga	14
2477	Jacareacanga	14
2478	Jacund	14
2479	Juruti	14
2480	Limoeiro do Ajuru	14
2481	Me do Rio	14
2482	Magalhes Barata	14
2483	Marab	14
2484	Maracan	14
2485	Marapanim	14
2486	Marituba	14
2487	Medicilndia	14
2488	Melgao	14
2489	Mocajuba	14
2490	Moju	14
2491	Monte Alegre	14
2492	Muan	14
2493	Nova Esperana do Piri	14
2494	Nova Ipixuna	14
2495	Nova Timboteua	14
2496	Novo Progresso	14
2497	Novo Repartimento	14
2498	bidos	14
2499	Oeiras do Par	14
2500	Oriximin	14
2501	Ourm	14
2502	Ourilndia do Norte	14
2503	Pacaj	14
2504	Palestina do Par	14
2505	Paragominas	14
2506	Parauapebas	14
2507	Pau dArco	14
2508	Peixe-Boi	14
2509	Piarra	14
2510	Placas	14
2511	Ponta de Pedras	14
2512	Portel	14
2513	Porto de Moz	14
2514	Prainha	14
2515	Primavera	14
2516	Quatipuru	14
2517	Redeno	14
2518	Rio Maria	14
2519	Rondon do Par	14
2520	Rurpolis	14
2521	Salinpolis	14
2522	Salvaterra	14
2523	Santa Brbara do Par	14
2524	Santa Cruz do Arari	14
2525	Santa Isabel do Par	14
2526	Santa Luzia do Par	14
2527	Santa Maria das Barreiras	14
2528	Santa Maria do Par	14
2529	Santana do Araguaia	14
2530	Santarm	14
2531	Santarm Novo	14
2532	Santo Antnio do Tau	14
2533	So Caetano de Odivelas	14
2534	So Domingos do Araguaia	14
2535	So Domingos do Capim	14
2536	So Flix do Xingu	14
2537	So Francisco do Par	14
2538	So Geraldo do Araguaia	14
2539	So Joo da Ponta	14
2540	So Joo de Pirabas	14
2541	So Joo do Araguaia	14
2542	So Miguel do Guam	14
2543	So Sebastio da Boa Vista	14
2544	Sapucaia	14
2545	Senador Jos Porfrio	14
2546	Soure	14
2547	Tailndia	14
2548	Terra Alta	14
2549	Terra Santa	14
2550	Tom-Au	14
2551	Tracuateua	14
2552	Trairo	14
2553	Tucum	14
2554	Tucuru	14
2555	Ulianpolis	14
2556	Uruar	14
2557	Vigia	14
2558	Viseu	14
2559	Vitria do Xingu	14
2560	Xinguara	14
2561	gua Branca	15
2562	Aguiar	15
2563	Alagoa Grande	15
2564	Alagoa Nova	15
2565	Alagoinha	15
2566	Alcantil	15
2567	Algodo de Jandara	15
2568	Alhandra	15
2569	Amparo	15
2570	Aparecida	15
2571	Araagi	15
2572	Arara	15
2573	Araruna	15
2574	Areia	15
2575	Areia de Baranas	15
2576	Areial	15
2577	Aroeiras	15
2578	Assuno	15
2579	Baa da Traio	15
2580	Bananeiras	15
2581	Barana	15
2582	Barra de Santa Rosa	15
2583	Barra de Santana	15
2584	Barra de So Miguel	15
2585	Bayeux	15
2586	Belm	15
2587	Belm do Brejo do Cruz	15
2588	Bernardino Batista	15
2589	Boa Ventura	15
2590	Boa Vista	15
2591	Bom Jesus	15
2592	Bom Sucesso	15
2593	Bonito de Santa F	15
2594	Boqueiro	15
2595	Borborema	15
2596	Brejo do Cruz	15
2597	Brejo dos Santos	15
2598	Caapor	15
2599	Cabaceiras	15
2600	Cabedelo	15
2601	Cachoeira dos ndios	15
2602	Cacimba de Areia	15
2603	Cacimba de Dentro	15
2604	Cacimbas	15
2605	Caiara	15
2606	Cajazeiras	15
2607	Cajazeirinhas	15
2608	Caldas Brando	15
2609	Camala	15
2610	Campina Grande	15
2611	Campo de Santana	15
2612	Capim	15
2613	Carabas	15
2614	Carrapateira	15
2615	Casserengue	15
2616	Catingueira	15
2617	Catol do Rocha	15
2618	Caturit	15
2619	Conceio	15
2620	Condado	15
2621	Conde	15
2622	Congo	15
2623	Coremas	15
2624	Coxixola	15
2625	Cruz do Esprito Santo	15
2626	Cubati	15
2627	Cuit	15
2628	Cuit de Mamanguape	15
2629	Cuitegi	15
2630	Curral de Cima	15
2631	Curral Velho	15
2632	Damio	15
2633	Desterro	15
2634	Diamante	15
2635	Dona Ins	15
2636	Duas Estradas	15
2637	Emas	15
2638	Esperana	15
2639	Fagundes	15
2640	Frei Martinho	15
2641	Gado Bravo	15
2642	Guarabira	15
2643	Gurinhm	15
2644	Gurjo	15
2645	Ibiara	15
2646	Igaracy	15
2647	Imaculada	15
2648	Ing	15
2649	Itabaiana	15
2650	Itaporanga	15
2651	Itapororoca	15
2652	Itatuba	15
2653	Jacara	15
2654	Jeric	15
2655	Joo Pessoa	15
2656	Juarez Tvora	15
2657	Juazeirinho	15
2658	Junco do Serid	15
2659	Juripiranga	15
2660	Juru	15
2661	Lagoa	15
2662	Lagoa de Dentro	15
2663	Lagoa Seca	15
2664	Lastro	15
2665	Livramento	15
2666	Logradouro	15
2667	Lucena	15
2668	Me dgua	15
2669	Malta	15
2670	Mamanguape	15
2671	Manara	15
2672	Marcao	15
2673	Mari	15
2674	Marizpolis	15
2675	Massaranduba	15
2676	Mataraca	15
2677	Matinhas	15
2678	Mato Grosso	15
2679	Maturia	15
2680	Mogeiro	15
2681	Montadas	15
2682	Monte Horebe	15
2683	Monteiro	15
2684	Mulungu	15
2685	Natuba	15
2686	Nazarezinho	15
2687	Nova Floresta	15
2688	Nova Olinda	15
2689	Nova Palmeira	15
2690	Olho dgua	15
2691	Olivedos	15
2692	Ouro Velho	15
2693	Parari	15
2694	Passagem	15
2695	Patos	15
2696	Paulista	15
2697	Pedra Branca	15
2698	Pedra Lavrada	15
2699	Pedras de Fogo	15
2700	Pedro Rgis	15
2701	Pianc	15
2702	Picu	15
2703	Pilar	15
2704	Piles	15
2705	Pilezinhos	15
2706	Pirpirituba	15
2707	Pitimbu	15
2708	Pocinhos	15
2709	Poo Dantas	15
2710	Poo de Jos de Moura	15
2711	Pombal	15
2712	Prata	15
2713	Princesa Isabel	15
2714	Puxinan	15
2715	Queimadas	15
2716	Quixab	15
2717	Remgio	15
2718	Riacho	15
2719	Riacho do Bacamarte	15
2720	Riacho do Poo	15
2721	Riacho de Santo Antnio	15
2722	Riacho dos Cavalos	15
2723	Rio Tinto	15
2724	Salgadinho	15
2725	Salgado de So Flix	15
2726	Santa Ceclia	15
2727	Santa Cruz	15
2728	Santa Helena	15
2729	Santa Ins	15
2730	Santa Luzia	15
2731	Santa Rita	15
2732	Santa Teresinha	15
2733	Santana de Mangueira	15
2734	Santana dos Garrotes	15
2735	Santarm	15
2736	Santo Andr	15
2737	So Bentinho	15
2738	So Bento	15
2739	So Domingos de Pombal	15
2740	So Domingos do Cariri	15
2741	So Francisco	15
2742	So Joo do Cariri	15
2743	So Joo do Rio do Peixe	15
2744	So Joo do Tigre	15
2745	So Jos da Lagoa Tapada	15
2746	So Jos de Caiana	15
2747	So Jos de Espinharas	15
2748	So Jos de Piranhas	15
2749	So Jos de Princesa	15
2750	So Jos do Bonfim	15
2751	So Jos do Brejo do Cruz	15
2752	So Jos do Sabugi	15
2753	So Jos dos Cordeiros	15
2754	So Jos dos Ramos	15
2755	So Mamede	15
2756	So Miguel de Taipu	15
2757	So Sebastio de Lagoa de Roa	15
2758	So Sebastio do Umbuzeiro	15
2759	Sap	15
2760	Serid	15
2761	Serra Branca	15
2762	Serra da Raiz	15
2763	Serra Grande	15
2764	Serra Redonda	15
2765	Serraria	15
2766	Sertozinho	15
2767	Sobrado	15
2768	Solnea	15
2769	Soledade	15
2770	Sossgo	15
2771	Sousa	15
2772	Sum	15
2773	Tapero	15
2774	Tavares	15
2775	Teixeira	15
2776	Tenrio	15
2777	Triunfo	15
2778	Uirana	15
2779	Umbuzeiro	15
2780	Vrzea	15
2781	Vieirpolis	15
2782	Vista Serrana	15
2783	Zabel	15
2784	Abati	18
2785	Adrianpolis	18
2786	Agudos do Sul	18
2787	Almirante Tamandar	18
2788	Altamira do Paran	18
2789	Alto Paraso	18
2790	Alto Paran	18
2791	Alto Piquiri	18
2792	Altnia	18
2793	Alvorada do Sul	18
2794	Amapor	18
2795	Ampre	18
2796	Anahy	18
2797	Andir	18
2798	ngulo	18
2799	Antonina	18
2800	Antnio Olinto	18
2801	Apucarana	18
2802	Arapongas	18
2803	Arapoti	18
2804	Arapu	18
2805	Araruna	18
2806	Araucria	18
2807	Ariranha do Iva	18
2808	Assa	18
2809	Assis Chateaubriand	18
2810	Astorga	18
2811	Atalaia	18
2812	Balsa Nova	18
2813	Bandeirantes	18
2814	Barbosa Ferraz	18
2815	Barra do Jacar	18
2816	Barraco	18
2817	Bela Vista da Caroba	18
2818	Bela Vista do Paraso	18
2819	Bituruna	18
2820	Boa Esperana	18
2821	Boa Esperana do Iguau	18
2822	Boa Ventura de So Roque	18
2823	Boa Vista da Aparecida	18
2824	Bocaiva do Sul	18
2825	Bom Jesus do Sul	18
2826	Bom Sucesso	18
2827	Bom Sucesso do Sul	18
2828	Borrazpolis	18
2829	Braganey	18
2830	Brasilndia do Sul	18
2831	Cafeara	18
2832	Cafelndia	18
2833	Cafezal do Sul	18
2834	Califrnia	18
2835	Cambar	18
2836	Camb	18
2837	Cambira	18
2838	Campina da Lagoa	18
2839	Campina do Simo	18
2840	Campina Grande do Sul	18
2841	Campo Bonito	18
2842	Campo do Tenente	18
2843	Campo Largo	18
2844	Campo Magro	18
2845	Campo Mouro	18
2846	Cndido de Abreu	18
2847	Candi	18
2848	Cantagalo	18
2849	Capanema	18
2850	Capito Lenidas Marques	18
2851	Carambe	18
2852	Carlpolis	18
2853	Cascavel	18
2854	Castro	18
2855	Catanduvas	18
2856	Centenrio do Sul	18
2857	Cerro Azul	18
2858	Cu Azul	18
2859	Chopinzinho	18
2860	Cianorte	18
2861	Cidade Gacha	18
2862	Clevelndia	18
2863	Colombo	18
2864	Colorado	18
2865	Congonhinhas	18
2866	Conselheiro Mairinck	18
2867	Contenda	18
2868	Corblia	18
2869	Cornlio Procpio	18
2870	Coronel Domingos Soares	18
2871	Coronel Vivida	18
2872	Corumbata do Sul	18
2873	Cruz Machado	18
2874	Cruzeiro do Iguau	18
2875	Cruzeiro do Oeste	18
2876	Cruzeiro do Sul	18
2877	Cruzmaltina	18
2878	Curitiba	18
2879	Curiva	18
2880	Diamante dOeste	18
2881	Diamante do Norte	18
2882	Diamante do Sul	18
2883	Dois Vizinhos	18
2884	Douradina	18
2885	Doutor Camargo	18
2886	Doutor Ulysses	18
2887	Enas Marques	18
2888	Engenheiro Beltro	18
2889	Entre Rios do Oeste	18
2890	Esperana Nova	18
2891	Espigo Alto do Iguau	18
2892	Farol	18
2893	Faxinal	18
2894	Fazenda Rio Grande	18
2895	Fnix	18
2896	Fernandes Pinheiro	18
2897	Figueira	18
2898	Flor da Serra do Sul	18
2899	Flora	18
2900	Floresta	18
2901	Florestpolis	18
2902	Flrida	18
2903	Formosa do Oeste	18
2904	Foz do Iguau	18
2905	Foz do Jordo	18
2906	Francisco Alves	18
2907	Francisco Beltro	18
2908	General Carneiro	18
2909	Godoy Moreira	18
2910	Goioer	18
2911	Goioxim	18
2912	Grandes Rios	18
2913	Guara	18
2914	Guaira	18
2915	Guamiranga	18
2916	Guapirama	18
2917	Guaporema	18
2918	Guaraci	18
2919	Guaraniau	18
2920	Guarapuava	18
2921	Guaraqueaba	18
2922	Guaratuba	18
2923	Honrio Serpa	18
2924	Ibaiti	18
2925	Ibema	18
2926	Ibipor	18
2927	Icarama	18
2928	Iguarau	18
2929	Iguatu	18
2930	Imba	18
2931	Imbituva	18
2932	Incio Martins	18
2933	Inaj	18
2934	Indianpolis	18
2935	Ipiranga	18
2936	Ipor	18
2937	Iracema do Oeste	18
2938	Irati	18
2939	Iretama	18
2940	Itaguaj	18
2941	Itaipulndia	18
2942	Itambarac	18
2943	Itamb	18
2944	Itapejara dOeste	18
2945	Itaperuu	18
2946	Itana do Sul	18
2947	Iva	18
2948	Ivaipor	18
2949	Ivat	18
2950	Ivatuba	18
2951	Jaboti	18
2952	Jacarezinho	18
2953	Jaguapit	18
2954	Jaguariava	18
2955	Jandaia do Sul	18
2956	Janipolis	18
2957	Japira	18
2958	Japur	18
2959	Jardim Alegre	18
2960	Jardim Olinda	18
2961	Jataizinho	18
2962	Jesutas	18
2963	Joaquim Tvora	18
2964	Jundia do Sul	18
2965	Juranda	18
2966	Jussara	18
2967	Kalor	18
2968	Lapa	18
2969	Laranjal	18
2970	Laranjeiras do Sul	18
2971	Lepolis	18
2972	Lidianpolis	18
2973	Lindoeste	18
2974	Loanda	18
2975	Lobato	18
2976	Londrina	18
2977	Luiziana	18
2978	Lunardelli	18
2979	Lupionpolis	18
2980	Mallet	18
2981	Mambor	18
2982	Mandaguau	18
2983	Mandaguari	18
2984	Mandirituba	18
2985	Manfrinpolis	18
2986	Mangueirinha	18
2987	Manoel Ribas	18
2988	Marechal Cndido Rondon	18
2989	Maria Helena	18
2990	Marialva	18
2991	Marilndia do Sul	18
2992	Marilena	18
2993	Mariluz	18
2994	Maring	18
2995	Maripolis	18
2996	Marip	18
2997	Marmeleiro	18
2998	Marquinho	18
2999	Marumbi	18
3000	Matelndia	18
3001	Matinhos	18
3002	Mato Rico	18
3003	Mau da Serra	18
3004	Medianeira	18
3005	Mercedes	18
3006	Mirador	18
3007	Miraselva	18
3008	Missal	18
3009	Moreira Sales	18
3010	Morretes	18
3011	Munhoz de Melo	18
3012	Nossa Senhora das Graas	18
3013	Nova Aliana do Iva	18
3014	Nova Amrica da Colina	18
3015	Nova Aurora	18
3016	Nova Cantu	18
3017	Nova Esperana	18
3018	Nova Esperana do Sudoeste	18
3019	Nova Ftima	18
3020	Nova Laranjeiras	18
3021	Nova Londrina	18
3022	Nova Olmpia	18
3023	Nova Prata do Iguau	18
3024	Nova Santa Brbara	18
3025	Nova Santa Rosa	18
3026	Nova Tebas	18
3027	Novo Itacolomi	18
3028	Ortigueira	18
3029	Ourizona	18
3030	Ouro Verde do Oeste	18
3031	Paiandu	18
3032	Palmas	18
3033	Palmeira	18
3034	Palmital	18
3035	Palotina	18
3036	Paraso do Norte	18
3037	Paranacity	18
3038	Paranagu	18
3039	Paranapoema	18
3040	Paranava	18
3041	Pato Bragado	18
3042	Pato Branco	18
3043	Paula Freitas	18
3044	Paulo Frontin	18
3045	Peabiru	18
3046	Perobal	18
3047	Prola	18
3048	Prola dOeste	18
3049	Pin	18
3050	Pinhais	18
3051	Pinhal de So Bento	18
3052	Pinhalo	18
3053	Pinho	18
3054	Pira do Sul	18
3055	Piraquara	18
3056	Pitanga	18
3057	Pitangueiras	18
3058	Planaltina do Paran	18
3059	Planalto	18
3060	Ponta Grossa	18
3061	Pontal do Paran	18
3062	Porecatu	18
3063	Porto Amazonas	18
3064	Porto Barreiro	18
3065	Porto Rico	18
3066	Porto Vitria	18
3067	Prado Ferreira	18
3068	Pranchita	18
3069	Presidente Castelo Branco	18
3070	Primeiro de Maio	18
3071	Prudentpolis	18
3072	Quarto Centenrio	18
3073	Quatigu	18
3074	Quatro Barras	18
3075	Quatro Pontes	18
3076	Quedas do Iguau	18
3077	Querncia do Norte	18
3078	Quinta do Sol	18
3079	Quitandinha	18
3080	Ramilndia	18
3081	Rancho Alegre	18
3082	Rancho Alegre dOeste	18
3083	Realeza	18
3084	Rebouas	18
3085	Renascena	18
3086	Reserva	18
3087	Reserva do Iguau	18
3088	Ribeiro Claro	18
3089	Ribeiro do Pinhal	18
3090	Rio Azul	18
3091	Rio Bom	18
3092	Rio Bonito do Iguau	18
3093	Rio Branco do Iva	18
3094	Rio Branco do Sul	18
3095	Rio Negro	18
3096	Rolndia	18
3097	Roncador	18
3098	Rondon	18
3099	Rosrio do Iva	18
3100	Sabudia	18
3101	Salgado Filho	18
3102	Salto do Itarar	18
3103	Salto do Lontra	18
3104	Santa Amlia	18
3105	Santa Ceclia do Pavo	18
3106	Santa Cruz de Monte Castelo	18
3107	Santa F	18
3108	Santa Helena	18
3109	Santa Ins	18
3110	Santa Isabel do Iva	18
3111	Santa Izabel do Oeste	18
3112	Santa Lcia	18
3113	Santa Maria do Oeste	18
3114	Santa Mariana	18
3115	Santa Mnica	18
3116	Santa Tereza do Oeste	18
3117	Santa Terezinha de Itaipu	18
3118	Santana do Itarar	18
3119	Santo Antnio da Platina	18
3120	Santo Antnio do Caiu	18
3121	Santo Antnio do Paraso	18
3122	Santo Antnio do Sudoeste	18
3123	Santo Incio	18
3124	So Carlos do Iva	18
3125	So Jernimo da Serra	18
3126	So Joo	18
3127	So Joo do Caiu	18
3128	So Joo do Iva	18
3129	So Joo do Triunfo	18
3130	So Jorge dOeste	18
3131	So Jorge do Iva	18
3132	So Jorge do Patrocnio	18
3133	So Jos da Boa Vista	18
3134	So Jos das Palmeiras	18
3135	So Jos dos Pinhais	18
3136	So Manoel do Paran	18
3137	So Mateus do Sul	18
3138	So Miguel do Iguau	18
3139	So Pedro do Iguau	18
3140	So Pedro do Iva	18
3141	So Pedro do Paran	18
3142	So Sebastio da Amoreira	18
3143	So Tom	18
3144	Sapopema	18
3145	Sarandi	18
3146	Saudade do Iguau	18
3147	Sengs	18
3148	Serranpolis do Iguau	18
3149	Sertaneja	18
3150	Sertanpolis	18
3151	Siqueira Campos	18
3152	Sulina	18
3153	Tamarana	18
3154	Tamboara	18
3155	Tapejara	18
3156	Tapira	18
3157	Teixeira Soares	18
3158	Telmaco Borba	18
3159	Terra Boa	18
3160	Terra Rica	18
3161	Terra Roxa	18
3162	Tibagi	18
3163	Tijucas do Sul	18
3164	Toledo	18
3165	Tomazina	18
3166	Trs Barras do Paran	18
3167	Tunas do Paran	18
3168	Tuneiras do Oeste	18
3169	Tupssi	18
3170	Turvo	18
3171	Ubirat	18
3172	Umuarama	18
3173	Unio da Vitria	18
3174	Uniflor	18
3175	Ura	18
3176	Ventania	18
3177	Vera Cruz do Oeste	18
3178	Ver	18
3179	Virmond	18
3180	Vitorino	18
3181	Wenceslau Braz	18
3182	Xambr	18
3183	Abreu e Lima	16
3184	Afogados da Ingazeira	16
3185	Afrnio	16
3186	Agrestina	16
3187	gua Preta	16
3188	guas Belas	16
3189	Alagoinha	16
3190	Aliana	16
3191	Altinho	16
3192	Amaraji	16
3193	Angelim	16
3194	Araoiaba	16
3195	Araripina	16
3196	Arcoverde	16
3197	Barra de Guabiraba	16
3198	Barreiros	16
3199	Belm de Maria	16
3200	Belm de So Francisco	16
3201	Belo Jardim	16
3202	Betnia	16
3203	Bezerros	16
3204	Bodoc	16
3205	Bom Conselho	16
3206	Bom Jardim	16
3207	Bonito	16
3208	Brejo	16
3209	Brejinho	16
3210	Brejo da Madre de Deus	16
3211	Buenos Aires	16
3212	Buque	16
3213	Cabo de Santo Agostinho	16
3214	Cabrob	16
3215	Cachoeirinha	16
3216	Caets	16
3217	Calado	16
3218	Calumbi	16
3219	Camaragibe	16
3220	Camocim de So Flix	16
3221	Camutanga	16
3222	Canhotinho	16
3223	Capoeiras	16
3224	Carnaba	16
3225	Carnaubeira da Penha	16
3226	Carpina	16
3227	Caruaru	16
3228	Casinhas	16
3229	Catende	16
3230	Cedro	16
3231	Ch de Alegria	16
3232	Ch Grande	16
3233	Condado	16
3234	Correntes	16
3235	Corts	16
3236	Cumaru	16
3237	Cupira	16
3238	Custdia	16
3239	Dormentes	16
3240	Escada	16
3241	Exu	16
3242	Feira Nova	16
3243	Fernando de Noronha	16
3244	Ferreiros	16
3245	Flores	16
3246	Floresta	16
3247	Frei Miguelinho	16
3248	Gameleira	16
3249	Garanhuns	16
3250	Glria do Goit	16
3251	Goiana	16
3252	Granito	16
3253	Gravat	16
3254	Iati	16
3255	Ibimirim	16
3256	Ibirajuba	16
3257	Igarassu	16
3258	Iguaraci	16
3259	Ilha de Itamarac	16
3260	Inaj	16
3261	Ingazeira	16
3262	Ipojuca	16
3263	Ipubi	16
3264	Itacuruba	16
3265	Itaba	16
3266	Itamb	16
3267	Itapetim	16
3268	Itapissuma	16
3269	Itaquitinga	16
3270	Jaboato dos Guararapes	16
3271	Jaqueira	16
3272	Jataba	16
3273	Jatob	16
3274	Joo Alfredo	16
3275	Joaquim Nabuco	16
3276	Jucati	16
3277	Jupi	16
3278	Jurema	16
3279	Lagoa do Carro	16
3280	Lagoa do Itaenga	16
3281	Lagoa do Ouro	16
3282	Lagoa dos Gatos	16
3283	Lagoa Grande	16
3284	Lajedo	16
3285	Limoeiro	16
3286	Macaparana	16
3287	Machados	16
3288	Manari	16
3289	Maraial	16
3290	Mirandiba	16
3291	Moreilndia	16
3292	Moreno	16
3293	Nazar da Mata	16
3294	Olinda	16
3295	Orob	16
3296	Oroc	16
3297	Ouricuri	16
3298	Palmares	16
3299	Palmeirina	16
3300	Panelas	16
3301	Paranatama	16
3302	Parnamirim	16
3303	Passira	16
3304	Paudalho	16
3305	Paulista	16
3306	Pedra	16
3307	Pesqueira	16
3308	Petrolndia	16
3309	Petrolina	16
3310	Poo	16
3311	Pombos	16
3312	Primavera	16
3313	Quipap	16
3314	Quixaba	16
3315	Recife	16
3316	Riacho das Almas	16
3317	Ribeiro	16
3318	Rio Formoso	16
3319	Sair	16
3320	Salgadinho	16
3321	Salgueiro	16
3322	Salo	16
3323	Sanhar	16
3324	Santa Cruz	16
3325	Santa Cruz da Baixa Verde	16
3326	Santa Cruz do Capibaribe	16
3327	Santa Filomena	16
3328	Santa Maria da Boa Vista	16
3329	Santa Maria do Cambuc	16
3330	Santa Terezinha	16
3331	So Benedito do Sul	16
3332	So Bento do Una	16
3333	So Caitano	16
3334	So Joo	16
3335	So Joaquim do Monte	16
3336	So Jos da Coroa Grande	16
3337	So Jos do Belmonte	16
3338	So Jos do Egito	16
3339	So Loureno da Mata	16
3340	So Vicente Ferrer	16
3341	Serra Talhada	16
3342	Serrita	16
3343	Sertnia	16
3344	Sirinham	16
3345	Solido	16
3346	Surubim	16
3347	Tabira	16
3348	Tacaimb	16
3349	Tacaratu	16
3350	Tamandar	16
3351	Taquaritinga do Norte	16
3352	Terezinha	16
3353	Terra Nova	16
3354	Timbaba	16
3355	Toritama	16
3356	Tracunham	16
3357	Trindade	16
3358	Triunfo	16
3359	Tupanatinga	16
3360	Tuparetama	16
3361	Venturosa	16
3362	Verdejante	16
3363	Vertente do Lrio	16
3364	Vertentes	16
3365	Vicncia	16
3366	Vitria de Santo Anto	16
3367	Xexu	16
3368	Acau	17
3369	Agricolndia	17
3370	gua Branca	17
3371	Alagoinha do Piau	17
3372	Alegrete do Piau	17
3373	Alto Long	17
3374	Altos	17
3375	Alvorada do Gurguia	17
3376	Amarante	17
3377	Angical do Piau	17
3378	Ansio de Abreu	17
3379	Antnio Almeida	17
3380	Aroazes	17
3381	Aroeiras do Itaim	17
3382	Arraial	17
3383	Assuno do Piau	17
3384	Avelino Lopes	17
3385	Baixa Grande do Ribeiro	17
3386	Barra dAlcntara	17
3387	Barras	17
3388	Barreiras do Piau	17
3389	Barro Duro	17
3390	Batalha	17
3391	Bela Vista do Piau	17
3392	Belm do Piau	17
3393	Beneditinos	17
3394	Bertolnia	17
3395	Betnia do Piau	17
3396	Boa Hora	17
3397	Bocaina	17
3398	Bom Jesus	17
3399	Bom Princpio do Piau	17
3400	Bonfim do Piau	17
3401	Boqueiro do Piau	17
3402	Brasileira	17
3403	Brejo do Piau	17
3404	Buriti dos Lopes	17
3405	Buriti dos Montes	17
3406	Cabeceiras do Piau	17
3407	Cajazeiras do Piau	17
3408	Cajueiro da Praia	17
3409	Caldeiro Grande do Piau	17
3410	Campinas do Piau	17
3411	Campo Alegre do Fidalgo	17
3412	Campo Grande do Piau	17
3413	Campo Largo do Piau	17
3414	Campo Maior	17
3415	Canavieira	17
3416	Canto do Buriti	17
3417	Capito de Campos	17
3418	Capito Gervsio Oliveira	17
3419	Caracol	17
3420	Carabas do Piau	17
3421	Caridade do Piau	17
3422	Castelo do Piau	17
3423	Caxing	17
3424	Cocal	17
3425	Cocal de Telha	17
3426	Cocal dos Alves	17
3427	Coivaras	17
3428	Colnia do Gurguia	17
3429	Colnia do Piau	17
3430	Conceio do Canind	17
3431	Coronel Jos Dias	17
3432	Corrente	17
3433	Cristalndia do Piau	17
3434	Cristino Castro	17
3435	Curimat	17
3436	Currais	17
3437	Curral Novo do Piau	17
3438	Curralinhos	17
3439	Demerval Lobo	17
3440	Dirceu Arcoverde	17
3441	Dom Expedito Lopes	17
3442	Dom Inocncio	17
3443	Domingos Mouro	17
3444	Elesbo Veloso	17
3445	Eliseu Martins	17
3446	Esperantina	17
3447	Fartura do Piau	17
3448	Flores do Piau	17
3449	Floresta do Piau	17
3450	Floriano	17
3451	Francinpolis	17
3452	Francisco Ayres	17
3453	Francisco Macedo	17
3454	Francisco Santos	17
3455	Fronteiras	17
3456	Geminiano	17
3457	Gilbus	17
3458	Guadalupe	17
3459	Guaribas	17
3460	Hugo Napoleo	17
3461	Ilha Grande	17
3462	Inhuma	17
3463	Ipiranga do Piau	17
3464	Isaas Coelho	17
3465	Itainpolis	17
3466	Itaueira	17
3467	Jacobina do Piau	17
3468	Jaics	17
3469	Jardim do Mulato	17
3470	Jatob do Piau	17
3471	Jerumenha	17
3472	Joo Costa	17
3473	Joaquim Pires	17
3474	Joca Marques	17
3475	Jos de Freitas	17
3476	Juazeiro do Piau	17
3477	Jlio Borges	17
3478	Jurema	17
3479	Lagoa Alegre	17
3480	Lagoa de So Francisco	17
3481	Lagoa do Barro do Piau	17
3482	Lagoa do Piau	17
3483	Lagoa do Stio	17
3484	Lagoinha do Piau	17
3485	Landri Sales	17
3486	Lus Correia	17
3487	Luzilndia	17
3488	Madeiro	17
3489	Manoel Emdio	17
3490	Marcolndia	17
3491	Marcos Parente	17
3492	Massap do Piau	17
3493	Matias Olmpio	17
3494	Miguel Alves	17
3495	Miguel Leo	17
3496	Milton Brando	17
3497	Monsenhor Gil	17
3498	Monsenhor Hiplito	17
3499	Monte Alegre do Piau	17
3500	Morro Cabea no Tempo	17
3501	Morro do Chapu do Piau	17
3502	Murici dos Portelas	17
3503	Nazar do Piau	17
3504	Nossa Senhora de Nazar	17
3505	Nossa Senhora dos Remdios	17
3506	Nova Santa Rita	17
3507	Novo Oriente do Piau	17
3508	Novo Santo Antnio	17
3509	Oeiras	17
3510	Olho dgua do Piau	17
3511	Padre Marcos	17
3512	Paes Landim	17
3513	Paje do Piau	17
3514	Palmeira do Piau	17
3515	Palmeirais	17
3516	Paquet	17
3517	Parnagu	17
3518	Parnaba	17
3519	Passagem Franca do Piau	17
3520	Patos do Piau	17
3521	Pau dArco do Piau	17
3522	Paulistana	17
3523	Pavussu	17
3524	Pedro II	17
3525	Pedro Laurentino	17
3526	Picos	17
3527	Pimenteiras	17
3528	Pio IX	17
3529	Piracuruca	17
3530	Piripiri	17
3531	Porto	17
3532	Porto Alegre do Piau	17
3533	Prata do Piau	17
3534	Queimada Nova	17
3535	Redeno do Gurguia	17
3536	Regenerao	17
3537	Riacho Frio	17
3538	Ribeira do Piau	17
3539	Ribeiro Gonalves	17
3540	Rio Grande do Piau	17
3541	Santa Cruz do Piau	17
3542	Santa Cruz dos Milagres	17
3543	Santa Filomena	17
3544	Santa Luz	17
3545	Santa Rosa do Piau	17
3546	Santana do Piau	17
3547	Santo Antnio de Lisboa	17
3548	Santo Antnio dos Milagres	17
3549	Santo Incio do Piau	17
3550	So Braz do Piau	17
3551	So Flix do Piau	17
3552	So Francisco de Assis do Piau	17
3553	So Francisco do Piau	17
3554	So Gonalo do Gurguia	17
3555	So Gonalo do Piau	17
3556	So Joo da Canabrava	17
3557	So Joo da Fronteira	17
3558	So Joo da Serra	17
3559	So Joo da Varjota	17
3560	So Joo do Arraial	17
3561	So Joo do Piau	17
3562	So Jos do Divino	17
3563	So Jos do Peixe	17
3564	So Jos do Piau	17
3565	So Julio	17
3566	So Loureno do Piau	17
3567	So Luis do Piau	17
3568	So Miguel da Baixa Grande	17
3569	So Miguel do Fidalgo	17
3570	So Miguel do Tapuio	17
3571	So Pedro do Piau	17
3572	So Raimundo Nonato	17
3573	Sebastio Barros	17
3574	Sebastio Leal	17
3575	Sigefredo Pacheco	17
3576	Simes	17
3577	Simplcio Mendes	17
3578	Socorro do Piau	17
3579	Sussuapara	17
3580	Tamboril do Piau	17
3581	Tanque do Piau	17
3582	Teresina	17
3583	Unio	17
3584	Uruu	17
3585	Valena do Piau	17
3586	Vrzea Branca	17
3587	Vrzea Grande	17
3588	Vera Mendes	17
3589	Vila Nova do Piau	17
3590	Wall Ferraz	17
3591	Angra dos Reis	19
3592	Aperib	19
3593	Araruama	19
3594	Areal	19
3595	Armao dos Bzios	19
3596	Arraial do Cabo	19
3597	Barra do Pira	19
3598	Barra Mansa	19
3599	Belford Roxo	19
3600	Bom Jardim	19
3601	Bom Jesus do Itabapoana	19
3602	Cabo Frio	19
3603	Cachoeiras de Macacu	19
3604	Cambuci	19
3605	Campos dos Goytacazes	19
3606	Cantagalo	19
3607	Carapebus	19
3608	Cardoso Moreira	19
3609	Carmo	19
3610	Casimiro de Abreu	19
3611	Comendador Levy Gasparian	19
3612	Conceio de Macabu	19
3613	Cordeiro	19
3614	Duas Barras	19
3615	Duque de Caxias	19
3616	Engenheiro Paulo de Frontin	19
3617	Guapimirim	19
3618	Iguaba Grande	19
3619	Itabora	19
3620	Itagua	19
3621	Italva	19
3622	Itaocara	19
3623	Itaperuna	19
3624	Itatiaia	19
3625	Japeri	19
3626	Laje do Muria	19
3627	Maca	19
3628	Macuco	19
3629	Mag	19
3630	Mangaratiba	19
3631	Maric	19
3632	Mendes	19
3633	Mesquita	19
3634	Miguel Pereira	19
3635	Miracema	19
3636	Natividade	19
3637	Nilpolis	19
3638	Niteri	19
3639	Nova Friburgo	19
3640	Nova Iguau	19
3641	Paracambi	19
3642	Paraba do Sul	19
3643	Parati	19
3644	Paty do Alferes	19
3645	Petrpolis	19
3646	Pinheiral	19
3647	Pira	19
3648	Porcincula	19
3649	Porto Real	19
3650	Quatis	19
3651	Queimados	19
3652	Quissam	19
3653	Resende	19
3654	Rio Bonito	19
3655	Rio Claro	19
3656	Rio das Flores	19
3657	Rio das Ostras	19
3658	Rio de Janeiro	19
3659	Santa Maria Madalena	19
3660	Santo Antnio de Pdua	19
3661	So Fidlis	19
3662	So Francisco de Itabapoana	19
3663	So Gonalo	19
3664	So Joo da Barra	19
3665	So Joo de Meriti	19
3666	So Jos de Ub	19
3667	So Jos do Vale do Rio Pret	19
3668	So Pedro da Aldeia	19
3669	So Sebastio do Alto	19
3670	Sapucaia	19
3671	Saquarema	19
3672	Seropdica	19
3673	Silva Jardim	19
3674	Sumidouro	19
3675	Tangu	19
3676	Terespolis	19
3677	Trajano de Morais	19
3678	Trs Rios	19
3679	Valena	19
3680	Varre-Sai	19
3681	Vassouras	19
3682	Volta Redonda	19
3683	Acari	20
3684	Au	20
3685	Afonso Bezerra	20
3686	gua Nova	20
3687	Alexandria	20
3688	Almino Afonso	20
3689	Alto do Rodrigues	20
3690	Angicos	20
3691	Antnio Martins	20
3692	Apodi	20
3693	Areia Branca	20
3694	Ars	20
3695	Augusto Severo	20
3696	Baa Formosa	20
3697	Barana	20
3698	Barcelona	20
3699	Bento Fernandes	20
3700	Bod	20
3701	Bom Jesus	20
3702	Brejinho	20
3703	Caiara do Norte	20
3704	Caiara do Rio do Vento	20
3705	Caic	20
3706	Campo Redondo	20
3707	Canguaretama	20
3708	Carabas	20
3709	Carnaba dos Dantas	20
3710	Carnaubais	20
3711	Cear-Mirim	20
3712	Cerro Cor	20
3713	Coronel Ezequiel	20
3714	Coronel Joo Pessoa	20
3715	Cruzeta	20
3716	Currais Novos	20
3717	Doutor Severiano	20
3718	Encanto	20
3719	Equador	20
3720	Esprito Santo	20
3721	Extremoz	20
3722	Felipe Guerra	20
3723	Fernando Pedroza	20
3724	Flornia	20
3725	Francisco Dantas	20
3726	Frutuoso Gomes	20
3727	Galinhos	20
3728	Goianinha	20
3729	Governador Dix-Sept Rosado	20
3730	Grossos	20
3731	Guamar	20
3732	Ielmo Marinho	20
3733	Ipanguau	20
3734	Ipueira	20
3735	Itaj	20
3736	Ita	20
3737	Jaan	20
3738	Jandara	20
3739	Jandus	20
3740	Janurio Cicco	20
3741	Japi	20
3742	Jardim de Angicos	20
3743	Jardim de Piranhas	20
3744	Jardim do Serid	20
3745	Joo Cmara	20
3746	Joo Dias	20
3747	Jos da Penha	20
3748	Jucurutu	20
3749	Jundi	20
3750	Lagoa dAnta	20
3751	Lagoa de Pedras	20
3752	Lagoa de Velhos	20
3753	Lagoa Nova	20
3754	Lagoa Salgada	20
3755	Lajes	20
3756	Lajes Pintadas	20
3757	Lucrcia	20
3758	Lus Gomes	20
3759	Macaba	20
3760	Macau	20
3761	Major Sales	20
3762	Marcelino Vieira	20
3763	Martins	20
3764	Maxaranguape	20
3765	Messias Targino	20
3766	Montanhas	20
3767	Monte Alegre	20
3768	Monte das Gameleiras	20
3769	Mossor	20
3770	Natal	20
3771	Nsia Floresta	20
3772	Nova Cruz	20
3773	Olho-dgua do Borges	20
3774	Ouro Branco	20
3775	Paran	20
3776	Para	20
3777	Parazinho	20
3778	Parelhas	20
3779	Parnamirim	20
3780	Passa e Fica	20
3781	Passagem	20
3782	Patu	20
3783	Pau dos Ferros	20
3784	Pedra Grande	20
3785	Pedra Preta	20
3786	Pedro Avelino	20
3787	Pedro Velho	20
3788	Pendncias	20
3789	Piles	20
3790	Poo Branco	20
3791	Portalegre	20
3792	Porto do Mangue	20
3793	Presidente Juscelino	20
3794	Pureza	20
3795	Rafael Fernandes	20
3796	Rafael Godeiro	20
3797	Riacho da Cruz	20
3798	Riacho de Santana	20
3799	Riachuelo	20
3800	Rio do Fogo	20
3801	Rodolfo Fernandes	20
3802	Ruy Barbosa	20
3803	Santa Cruz	20
3804	Santa Maria	20
3805	Santana do Matos	20
3806	Santana do Serid	20
3807	Santo Antnio	20
3808	So Bento do Norte	20
3809	So Bento do Trair	20
3810	So Fernando	20
3811	So Francisco do Oeste	20
3812	So Gonalo do Amarante	20
3813	So Joo do Sabugi	20
3814	So Jos de Mipibu	20
3815	So Jos do Campestre	20
3816	So Jos do Serid	20
3817	So Miguel	20
3818	So Miguel do Gostoso	20
3819	So Paulo do Potengi	20
3820	So Pedro	20
3821	So Rafael	20
3822	So Tom	20
3823	So Vicente	20
3824	Senador Eli de Souza	20
3825	Senador Georgino Avelino	20
3826	Serra de So Bento	20
3827	Serra do Mel	20
3828	Serra Negra do Norte	20
3829	Serrinha	20
3830	Serrinha dos Pintos	20
3831	Severiano Melo	20
3832	Stio Novo	20
3833	Taboleiro Grande	20
3834	Taipu	20
3835	Tangar	20
3836	Tenente Ananias	20
3837	Tenente Laurentino Cruz	20
3838	Tibau	20
3839	Tibau do Sul	20
3840	Timbaba dos Batistas	20
3841	Touros	20
3842	Triunfo Potiguar	20
3843	Umarizal	20
3844	Upanema	20
3845	Vrzea	20
3846	Venha-Ver	20
3847	Vera Cruz	20
3848	Viosa	20
3849	Vila Flor	20
3850	Acegu	23
3851	gua Santa	23
3852	Agudo	23
3853	Ajuricaba	23
3854	Alecrim	23
3855	Alegrete	23
3856	Alegria	23
3857	Almirante Tamandar do Sul	23
3858	Alpestre	23
3859	Alto Alegre	23
3860	Alto Feliz	23
3861	Alvorada	23
3862	Amaral Ferrador	23
3863	Ametista do Sul	23
3864	Andr da Rocha	23
3865	Anta Gorda	23
3866	Antnio Prado	23
3867	Arambar	23
3868	Araric	23
3869	Aratiba	23
3870	Arroio do Meio	23
3871	Arroio do Padre	23
3872	Arroio do Sal	23
3873	Arroio do Tigre	23
3874	Arroio dos Ratos	23
3875	Arroio Grande	23
3876	Arvorezinha	23
3877	Augusto Pestana	23
3878	urea	23
3879	Bag	23
3880	Balnerio Pinhal	23
3881	Baro	23
3882	Baro de Cotegipe	23
3883	Baro do Triunfo	23
3884	Barra do Guarita	23
3885	Barra do Quara	23
3886	Barra do Ribeiro	23
3887	Barra do Rio Azul	23
3888	Barra Funda	23
3889	Barraco	23
3890	Barros Cassal	23
3891	Benjamin Constant do Sul	23
3892	Bento Gonalves	23
3893	Boa Vista das Misses	23
3894	Boa Vista do Buric	23
3895	Boa Vista do Cadeado	23
3896	Boa Vista do Incra	23
3897	Boa Vista do Sul	23
3898	Bom Jesus	23
3899	Bom Princpio	23
3900	Bom Progresso	23
3901	Bom Retiro do Sul	23
3902	Boqueiro do Leo	23
3903	Bossoroca	23
3904	Bozano	23
3905	Braga	23
3906	Brochier	23
3907	Buti	23
3908	Caapava do Sul	23
3909	Cacequi	23
3910	Cachoeira do Sul	23
3911	Cachoeirinha	23
3912	Cacique Doble	23
3913	Caibat	23
3914	Caiara	23
3915	Camaqu	23
3916	Camargo	23
3917	Cambar do Sul	23
3918	Campestre da Serra	23
3919	Campina das Misses	23
3920	Campinas do Sul	23
3921	Campo Bom	23
3922	Campo Novo	23
3923	Campos Borges	23
3924	Candelria	23
3925	Cndido Godi	23
3926	Candiota	23
3927	Canela	23
3928	Canguu	23
3929	Canoas	23
3930	Canudos do Vale	23
3931	Capo Bonito do Sul	23
3932	Capo da Canoa	23
3933	Capo do Cip	23
3934	Capo do Leo	23
3935	Capela de Santana	23
3936	Capito	23
3937	Capivari do Sul	23
3938	Cara	23
3939	Carazinho	23
3940	Carlos Barbosa	23
3941	Carlos Gomes	23
3942	Casca	23
3943	Caseiros	23
3944	Catupe	23
3945	Caxias do Sul	23
3946	Centenrio	23
3947	Cerrito	23
3948	Cerro Branco	23
3949	Cerro Grande	23
3950	Cerro Grande do Sul	23
3951	Cerro Largo	23
3952	Chapada	23
3953	Charqueadas	23
3954	Charrua	23
3955	Chiapeta	23
3956	Chu	23
3957	Chuvisca	23
3958	Cidreira	23
3959	Ciraco	23
3960	Colinas	23
3961	Colorado	23
3962	Condor	23
3963	Constantina	23
3964	Coqueiro Baixo	23
3965	Coqueiros do Sul	23
3966	Coronel Barros	23
3967	Coronel Bicaco	23
3968	Coronel Pilar	23
3969	Cotipor	23
3970	Coxilha	23
3971	Crissiumal	23
3972	Cristal	23
3973	Cristal do Sul	23
3974	Cruz Alta	23
3975	Cruzaltense	23
3976	Cruzeiro do Sul	23
3977	David Canabarro	23
3978	Derrubadas	23
3979	Dezesseis de Novembro	23
3980	Dilermando de Aguiar	23
3981	Dois Irmos	23
3982	Dois Irmos das Misses	23
3983	Dois Lajeados	23
3984	Dom Feliciano	23
3985	Dom Pedrito	23
3986	Dom Pedro de Alcntara	23
3987	Dona Francisca	23
3988	Doutor Maurcio Cardoso	23
3989	Doutor Ricardo	23
3990	Eldorado do Sul	23
3991	Encantado	23
3992	Encruzilhada do Sul	23
3993	Engenho Velho	23
3994	Entre Rios do Sul	23
3995	Entre-Ijus	23
3996	Erebango	23
3997	Erechim	23
3998	Ernestina	23
3999	Erval Grande	23
4000	Erval Seco	23
4001	Esmeralda	23
4002	Esperana do Sul	23
4003	Espumoso	23
4004	Estao	23
4005	Estncia Velha	23
4006	Esteio	23
4007	Estrela	23
4008	Estrela Velha	23
4009	Eugnio de Castro	23
4010	Fagundes Varela	23
4011	Farroupilha	23
4012	Faxinal do Soturno	23
4013	Faxinalzinho	23
4014	Fazenda Vilanova	23
4015	Feliz	23
4016	Flores da Cunha	23
4017	Floriano Peixoto	23
4018	Fontoura Xavier	23
4019	Formigueiro	23
4020	Forquetinha	23
4021	Fortaleza dos Valos	23
4022	Frederico Westphalen	23
4023	Garibaldi	23
4024	Garruchos	23
4025	Gaurama	23
4026	General Cmara	23
4027	Gentil	23
4028	Getlio Vargas	23
4029	Giru	23
4030	Glorinha	23
4031	Gramado	23
4032	Gramado dos Loureiros	23
4033	Gramado Xavier	23
4034	Gravata	23
4035	Guabiju	23
4036	Guaba	23
4037	Guapor	23
4038	Guarani das Misses	23
4039	Harmonia	23
4040	Herval	23
4041	Herveiras	23
4042	Horizontina	23
4043	Hulha Negra	23
4044	Humait	23
4045	Ibarama	23
4046	Ibia	23
4047	Ibiraiaras	23
4048	Ibirapuit	23
4049	Ibirub	23
4050	Igrejinha	23
4051	Iju	23
4052	Ilpolis	23
4053	Imb	23
4054	Imigrante	23
4055	Independncia	23
4056	Inhacor	23
4057	Ip	23
4058	Ipiranga do Sul	23
4059	Ira	23
4060	Itaara	23
4061	Itacurubi	23
4062	Itapuca	23
4063	Itaqui	23
4064	Itati	23
4065	Itatiba do Sul	23
4066	Ivor	23
4067	Ivoti	23
4068	Jaboticaba	23
4069	Jacuizinho	23
4070	Jacutinga	23
4071	Jaguaro	23
4072	Jaguari	23
4073	Jaquirana	23
4074	Jari	23
4075	Jia	23
4076	Jlio de Castilhos	23
4077	Lagoa Bonita do Sul	23
4078	Lagoa dos Trs Cantos	23
4079	Lagoa Vermelha	23
4080	Lagoo	23
4081	Lajeado	23
4082	Lajeado do Bugre	23
4083	Lavras do Sul	23
4084	Liberato Salzano	23
4085	Lindolfo Collor	23
4086	Linha Nova	23
4087	Maambara	23
4088	Machadinho	23
4089	Mampituba	23
4090	Manoel Viana	23
4091	Maquin	23
4092	Marat	23
4093	Marau	23
4094	Marcelino Ramos	23
4095	Mariana Pimentel	23
4096	Mariano Moro	23
4097	Marques de Souza	23
4098	Mata	23
4099	Mato Castelhano	23
4100	Mato Leito	23
4101	Mato Queimado	23
4102	Maximiliano de Almeida	23
4103	Minas do Leo	23
4104	Miragua	23
4105	Montauri	23
4106	Monte Alegre dos Campos	23
4107	Monte Belo do Sul	23
4108	Montenegro	23
4109	Mormao	23
4110	Morrinhos do Sul	23
4111	Morro Redondo	23
4112	Morro Reuter	23
4113	Mostardas	23
4114	Muum	23
4115	Muitos Capes	23
4116	Muliterno	23
4117	No-Me-Toque	23
4118	Nicolau Vergueiro	23
4119	Nonoai	23
4120	Nova Alvorada	23
4121	Nova Ara	23
4122	Nova Bassano	23
4123	Nova Boa Vista	23
4124	Nova Brscia	23
4125	Nova Candelria	23
4126	Nova Esperana do Sul	23
4127	Nova Hartz	23
4128	Nova Pdua	23
4129	Nova Palma	23
4130	Nova Petrpolis	23
4131	Nova Prata	23
4132	Nova Ramada	23
4133	Nova Roma do Sul	23
4134	Nova Santa Rita	23
4135	Novo Barreiro	23
4136	Novo Cabrais	23
4137	Novo Hamburgo	23
4138	Novo Machado	23
4139	Novo Tiradentes	23
4140	Novo Xingu	23
4141	Osrio	23
4142	Paim Filho	23
4143	Palmares do Sul	23
4144	Palmeira das Misses	23
4145	Palmitinho	23
4146	Panambi	23
4147	Pantano Grande	23
4148	Para	23
4149	Paraso do Sul	23
4150	Pareci Novo	23
4151	Parob	23
4152	Passa Sete	23
4153	Passo do Sobrado	23
4154	Passo Fundo	23
4155	Paulo Bento	23
4156	Paverama	23
4157	Pedras Altas	23
4158	Pedro Osrio	23
4159	Pejuara	23
4160	Pelotas	23
4161	Picada Caf	23
4162	Pinhal	23
4163	Pinhal da Serra	23
4164	Pinhal Grande	23
4165	Pinheirinho do Vale	23
4166	Pinheiro Machado	23
4167	Pirap	23
4168	Piratini	23
4169	Planalto	23
4170	Poo das Antas	23
4171	Ponto	23
4172	Ponte Preta	23
4173	Porto	23
4174	Porto Alegre	23
4175	Porto Lucena	23
4176	Porto Mau	23
4177	Porto Vera Cruz	23
4178	Porto Xavier	23
4179	Pouso Novo	23
4180	Presidente Lucena	23
4181	Progresso	23
4182	Protsio Alves	23
4183	Putinga	23
4184	Quara	23
4185	Quatro Irmos	23
4186	Quevedos	23
4187	Quinze de Novembro	23
4188	Redentora	23
4189	Relvado	23
4190	Restinga Seca	23
4191	Rio dos ndios	23
4192	Rio Grande	23
4193	Rio Pardo	23
4194	Riozinho	23
4195	Roca Sales	23
4196	Rodeio Bonito	23
4197	Rolador	23
4198	Rolante	23
4199	Ronda Alta	23
4200	Rondinha	23
4201	Roque Gonzales	23
4202	Rosrio do Sul	23
4203	Sagrada Famlia	23
4204	Saldanha Marinho	23
4205	Salto do Jacu	23
4206	Salvador das Misses	23
4207	Salvador do Sul	23
4208	Sananduva	23
4209	Santa Brbara do Sul	23
4210	Santa Ceclia do Sul	23
4211	Santa Clara do Sul	23
4212	Santa Cruz do Sul	23
4213	Santa Margarida do Sul	23
4214	Santa Maria	23
4215	Santa Maria do Herval	23
4216	Santa Rosa	23
4217	Santa Tereza	23
4218	Santa Vitria do Palmar	23
4219	Santana da Boa Vista	23
4220	Santana do Livramento	23
4221	Santiago	23
4222	Santo ngelo	23
4223	Santo Antnio da Patrulha	23
4224	Santo Antnio das Misses	23
4225	Santo Antnio do Palma	23
4226	Santo Antnio do Planalto	23
4227	Santo Augusto	23
4228	Santo Cristo	23
4229	Santo Expedito do Sul	23
4230	So Borja	23
4231	So Domingos do Sul	23
4232	So Francisco de Assis	23
4233	So Francisco de Paula	23
4234	So Gabriel	23
4235	So Jernimo	23
4236	So Joo da Urtiga	23
4237	So Joo do Polsine	23
4238	So Jorge	23
4239	So Jos das Misses	23
4240	So Jos do Herval	23
4241	So Jos do Hortncio	23
4242	So Jos do Inhacor	23
4243	So Jos do Norte	23
4244	So Jos do Ouro	23
4245	So Jos do Sul	23
4246	So Jos dos Ausentes	23
4247	So Leopoldo	23
4248	So Loureno do Sul	23
4249	So Luiz Gonzaga	23
4250	So Marcos	23
4251	So Martinho	23
4252	So Martinho da Serra	23
4253	So Miguel das Misses	23
4254	So Nicolau	23
4255	So Paulo das Misses	23
4256	So Pedro da Serra	23
4257	So Pedro das Misses	23
4258	So Pedro do Buti	23
4259	So Pedro do Sul	23
4260	So Sebastio do Ca	23
4261	So Sep	23
4262	So Valentim	23
4263	So Valentim do Sul	23
4264	So Valrio do Sul	23
4265	So Vendelino	23
4266	So Vicente do Sul	23
4267	Sapiranga	23
4268	Sapucaia do Sul	23
4269	Sarandi	23
4270	Seberi	23
4271	Sede Nova	23
4272	Segredo	23
4273	Selbach	23
4274	Senador Salgado Filho	23
4275	Sentinela do Sul	23
4276	Serafina Corra	23
4277	Srio	23
4278	Serto	23
4279	Serto Santana	23
4280	Sete de Setembro	23
4281	Severiano de Almeida	23
4282	Silveira Martins	23
4283	Sinimbu	23
4284	Sobradinho	23
4285	Soledade	23
4286	Taba	23
4287	Tapejara	23
4288	Tapera	23
4289	Tapes	23
4290	Taquara	23
4291	Taquari	23
4292	Taquaruu do Sul	23
4293	Tavares	23
4294	Tenente Portela	23
4295	Terra de Areia	23
4296	Teutnia	23
4297	Tio Hugo	23
4298	Tiradentes do Sul	23
4299	Toropi	23
4300	Torres	23
4301	Tramanda	23
4302	Travesseiro	23
4303	Trs Arroios	23
4304	Trs Cachoeiras	23
4305	Trs Coroas	23
4306	Trs de Maio	23
4307	Trs Forquilhas	23
4308	Trs Palmeiras	23
4309	Trs Passos	23
4310	Trindade do Sul	23
4311	Triunfo	23
4312	Tucunduva	23
4313	Tunas	23
4314	Tupanci do Sul	23
4315	Tupanciret	23
4316	Tupandi	23
4317	Tuparendi	23
4318	Turuu	23
4319	Ubiretama	23
4320	Unio da Serra	23
4321	Unistalda	23
4322	Uruguaiana	23
4323	Vacaria	23
4324	Vale do Sol	23
4325	Vale Real	23
4326	Vale Verde	23
4327	Vanini	23
4328	Venncio Aires	23
4329	Vera Cruz	23
4330	Veranpolis	23
4331	Vespasiano Correa	23
4332	Viadutos	23
4333	Viamo	23
4334	Vicente Dutra	23
4335	Victor Graeff	23
4336	Vila Flores	23
4337	Vila Lngaro	23
4338	Vila Maria	23
4339	Vila Nova do Sul	23
4340	Vista Alegre	23
4341	Vista Alegre do Prata	23
4342	Vista Gacha	23
4343	Vitria das Misses	23
4344	Westflia	23
4345	Xangri-l	23
4346	Alta Floresta dOeste	21
4347	Alto Alegre dos Parecis	21
4348	Alto Paraso	21
4349	Alvorada dOeste	21
4350	Ariquemes	21
4351	Buritis	21
4352	Cabixi	21
4353	Cacaulndia	21
4354	Cacoal	21
4355	Campo Novo de Rondnia	21
4356	Candeias do Jamari	21
4357	Castanheiras	21
4358	Cerejeiras	21
4359	Chupinguaia	21
4360	Colorado do Oeste	21
4361	Corumbiara	21
4362	Costa Marques	21
4363	Cujubim	21
4364	Espigo dOeste	21
4365	Governador Jorge Teixeira	21
4366	Guajar-Mirim	21
4367	Itapu do Oeste	21
4368	Jaru	21
4369	Ji-Paran	21
4370	Machadinho dOeste	21
4371	Ministro Andreazza	21
4372	Mirante da Serra	21
4373	Monte Negro	21
4374	Nova Brasilndia dOeste	21
4375	Nova Mamor	21
4376	Nova Unio	21
4377	Novo Horizonte do Oeste	21
4378	Ouro Preto do Oeste	21
4379	Parecis	21
4380	Pimenta Bueno	21
4381	Pimenteiras do Oeste	21
4382	Porto Velho	21
4383	Presidente Mdici	21
4384	Primavera de Rondnia	21
4385	Rio Crespo	21
4386	Rolim de Moura	21
4387	Santa Luzia dOeste	21
4388	So Felipe dOeste	21
4389	So Francisco do Guapor	21
4390	So Miguel do Guapor	21
4391	Seringueiras	21
4392	Teixeirpolis	21
4393	Theobroma	21
4394	Urup	21
4395	Vale do Anari	21
4396	Vale do Paraso	21
4397	Vilhena	21
4398	Alto Alegre	22
4399	Amajari	22
4400	Boa Vista	22
4401	Bonfim	22
4402	Cant	22
4403	Caracara	22
4404	Caroebe	22
4405	Iracema	22
4406	Mucaja	22
4407	Normandia	22
4408	Pacaraima	22
4409	Rorainpolis	22
4410	So Joo da Baliza	22
4411	So Luiz	22
4412	Uiramut	22
4413	Abdon Batista	24
4414	Abelardo Luz	24
4415	Agrolndia	24
4416	Agronmica	24
4417	gua Doce	24
4418	guas de Chapec	24
4419	guas Frias	24
4420	guas Mornas	24
4421	Alfredo Wagner	24
4422	Alto Bela Vista	24
4423	Anchieta	24
4424	Angelina	24
4425	Anita Garibaldi	24
4426	Anitpolis	24
4427	Antnio Carlos	24
4428	Apina	24
4429	Arabut	24
4430	Araquari	24
4431	Ararangu	24
4432	Armazm	24
4433	Arroio Trinta	24
4434	Arvoredo	24
4435	Ascurra	24
4436	Atalanta	24
4437	Aurora	24
4438	Balnerio Arroio do Silva	24
4439	Balnerio Barra do Sul	24
4440	Balnerio Cambori	24
4441	Balnerio Gaivota	24
4442	Bandeirante	24
4443	Barra Bonita	24
4444	Barra Velha	24
4445	Bela Vista do Toldo	24
4446	Belmonte	24
4447	Benedito Novo	24
4448	Biguau	24
4449	Blumenau	24
4450	Bocaina do Sul	24
4451	Bom Jardim da Serra	24
4452	Bom Jesus	24
4453	Bom Jesus do Oeste	24
4454	Bom Retiro	24
4455	Bombinhas	24
4456	Botuver	24
4457	Brao do Norte	24
4458	Brao do Trombudo	24
4459	Brunpolis	24
4460	Brusque	24
4461	Caador	24
4462	Caibi	24
4463	Calmon	24
4464	Cambori	24
4465	Campo Alegre	24
4466	Campo Belo do Sul	24
4467	Campo Er	24
4468	Campos Novos	24
4469	Canelinha	24
4470	Canoinhas	24
4471	Capo Alto	24
4472	Capinzal	24
4473	Capivari de Baixo	24
4474	Catanduvas	24
4475	Caxambu do Sul	24
4476	Celso Ramos	24
4477	Cerro Negro	24
4478	Chapado do Lageado	24
4479	Chapec	24
4480	Cocal do Sul	24
4481	Concrdia	24
4482	Cordilheira Alta	24
4483	Coronel Freitas	24
4484	Coronel Martins	24
4485	Correia Pinto	24
4486	Corup	24
4487	Cricima	24
4488	Cunha Por	24
4489	Cunhata	24
4490	Curitibanos	24
4491	Descanso	24
4492	Dionsio Cerqueira	24
4493	Dona Emma	24
4494	Doutor Pedrinho	24
4495	Entre Rios	24
4496	Ermo	24
4497	Erval Velho	24
4498	Faxinal dos Guedes	24
4499	Flor do Serto	24
4500	Florianpolis	24
4501	Formosa do Sul	24
4502	Forquilhinha	24
4503	Fraiburgo	24
4504	Frei Rogrio	24
4505	Galvo	24
4506	Garopaba	24
4507	Garuva	24
4508	Gaspar	24
4509	Governador Celso Ramos	24
4510	Gro Par	24
4511	Gravatal	24
4512	Guabiruba	24
4513	Guaraciaba	24
4514	Guaramirim	24
4515	Guaruj do Sul	24
4516	Guatamb	24
4517	Herval dOeste	24
4518	Ibiam	24
4519	Ibicar	24
4520	Ibirama	24
4521	Iara	24
4522	Ilhota	24
4523	Imaru	24
4524	Imbituba	24
4525	Imbuia	24
4526	Indaial	24
4527	Iomer	24
4528	Ipira	24
4529	Ipor do Oeste	24
4530	Ipuau	24
4531	Ipumirim	24
4532	Iraceminha	24
4533	Irani	24
4534	Irati	24
4535	Irinepolis	24
4536	It	24
4537	Itaipolis	24
4538	Itaja	24
4539	Itapema	24
4540	Itapiranga	24
4541	Itapo	24
4542	Ituporanga	24
4543	Jabor	24
4544	Jacinto Machado	24
4545	Jaguaruna	24
4546	Jaragu do Sul	24
4547	Jardinpolis	24
4548	Joaaba	24
4549	Joinville	24
4550	Jos Boiteux	24
4551	Jupi	24
4552	Lacerdpolis	24
4553	Lages	24
4554	Laguna	24
4555	Lajeado Grande	24
4556	Laurentino	24
4557	Lauro Muller	24
4558	Lebon Rgis	24
4559	Leoberto Leal	24
4560	Lindia do Sul	24
4561	Lontras	24
4562	Luiz Alves	24
4563	Luzerna	24
4564	Macieira	24
4565	Mafra	24
4566	Major Gercino	24
4567	Major Vieira	24
4568	Maracaj	24
4569	Maravilha	24
4570	Marema	24
4571	Massaranduba	24
4572	Matos Costa	24
4573	Meleiro	24
4574	Mirim Doce	24
4575	Modelo	24
4576	Monda	24
4577	Monte Carlo	24
4578	Monte Castelo	24
4579	Morro da Fumaa	24
4580	Morro Grande	24
4581	Navegantes	24
4582	Nova Erechim	24
4583	Nova Itaberaba	24
4584	Nova Trento	24
4585	Nova Veneza	24
4586	Novo Horizonte	24
4587	Orleans	24
4588	Otaclio Costa	24
4589	Ouro	24
4590	Ouro Verde	24
4591	Paial	24
4592	Painel	24
4593	Palhoa	24
4594	Palma Sola	24
4595	Palmeira	24
4596	Palmitos	24
4597	Papanduva	24
4598	Paraso	24
4599	Passo de Torres	24
4600	Passos Maia	24
4601	Paulo Lopes	24
4602	Pedras Grandes	24
4603	Penha	24
4604	Peritiba	24
4605	Petrolndia	24
4606	Piarras	24
4607	Pinhalzinho	24
4608	Pinheiro Preto	24
4609	Piratuba	24
4610	Planalto Alegre	24
4611	Pomerode	24
4612	Ponte Alta	24
4613	Ponte Alta do Norte	24
4614	Ponte Serrada	24
4615	Porto Belo	24
4616	Porto Unio	24
4617	Pouso Redondo	24
4618	Praia Grande	24
4619	Presidente Castelo Branco	24
4620	Presidente Getlio	24
4621	Presidente Nereu	24
4622	Princesa	24
4623	Quilombo	24
4624	Rancho Queimado	24
4625	Rio das Antas	24
4626	Rio do Campo	24
4627	Rio do Oeste	24
4628	Rio do Sul	24
4629	Rio dos Cedros	24
4630	Rio Fortuna	24
4631	Rio Negrinho	24
4632	Rio Rufino	24
4633	Riqueza	24
4634	Rodeio	24
4635	Romelndia	24
4636	Salete	24
4637	Saltinho	24
4638	Salto Veloso	24
4639	Sango	24
4640	Santa Ceclia	24
4641	Santa Helena	24
4642	Santa Rosa de Lima	24
4643	Santa Rosa do Sul	24
4644	Santa Terezinha	24
4645	Santa Terezinha do Progresso	24
4646	Santiago do Sul	24
4647	Santo Amaro da Imperatriz	24
4648	So Bento do Sul	24
4649	So Bernardino	24
4650	So Bonifcio	24
4651	So Carlos	24
4652	So Cristovo do Sul	24
4653	So Domingos	24
4654	So Francisco do Sul	24
4655	So Joo Batista	24
4656	So Joo do Itaperi	24
4657	So Joo do Oeste	24
4658	So Joo do Sul	24
4659	So Joaquim	24
4660	So Jos	24
4661	So Jos do Cedro	24
4662	So Jos do Cerrito	24
4663	So Loureno do Oeste	24
4664	So Ludgero	24
4665	So Martinho	24
4666	So Miguel da Boa Vista	24
4667	So Miguel do Oeste	24
4668	So Pedro de Alcntara	24
4669	Saudades	24
4670	Schroeder	24
4671	Seara	24
4672	Serra Alta	24
4673	Siderpolis	24
4674	Sombrio	24
4675	Sul Brasil	24
4676	Tai	24
4677	Tangar	24
4678	Tigrinhos	24
4679	Tijucas	24
4680	Timb do Sul	24
4681	Timb	24
4682	Timb Grande	24
4683	Trs Barras	24
4684	Treviso	24
4685	Treze de Maio	24
4686	Treze Tlias	24
4687	Trombudo Central	24
4688	Tubaro	24
4689	Tunpolis	24
4690	Turvo	24
4691	Unio do Oeste	24
4692	Urubici	24
4693	Urupema	24
4694	Urussanga	24
4695	Vargeo	24
4696	Vargem	24
4697	Vargem Bonita	24
4698	Vidal Ramos	24
4699	Videira	24
4700	Vitor Meireles	24
4701	Witmarsum	24
4702	Xanxer	24
4703	Xavantina	24
4704	Xaxim	24
4705	Zorta	24
4706	Adamantina	26
4707	Adolfo	26
4708	Agua	26
4709	guas da Prata	26
4710	guas de Lindia	26
4711	guas de Santa Brbara	26
4712	guas de So Pedro	26
4713	Agudos	26
4714	Alambari	26
4715	Alfredo Marcondes	26
4716	Altair	26
4717	Altinpolis	26
4718	Alto Alegre	26
4719	Alumnio	26
4720	lvares Florence	26
4721	lvares Machado	26
4722	lvaro de Carvalho	26
4723	Alvinlndia	26
4724	Americana	26
4725	Amrico Brasiliense	26
4726	Amrico de Campos	26
4727	Amparo	26
4728	Analndia	26
4729	Andradina	26
4730	Angatuba	26
4731	Anhembi	26
4732	Anhumas	26
4733	Aparecida	26
4734	Aparecida dOeste	26
4735	Apia	26
4736	Araariguama	26
4737	Araatuba	26
4738	Araoiaba da Serra	26
4739	Aramina	26
4740	Arandu	26
4741	Arape	26
4742	Araraquara	26
4743	Araras	26
4744	Arco-ris	26
4745	Arealva	26
4746	Areias	26
4747	Areipolis	26
4748	Ariranha	26
4749	Artur Nogueira	26
4750	Aruj	26
4751	Aspsia	26
4752	Assis	26
4753	Atibaia	26
4754	Auriflama	26
4755	Ava	26
4756	Avanhandava	26
4757	Avar	26
4758	Bady Bassitt	26
4759	Balbinos	26
4760	Blsamo	26
4761	Bananal	26
4762	Baro de Antonina	26
4763	Barbosa	26
4764	Bariri	26
4765	Barra Bonita	26
4766	Barra do Chapu	26
4767	Barra do Turvo	26
4768	Barretos	26
4769	Barrinha	26
4770	Barueri	26
4771	Bastos	26
4772	Batatais	26
4773	Bauru	26
4774	Bebedouro	26
4775	Bento de Abreu	26
4776	Bernardino de Campos	26
4777	Bertioga	26
4778	Bilac	26
4779	Birigui	26
4780	Biritiba-Mirim	26
4781	Boa Esperana do Sul	26
4782	Bocaina	26
4783	Bofete	26
4784	Boituva	26
4785	Bom Jesus dos Perdes	26
4786	Bom Sucesso de Itarar	26
4787	Bor	26
4788	Boracia	26
4789	Borborema	26
4790	Borebi	26
4791	Botucatu	26
4792	Bragana Paulista	26
4793	Brana	26
4794	Brejo Alegre	26
4795	Brodowski	26
4796	Brotas	26
4797	Buri	26
4798	Buritama	26
4799	Buritizal	26
4800	Cabrlia Paulista	26
4801	Cabreva	26
4802	Caapava	26
4803	Cachoeira Paulista	26
4804	Caconde	26
4805	Cafelndia	26
4806	Caiabu	26
4807	Caieiras	26
4808	Caiu	26
4809	Cajamar	26
4810	Cajati	26
4811	Cajobi	26
4812	Cajuru	26
4813	Campina do Monte Alegre	26
4814	Campinas	26
4815	Campo Limpo Paulista	26
4816	Campos do Jordo	26
4817	Campos Novos Paulista	26
4818	Canania	26
4819	Canas	26
4820	Cndido Mota	26
4821	Cndido Rodrigues	26
4822	Canitar	26
4823	Capo Bonito	26
4824	Capela do Alto	26
4825	Capivari	26
4826	Caraguatatuba	26
4827	Carapicuba	26
4828	Cardoso	26
4829	Casa Branca	26
4830	Cssia dos Coqueiros	26
4831	Castilho	26
4832	Catanduva	26
4833	Catigu	26
4834	Cedral	26
4835	Cerqueira Csar	26
4836	Cerquilho	26
4837	Cesrio Lange	26
4838	Charqueada	26
4839	Chavantes	26
4840	Clementina	26
4841	Colina	26
4842	Colmbia	26
4843	Conchal	26
4844	Conchas	26
4845	Cordeirpolis	26
4846	Coroados	26
4847	Coronel Macedo	26
4848	Corumbata	26
4849	Cosmpolis	26
4850	Cosmorama	26
4851	Cotia	26
4852	Cravinhos	26
4853	Cristais Paulista	26
4854	Cruzlia	26
4855	Cruzeiro	26
4856	Cubato	26
4857	Cunha	26
4858	Descalvado	26
4859	Diadema	26
4860	Dirce Reis	26
4861	Divinolndia	26
4862	Dobrada	26
4863	Dois Crregos	26
4864	Dolcinpolis	26
4865	Dourado	26
4866	Dracena	26
4867	Duartina	26
4868	Dumont	26
4869	Echapor	26
4870	Eldorado	26
4871	Elias Fausto	26
4872	Elisirio	26
4873	Embaba	26
4874	Embu	26
4875	Embu-Guau	26
4876	Emilianpolis	26
4877	Engenheiro Coelho	26
4878	Esprito Santo do Pinhal	26
4879	Esprito Santo do Turvo	26
4880	Estiva Gerbi	26
4881	Estrela dOeste	26
4882	Estrela do Norte	26
4883	Euclides da Cunha Paulista	26
4884	Fartura	26
4885	Fernando Prestes	26
4886	Fernandpolis	26
4887	Ferno	26
4888	Ferraz de Vasconcelos	26
4889	Flora Rica	26
4890	Floreal	26
4891	Flrida Paulista	26
4892	Flornia	26
4893	Franca	26
4894	Francisco Morato	26
4895	Franco da Rocha	26
4896	Gabriel Monteiro	26
4897	Glia	26
4898	Gara	26
4899	Gasto Vidigal	26
4900	Gavio Peixoto	26
4901	General Salgado	26
4902	Getulina	26
4903	Glicrio	26
4904	Guaiara	26
4905	Guaimb	26
4906	Guara	26
4907	Guapiau	26
4908	Guapiara	26
4909	Guar	26
4910	Guaraa	26
4911	Guaraci	26
4912	Guarani dOeste	26
4913	Guarant	26
4914	Guararapes	26
4915	Guararema	26
4916	Guaratinguet	26
4917	Guare	26
4918	Guariba	26
4919	Guaruj	26
4920	Guarulhos	26
4921	Guatapar	26
4922	Guzolndia	26
4923	Herculndia	26
4924	Holambra	26
4925	Hortolndia	26
4926	Iacanga	26
4927	Iacri	26
4928	Iaras	26
4929	Ibat	26
4930	Ibir	26
4931	Ibirarema	26
4932	Ibitinga	26
4933	Ibina	26
4934	Icm	26
4935	Iep	26
4936	Igarau do Tiet	26
4937	Igarapava	26
4938	Igarat	26
4939	Iguape	26
4940	Ilha Comprida	26
4941	Ilha Solteira	26
4942	Ilhabela	26
4943	Indaiatuba	26
4944	Indiana	26
4945	Indiapor	26
4946	Inbia Paulista	26
4947	Ipaussu	26
4948	Iper	26
4949	Ipena	26
4950	Ipigu	26
4951	Iporanga	26
4952	Ipu	26
4953	Iracempolis	26
4954	Irapu	26
4955	Irapuru	26
4956	Itaber	26
4957	Ita	26
4958	Itajobi	26
4959	Itaju	26
4960	Itanham	26
4961	Itaca	26
4962	Itapecerica da Serra	26
4963	Itapetininga	26
4964	Itapeva	26
4965	Itapevi	26
4966	Itapira	26
4967	Itapirapu Paulista	26
4968	Itpolis	26
4969	Itaporanga	26
4970	Itapu	26
4971	Itapura	26
4972	Itaquaquecetuba	26
4973	Itarar	26
4974	Itariri	26
4975	Itatiba	26
4976	Itatinga	26
4977	Itirapina	26
4978	Itirapu	26
4979	Itobi	26
4980	Itu	26
4981	Itupeva	26
4982	Ituverava	26
4983	Jaborandi	26
4984	Jaboticabal	26
4985	Jacare	26
4986	Jaci	26
4987	Jacupiranga	26
4988	Jaguarina	26
4989	Jales	26
4990	Jambeiro	26
4991	Jandira	26
4992	Jardinpolis	26
4993	Jarinu	26
4994	Ja	26
4995	Jeriquara	26
4996	Joanpolis	26
4997	Joo Ramalho	26
4998	Jos Bonifcio	26
4999	Jlio Mesquita	26
5000	Jumirim	26
5001	Jundia	26
5002	Junqueirpolis	26
5003	Juqui	26
5004	Juquitiba	26
5005	Lagoinha	26
5006	Laranjal Paulista	26
5007	Lavnia	26
5008	Lavrinhas	26
5009	Leme	26
5010	Lenis Paulista	26
5011	Limeira	26
5012	Lindia	26
5013	Lins	26
5014	Lorena	26
5015	Lourdes	26
5016	Louveira	26
5017	Luclia	26
5018	Lucianpolis	26
5019	Lus Antnio	26
5020	Luizinia	26
5021	Luprcio	26
5022	Lutcia	26
5023	Macatuba	26
5024	Macaubal	26
5025	Macednia	26
5026	Magda	26
5027	Mairinque	26
5028	Mairipor	26
5029	Manduri	26
5030	Marab Paulista	26
5031	Maraca	26
5032	Marapoama	26
5033	Maripolis	26
5034	Marlia	26
5035	Marinpolis	26
5036	Martinpolis	26
5037	Mato	26
5038	Mau	26
5039	Mendona	26
5040	Meridiano	26
5041	Mespolis	26
5042	Miguelpolis	26
5043	Mineiros do Tiet	26
5044	Mira Estrela	26
5045	Miracatu	26
5046	Mirandpolis	26
5047	Mirante do Paranapanema	26
5048	Mirassol	26
5049	Mirassolndia	26
5050	Mococa	26
5051	Mogi das Cruzes	26
5052	Mogi Guau	26
5053	Moji Mirim	26
5054	Mombuca	26
5055	Mones	26
5056	Mongagu	26
5057	Monte Alegre do Sul	26
5058	Monte Alto	26
5059	Monte Aprazvel	26
5060	Monte Azul Paulista	26
5061	Monte Castelo	26
5062	Monte Mor	26
5063	Monteiro Lobato	26
5064	Morro Agudo	26
5065	Morungaba	26
5066	Motuca	26
5067	Murutinga do Sul	26
5068	Nantes	26
5069	Narandiba	26
5070	Natividade da Serra	26
5071	Nazar Paulista	26
5072	Neves Paulista	26
5073	Nhandeara	26
5074	Nipo	26
5075	Nova Aliana	26
5076	Nova Campina	26
5077	Nova Cana Paulista	26
5078	Nova Castilho	26
5079	Nova Europa	26
5080	Nova Granada	26
5081	Nova Guataporanga	26
5082	Nova Independncia	26
5083	Nova Luzitnia	26
5084	Nova Odessa	26
5085	Novais	26
5086	Novo Horizonte	26
5087	Nuporanga	26
5088	Ocauu	26
5089	leo	26
5090	Olmpia	26
5091	Onda Verde	26
5092	Oriente	26
5093	Orindiva	26
5094	Orlndia	26
5095	Osasco	26
5096	Oscar Bressane	26
5097	Osvaldo Cruz	26
5098	Ourinhos	26
5099	Ouro Verde	26
5100	Ouroeste	26
5101	Pacaembu	26
5102	Palestina	26
5103	Palmares Paulista	26
5104	Palmeira dOeste	26
5105	Palmital	26
5106	Panorama	26
5107	Paraguau Paulista	26
5108	Paraibuna	26
5109	Paraso	26
5110	Paranapanema	26
5111	Paranapu	26
5112	Parapu	26
5113	Pardinho	26
5114	Pariquera-Au	26
5115	Parisi	26
5116	Patrocnio Paulista	26
5117	Paulicia	26
5118	Paulnia	26
5119	Paulistnia	26
5120	Paulo de Faria	26
5121	Pederneiras	26
5122	Pedra Bela	26
5123	Pedranpolis	26
5124	Pedregulho	26
5125	Pedreira	26
5126	Pedrinhas Paulista	26
5127	Pedro de Toledo	26
5128	Penpolis	26
5129	Pereira Barreto	26
5130	Pereiras	26
5131	Perube	26
5132	Piacatu	26
5133	Piedade	26
5134	Pilar do Sul	26
5135	Pindamonhangaba	26
5136	Pindorama	26
5137	Pinhalzinho	26
5138	Piquerobi	26
5139	Piquete	26
5140	Piracaia	26
5141	Piracicaba	26
5142	Piraju	26
5143	Piraju	26
5144	Pirangi	26
5145	Pirapora do Bom Jesus	26
5146	Pirapozinho	26
5147	Pirassununga	26
5148	Piratininga	26
5149	Pitangueiras	26
5150	Planalto	26
5151	Platina	26
5152	Po	26
5153	Poloni	26
5154	Pompia	26
5155	Ponga	26
5156	Pontal	26
5157	Pontalinda	26
5158	Pontes Gestal	26
5159	Populina	26
5160	Porangaba	26
5161	Porto Feliz	26
5162	Porto Ferreira	26
5163	Potim	26
5164	Potirendaba	26
5165	Pracinha	26
5166	Pradpolis	26
5167	Praia Grande	26
5168	Pratnia	26
5169	Presidente Alves	26
5170	Presidente Bernardes	26
5171	Presidente Epitcio	26
5172	Presidente Prudente	26
5173	Presidente Venceslau	26
5174	Promisso	26
5175	Quadra	26
5176	Quat	26
5177	Queiroz	26
5178	Queluz	26
5179	Quintana	26
5180	Rafard	26
5181	Rancharia	26
5182	Redeno da Serra	26
5183	Regente Feij	26
5184	Reginpolis	26
5185	Registro	26
5186	Restinga	26
5187	Ribeira	26
5188	Ribeiro Bonito	26
5189	Ribeiro Branco	26
5190	Ribeiro Corrente	26
5191	Ribeiro do Sul	26
5192	Ribeiro dos ndios	26
5193	Ribeiro Grande	26
5194	Ribeiro Pires	26
5195	Ribeiro Preto	26
5196	Rifaina	26
5197	Rinco	26
5198	Rinpolis	26
5199	Rio Claro	26
5200	Rio das Pedras	26
5201	Rio Grande da Serra	26
5202	Riolndia	26
5203	Riversul	26
5204	Rosana	26
5205	Roseira	26
5206	Rubicea	26
5207	Rubinia	26
5208	Sabino	26
5209	Sagres	26
5210	Sales	26
5211	Sales Oliveira	26
5212	Salespolis	26
5213	Salmouro	26
5214	Saltinho	26
5215	Salto	26
5216	Salto de Pirapora	26
5217	Salto Grande	26
5218	Sandovalina	26
5219	Santa Adlia	26
5220	Santa Albertina	26
5221	Santa Brbara dOeste	26
5222	Santa Branca	26
5223	Santa Clara dOeste	26
5224	Santa Cruz da Conceio	26
5225	Santa Cruz da Esperana	26
5226	Santa Cruz das Palmeiras	26
5227	Santa Cruz do Rio Pardo	26
5228	Santa Ernestina	26
5229	Santa F do Sul	26
5230	Santa Gertrudes	26
5231	Santa Isabel	26
5232	Santa Lcia	26
5233	Santa Maria da Serra	26
5234	Santa Mercedes	26
5235	Santa Rita dOeste	26
5236	Santa Rita do Passa Quatro	26
5237	Santa Rosa de Viterbo	26
5238	Santa Salete	26
5239	Santana da Ponte Pensa	26
5240	Santana de Parnaba	26
5241	Santo Anastcio	26
5242	Santo Andr	26
5243	Santo Antnio da Alegria	26
5244	Santo Antnio de Posse	26
5245	Santo Antnio do Aracangu	26
5246	Santo Antnio do Jardim	26
5247	Santo Antnio do Pinhal	26
5248	Santo Expedito	26
5249	Santpolis do Aguape	26
5250	Santos	26
5251	So Bento do Sapuca	26
5252	So Bernardo do Campo	26
5253	So Caetano do Sul	26
5254	So Carlos	26
5255	So Francisco	26
5256	So Joo da Boa Vista	26
5257	So Joo das Duas Pontes	26
5258	So Joo de Iracema	26
5259	So Joo do Pau dAlho	26
5260	So Joaquim da Barra	26
5261	So Jos da Bela Vista	26
5262	So Jos do Barreiro	26
5263	So Jos do Rio Pardo	26
5264	So Jos do Rio Preto	26
5265	So Jos dos Campos	26
5266	So Loureno da Serra	26
5267	So Lus do Paraitinga	26
5268	So Manuel	26
5269	So Miguel Arcanjo	26
5270	So Paulo	26
5271	So Pedro	26
5272	So Pedro do Turvo	26
5273	So Roque	26
5274	So Sebastio	26
5275	So Sebastio da Grama	26
5276	So Simo	26
5277	So Vicente	26
5278	Sarapu	26
5279	Sarutai	26
5280	Sebastianpolis do Sul	26
5281	Serra Azul	26
5282	Serra Negra	26
5283	Serrana	26
5284	Sertozinho	26
5285	Sete Barras	26
5286	Severnia	26
5287	Silveiras	26
5288	Socorro	26
5289	Sorocaba	26
5290	Sud Mennucci	26
5291	Sumar	26
5292	Suzanpolis	26
5293	Suzano	26
5294	Tabapu	26
5295	Tabatinga	26
5296	Taboo da Serra	26
5297	Taciba	26
5298	Tagua	26
5299	Taiau	26
5300	Taiva	26
5301	Tamba	26
5302	Tanabi	26
5303	Tapira	26
5304	Tapiratiba	26
5305	Taquaral	26
5306	Taquaritinga	26
5307	Taquarituba	26
5308	Taquariva	26
5309	Tarabai	26
5310	Tarum	26
5311	Tatu	26
5312	Taubat	26
5313	Tejup	26
5314	Teodoro Sampaio	26
5315	Terra Roxa	26
5316	Tiet	26
5317	Timburi	26
5318	Torre de Pedra	26
5319	Torrinha	26
5320	Trabiju	26
5321	Trememb	26
5322	Trs Fronteiras	26
5323	Tuiuti	26
5324	Tup	26
5325	Tupi Paulista	26
5326	Turiba	26
5327	Turmalina	26
5328	Ubarana	26
5329	Ubatuba	26
5330	Ubirajara	26
5331	Uchoa	26
5332	Unio Paulista	26
5333	Urnia	26
5334	Uru	26
5335	Urups	26
5336	Valentim Gentil	26
5337	Valinhos	26
5338	Valparaso	26
5339	Vargem	26
5340	Vargem Grande do Sul	26
5341	Vargem Grande Paulista	26
5342	Vrzea Paulista	26
5343	Vera Cruz	26
5344	Vinhedo	26
5345	Viradouro	26
5346	Vista Alegre do Alto	26
5347	Vitria Brasil	26
5348	Votorantim	26
5349	Votuporanga	26
5350	Zacarias	26
5351	Amparo de So Francisco	25
5352	Aquidab	25
5353	Aracaju	25
5354	Arau	25
5355	Areia Branca	25
5356	Barra dos Coqueiros	25
5357	Boquim	25
5358	Brejo Grande	25
5359	Campo do Brito	25
5360	Canhoba	25
5361	Canind de So Francisco	25
5362	Capela	25
5363	Carira	25
5364	Carmpolis	25
5365	Cedro de So Joo	25
5366	Cristinpolis	25
5367	Cumbe	25
5368	Divina Pastora	25
5369	Estncia	25
5370	Feira Nova	25
5371	Frei Paulo	25
5372	Gararu	25
5373	General Maynard	25
5374	Gracho Cardoso	25
5375	Ilha das Flores	25
5376	Indiaroba	25
5377	Itabaiana	25
5378	Itabaianinha	25
5379	Itabi	25
5380	Itaporanga dAjuda	25
5381	Japaratuba	25
5382	Japoat	25
5383	Lagarto	25
5384	Laranjeiras	25
5385	Macambira	25
5386	Malhada dos Bois	25
5387	Malhador	25
5388	Maruim	25
5389	Moita Bonita	25
5390	Monte Alegre de Sergipe	25
5391	Muribeca	25
5392	Nepolis	25
5393	Nossa Senhora Aparecida	25
5394	Nossa Senhora da Glria	25
5395	Nossa Senhora das Dores	25
5396	Nossa Senhora de Lourdes	25
5397	Nossa Senhora do Socorro	25
5398	Pacatuba	25
5399	Pedra Mole	25
5400	Pedrinhas	25
5401	Pinho	25
5402	Pirambu	25
5403	Poo Redondo	25
5404	Poo Verde	25
5405	Porto da Folha	25
5406	Propri	25
5407	Riacho do Dantas	25
5408	Riachuelo	25
5409	Ribeirpolis	25
5410	Rosrio do Catete	25
5411	Salgado	25
5412	Santa Luzia do Itanhy	25
5413	Santa Rosa de Lima	25
5414	Santana do So Francisco	25
5415	Santo Amaro das Brotas	25
5416	So Cristvo	25
5417	So Domingos	25
5418	So Francisco	25
5419	So Miguel do Aleixo	25
5420	Simo Dias	25
5421	Siriri	25
5422	Telha	25
5423	Tobias Barreto	25
5424	Tomar do Geru	25
5425	Umbaba	25
5426	Abreulndia	27
5427	Aguiarnpolis	27
5428	Aliana do Tocantins	27
5429	Almas	27
5430	Alvorada	27
5431	Anans	27
5432	Angico	27
5433	Aparecida do Rio Negro	27
5434	Aragominas	27
5435	Araguacema	27
5436	Araguau	27
5437	Araguana	27
5438	Araguan	27
5439	Araguatins	27
5440	Arapoema	27
5441	Arraias	27
5442	Augustinpolis	27
5443	Aurora do Tocantins	27
5444	Axix do Tocantins	27
5445	Babaulndia	27
5446	Bandeirantes do Tocantins	27
5447	Barra do Ouro	27
5448	Barrolndia	27
5449	Bernardo Sayo	27
5450	Bom Jesus do Tocantins	27
5451	Brasilndia do Tocantins	27
5452	Brejinho de Nazar	27
5453	Buriti do Tocantins	27
5454	Cachoeirinha	27
5455	Campos Lindos	27
5456	Cariri do Tocantins	27
5457	Carmolndia	27
5458	Carrasco Bonito	27
5459	Caseara	27
5460	Centenrio	27
5461	Chapada da Natividade	27
5462	Chapada de Areia	27
5463	Colinas do Tocantins	27
5464	Colmia	27
5465	Combinado	27
5466	Conceio do Tocantins	27
5467	Couto de Magalhes	27
5468	Cristalndia	27
5469	Crixs do Tocantins	27
5470	Darcinpolis	27
5471	Dianpolis	27
5472	Divinpolis do Tocantins	27
5473	Dois Irmos do Tocantins	27
5474	Duer	27
5475	Esperantina	27
5476	Ftima	27
5477	Figueirpolis	27
5478	Filadlfia	27
5479	Formoso do Araguaia	27
5480	Fortaleza do Taboco	27
5481	Goianorte	27
5482	Goiatins	27
5483	Guara	27
5484	Gurupi	27
5485	Ipueiras	27
5486	Itacaj	27
5487	Itaguatins	27
5488	Itapiratins	27
5489	Itapor do Tocantins	27
5490	Ja do Tocantins	27
5491	Juarina	27
5492	Lagoa da Confuso	27
5493	Lagoa do Tocantins	27
5494	Lajeado	27
5495	Lavandeira	27
5496	Lizarda	27
5497	Luzinpolis	27
5498	Marianpolis do Tocantins	27
5499	Mateiros	27
5500	Maurilndia do Tocantins	27
5501	Miracema do Tocantins	27
5502	Miranorte	27
5503	Monte do Carmo	27
5504	Monte Santo do Tocantins	27
5505	Muricilndia	27
5506	Natividade	27
5507	Nazar	27
5508	Nova Olinda	27
5509	Nova Rosalndia	27
5510	Novo Acordo	27
5511	Novo Alegre	27
5512	Novo Jardim	27
5513	Oliveira de Ftima	27
5514	Palmas	27
5515	Palmeirante	27
5516	Palmeiras do Tocantins	27
5517	Palmeirpolis	27
5518	Paraso do Tocantins	27
5519	Paran	27
5520	Pau dArco	27
5521	Pedro Afonso	27
5522	Peixe	27
5523	Pequizeiro	27
5524	Pindorama do Tocantins	27
5525	Piraqu	27
5526	Pium	27
5527	Ponte Alta do Bom Jesus	27
5528	Ponte Alta do Tocantins	27
5529	Porto Alegre do Tocantins	27
5530	Porto Nacional	27
5531	Praia Norte	27
5532	Presidente Kennedy	27
5533	Pugmil	27
5534	Recursolndia	27
5535	Riachinho	27
5536	Rio da Conceio	27
5537	Rio dos Bois	27
5538	Rio Sono	27
5539	Sampaio	27
5540	Sandolndia	27
5541	Santa F do Araguaia	27
5542	Santa Maria do Tocantins	27
5543	Santa Rita do Tocantins	27
5544	Santa Rosa do Tocantins	27
5545	Santa Tereza do Tocantins	27
5546	Santa Terezinha do Tocantins	27
5547	So Bento do Tocantins	27
5548	So Flix do Tocantins	27
5549	So Miguel do Tocantins	27
5550	So Salvador do Tocantins	27
5551	So Sebastio do Tocantins	27
5552	So Valrio da Natividade	27
5553	Silvanpolis	27
5554	Stio Novo do Tocantins	27
5555	Sucupira	27
5556	Taguatinga	27
5557	Taipas do Tocantins	27
5558	Talism	27
5559	Tocantnia	27
5560	Tocantinpolis	27
5561	Tupirama	27
5562	Tupiratins	27
5563	Wanderlndia	27
5564	Xambio	27
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.cliente (id, nome) FROM stdin;
1	Maria
2	Joana
3	Ana
4	Fatima
\.


--
-- Data for Name: companhia; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.companhia (id, nome) FROM stdin;
1	LATAM
2	GOL
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.estado (id, nome, uf) FROM stdin;
1	Acre	AC
2	Alagoas	AL
3	Amazonas	AM
4	Amap	AP
5	Bahia	BA
6	Cear	CE
7	Distrito Federal	DF
8	Esprito Santo	ES
9	Gois	GO
10	Maranho	MA
11	Minas Gerais	MG
12	Mato Grosso do Sul	MS
13	Mato Grosso	MT
14	Par	PA
15	Paraba	PB
16	Pernambuco	PE
17	Piau	PI
18	Paran	PR
19	Rio de Janeiro	RJ
20	Rio Grande do Norte	RN
21	Rondnia	RO
22	Roraima	RR
23	Rio Grande do Sul	RS
24	Santa Catarina	SC
25	Sergipe	SE
26	So Paulo	SP
27	Tocantins	TO
\.


--
-- Data for Name: piloto; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.piloto (id, nome, companhia_id) FROM stdin;
2	Joao	1
3	Godofredo	2
4	LALA	1
\.


--
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.reserva (id, economica, voo_id, cliente_id) FROM stdin;
1	t	2	2
2	t	1	2
6	f	1	2
\.


--
-- Data for Name: voo; Type: TABLE DATA; Schema: public; Owner: yumnwbtj
--

COPY public.voo (id, preco, aviao_id, piloto_id, companhia_id, origem_id, destino_id, chegada, partida) FROM stdin;
1	200.50	1	2	1	5514	81	2019-11-10 12:00:00	2019-11-10 11:00:00
2	350.00	2	3	2	3658	256	2019-11-12 18:00:00	2019-11-12 14:00:00
\.


--
-- Name: aviao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.aviao_id_seq', 2, true);


--
-- Name: cidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.cidade_id_seq', 1, false);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.cliente_id_seq', 4, true);


--
-- Name: companhia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.companhia_id_seq', 2, true);


--
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.estado_id_seq', 1, false);


--
-- Name: piloto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.piloto_id_seq', 3, true);


--
-- Name: reserva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.reserva_id_seq', 8, true);


--
-- Name: voo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yumnwbtj
--

SELECT pg_catalog.setval('public.voo_id_seq', 3, true);


--
-- Name: aviao aviao_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.aviao
    ADD CONSTRAINT aviao_pkey PRIMARY KEY (id);


--
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: companhia companhia_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.companhia
    ADD CONSTRAINT companhia_pkey PRIMARY KEY (id);


--
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- Name: piloto piloto_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.piloto
    ADD CONSTRAINT piloto_pkey PRIMARY KEY (id);


--
-- Name: reserva reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);


--
-- Name: voo voo_pkey; Type: CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT voo_pkey PRIMARY KEY (id);


--
-- Name: aviao fk_aviao_companhia; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.aviao
    ADD CONSTRAINT fk_aviao_companhia FOREIGN KEY (companhia_id) REFERENCES public.companhia(id);


--
-- Name: cidade fk_cidade_estado; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id) REFERENCES public.estado(id);


--
-- Name: piloto fk_piloto_companhia; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.piloto
    ADD CONSTRAINT fk_piloto_companhia FOREIGN KEY (companhia_id) REFERENCES public.companhia(id);


--
-- Name: reserva fk_reserva_cliente; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT fk_reserva_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- Name: reserva fk_reserva_voo; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT fk_reserva_voo FOREIGN KEY (voo_id) REFERENCES public.voo(id);


--
-- Name: voo fk_voo_aviao; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT fk_voo_aviao FOREIGN KEY (aviao_id) REFERENCES public.aviao(id);


--
-- Name: voo fk_voo_companhia; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT fk_voo_companhia FOREIGN KEY (companhia_id) REFERENCES public.companhia(id);


--
-- Name: voo fk_voo_destino; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT fk_voo_destino FOREIGN KEY (destino_id) REFERENCES public.cidade(id);


--
-- Name: voo fk_voo_origem; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT fk_voo_origem FOREIGN KEY (origem_id) REFERENCES public.cidade(id);


--
-- Name: voo fk_voo_piloto; Type: FK CONSTRAINT; Schema: public; Owner: yumnwbtj
--

ALTER TABLE ONLY public.voo
    ADD CONSTRAINT fk_voo_piloto FOREIGN KEY (piloto_id) REFERENCES public.piloto(id);


--
-- PostgreSQL database dump complete
--

