--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_km numeric(4,1),
    year_discovered integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    light_years_from_earth integer,
    light_years_diameter integer,
    black_hole_center boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    diameter_km numeric(6,1)
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
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    description text
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    light_years_from_earth integer,
    visible_magnitude numeric(5,2)
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (2, 'Tsuchinshan', NULL, 1965);
INSERT INTO public.comet VALUES (3, 'Great Comet of January 1910', NULL, 1910);
INSERT INTO public.comet VALUES (1, 'Halleys Comet', 15.0, 1758);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 105700, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 220000, true);
INSERT INTO public.galaxy VALUES (3, 'Hydrus I', 90000, 348, false);
INSERT INTO public.galaxy VALUES (4, 'Reticulum II', 102000, 378, false);
INSERT INTO public.galaxy VALUES (5, 'Ursa Minor Dwarf', 205000, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Phoenix II', 326000, 290, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'A friend!', 1737.4);
INSERT INTO public.moon VALUES (2, 'Io', 5, 'Hard to pronounce.', 3643.2);
INSERT INTO public.moon VALUES (3, 'Europa', 5, 'Icy!', 3121.6);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 'The largest moon in the solar system.', 5268.2);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 'Possibly the oldest object in the solar system, based on its craters.', 4820.6);
INSERT INTO public.moon VALUES (6, 'Pan', 6, 'Shaped like a ravioli.', 27.4);
INSERT INTO public.moon VALUES (7, 'Daphnis', 6, 'An inner sattelite of Saturn.', 7.8);
INSERT INTO public.moon VALUES (8, 'Prometheus', 6, 'Named after the guy who stole fire from the gods and gave it to humans.', 85.6);
INSERT INTO public.moon VALUES (9, 'Janus', 6, 'Shares an orbit with Epimetheus.', 178.0);
INSERT INTO public.moon VALUES (10, 'Epimetheus', 6, 'Shares an orbit with Janus.', 117.2);
INSERT INTO public.moon VALUES (11, 'Phobos', 4, 'Named after the god of fear and panic.', NULL);
INSERT INTO public.moon VALUES (12, 'Deimos', 4, 'Named after the god of dread and terror.', NULL);
INSERT INTO public.moon VALUES (13, 'Miranda', 7, 'This moon has more complicated goegraphy than youd expect.', 471.6);
INSERT INTO public.moon VALUES (14, 'Ariel', 7, 'Not the little mermaid.', 1157.8);
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, 'A fairly standard icy moon.', 1169.4);
INSERT INTO public.moon VALUES (16, 'Titania', 7, 'Has an impact crater named Gertrude.', 1576.8);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, 'Named after the king of the fairies!', 1522.8);
INSERT INTO public.moon VALUES (18, 'Charon', 9, 'Tidally locked with Pluto.', 1212.0);
INSERT INTO public.moon VALUES (19, 'Styx', 9, 'Truly miniscule.', 16.0);
INSERT INTO public.moon VALUES (20, 'Nix', 9, 'Named after the night-time.', 32.2);
INSERT INTO public.moon VALUES (21, 'Kerberos', 9, 'Whos a good puppy?', 10.0);
INSERT INTO public.moon VALUES (22, 'Hydra', 9, 'Orbits pretty far from Pluto', 51.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4, true, 'A lovely little planet we like to call home.');
INSERT INTO public.planet VALUES (2, 'Mercury', 4, false, 'A tiny planet that bakes in the Sun.');
INSERT INTO public.planet VALUES (3, 'Venus', 4, false, 'A volcanic wasteland.');
INSERT INTO public.planet VALUES (4, 'Mars', 4, false, 'Elon Musk wantst to live here.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 4, false, 'Known for having a pimple.');
INSERT INTO public.planet VALUES (6, 'Saturn', 4, false, 'Beyonce would approve.');
INSERT INTO public.planet VALUES (7, 'Uranus', 4, false, 'No matter how you pronounce it, you cant win.');
INSERT INTO public.planet VALUES (8, 'Neptune', 4, false, 'A lovely shade of blue!');
INSERT INTO public.planet VALUES (9, 'Pluto', 4, false, 'A real planet.');
INSERT INTO public.planet VALUES (10, 'AEgir', 7, false, 'Could be a gas giant.');
INSERT INTO public.planet VALUES (11, 'Awohali', 8, false, 'Has a cool name.');
INSERT INTO public.planet VALUES (12, 'Su', 9, false, 'Just some guy.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 2, 97, 2.07);
INSERT INTO public.star VALUES (2, 'Mirach', 2, 199, 2.07);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 408, -3.00);
INSERT INTO public.star VALUES (4, 'Sol', 1, 0, -26.74);
INSERT INTO public.star VALUES (5, 'Pollux', 1, 34, 1.14);
INSERT INTO public.star VALUES (6, 'Chara', 1, 28, 4.25);
INSERT INTO public.star VALUES (7, 'Epsilon Eridani', 1, 10, 3.74);
INSERT INTO public.star VALUES (8, 'Gliese 436', 1, 32, 12.20);
INSERT INTO public.star VALUES (9, 'Wolf 437', 1, 26, 11.40);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

