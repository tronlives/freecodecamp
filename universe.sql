--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    checked boolean NOT NULL,
    visited boolean NOT NULL,
    observed integer,
    distance numeric(8,3),
    habitable_index integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: help; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.help (
    help_id integer NOT NULL,
    checked boolean NOT NULL,
    visited boolean NOT NULL,
    name character varying(50),
    max_count1 integer NOT NULL,
    max_count2 integer NOT NULL,
    description text
);


ALTER TABLE public.help OWNER TO freecodecamp;

--
-- Name: help_help_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.help_help_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_help_id_seq OWNER TO freecodecamp;

--
-- Name: help_help_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.help_help_id_seq OWNED BY public.help.help_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    checked boolean NOT NULL,
    visited boolean NOT NULL,
    observed integer,
    distance numeric(8,3),
    habitable_index integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    checked boolean NOT NULL,
    visited boolean NOT NULL,
    observed integer,
    distance numeric(8,3),
    habitable_index integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    checked boolean NOT NULL,
    visited boolean NOT NULL,
    observed integer,
    distance numeric(8,3),
    habitable_index integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: help help_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.help ALTER COLUMN help_id SET DEFAULT nextval('public.help_help_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, checked, visited, observed, distance, habitable_index) FROM stdin;
1	Nebula	very cloudy galaxy	t	t	2	7.000	38
2	carina	very interesting galaxy	t	t	3	5.000	18
3	large magellan cloud	mysterious  galaxy	t	t	1	3.000	10
5	adromeda	our next big galaxy	t	t	1	0.000	50
6	milky way	our home galaxy	t	t	1	0.000	100
7	Cygnus	unknown galaxy	t	t	1	0.000	20
\.


--
-- Data for Name: help; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.help (help_id, checked, visited, name, max_count1, max_count2, description) FROM stdin;
1	f	f	HELPA1	2	2	please treat me better
2	f	f	HELPA2	3	3	please treat me better
3	t	f	HELPA3	4	4	please treat me better.
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, checked, visited, observed, distance, habitable_index, planet_id) FROM stdin;
2	Proxima Centauri c	possibly  habitable	f	f	4	89.000	26	3
3	Proxima Centauri d	possibly  habitable	f	f	4	89.000	29	3
4	Europa	possibly  habitable	f	f	4	19.000	19	3
5	Io	possibly  habitable	f	f	4	19.000	29	3
6	Ganymed	maybe habitable	f	f	4	19.000	20	3
7	Kallisto	maybe habitable	f	f	4	39.000	50	3
8	Elara	not habitable	f	f	4	39.000	50	3
9	Carpo	not habitable	f	f	4	39.000	50	3
10	Thebe	habitable	f	f	4	39.000	50	3
11	Amalthea	habitable	f	f	4	39.000	30	3
12	enceladus	very possible habitable	f	f	4	39.000	70	3
13	titan	not possible habitable	f	f	4	39.000	0	3
14	Mimas	not possible habitable	f	f	4	590.000	20	3
15	hyperion	not possible habitable	f	f	4	590.000	10	6
16	phoebe	not possible habitable	f	f	4	590.000	10	6
17	rhea	not possible habitable	f	f	4	590.000	12	6
18	titania	not possible habitable	f	f	4	790.000	12	8
19	miranda	questionable habitable	f	f	4	1790.000	12	8
20	phobos	questionable habitable	f	f	4	2790.000	12	5
21	deimos	questionable habitable	f	f	4	2780.000	12	5
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, checked, visited, observed, distance, habitable_index, star_id) FROM stdin;
1	Teegarden b	most habitable planet outside earth	t	t	1	1.000	1	24
2	Teegarden c	second most habitable planet outside earth	t	t	1	1.000	1	24
3	Jupiter	biggest planet in Sol System	t	t	1	1.000	1	22
4	Mars	biggest planet in Sol System	t	t	1	5.000	23	22
5	Venus	planet most close to earth	t	t	1	2.000	23	22
6	Saturn	planet with many rings	t	t	1	7.000	23	22
7	Neptun	planet with water	t	t	3	17.000	21	22
8	Uranus	planet quit unknown	t	t	4	19.000	25	22
9	Merkur	hot planet	t	f	4	9.000	28	22
10	Kepler-452b	possibly a second earth	f	f	4	9.000	28	22
11	Kepler-452d	possibly  habitable	f	f	4	7900.000	28	22
12	Kepler-452e	possibly  habitable	f	f	4	8900.000	28	22
13	Proxima Centauri b	possibly  habitable	f	f	4	89.000	22	22
14	Proxima Centauri c	possibly  habitable 2nd	f	f	4	89.000	21	22
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, checked, visited, observed, distance, habitable_index, galaxy_id) FROM stdin;
1	Fomalhaut	arabic name	f	f	4	4.000	9	\N
2	Beetageuze	beetlejuice	f	t	1	1.000	5	\N
4	Epsilon Eridani	Halo  star	f	t	3	3.000	8	\N
8	Promixa Centauri	star most close to us	f	t	2	2.000	7	1
10	MELMAK	Alfs home system	t	t	3	2.000	3	1
21	melmak	Alfs System	f	f	3	3.000	8	2
22	sol	Our home  System	t	t	1	1.000	1	1
24	Teegarden	System with habitable planets	f	f	0	1.000	0	3
25	Barnards Star	System with planets	t	t	1	2.000	2	1
27	Kilrah	System with strange planets	t	t	1	1.000	1	5
28	Wolf 123	System with no  planets	t	t	1	1.000	1	6
29	LUYTEN	System with no  planets	t	t	0	1.000	1	6
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: help_help_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.help_help_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 29, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: help help_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.help
    ADD CONSTRAINT help_name_key UNIQUE (name);


--
-- Name: help help_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.help
    ADD CONSTRAINT help_pkey PRIMARY KEY (help_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


