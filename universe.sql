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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_stars_in_billion integer,
    type character varying(30),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    radius double precision
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    rating_for_live integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    has_democracy boolean,
    mass_in_10_24_kg numeric(5,3),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text,
    radius_in_km double precision
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Andromeda is one of the 48 constellations listed by the 2nd-century Greco-Roman astromer Ptolemy.');
INSERT INTO public.constellation VALUES (2, 'Aquarius', 'Aquarius is an equatorial constellation of the zodiac, between Capricornus and Pisces.');
INSERT INTO public.constellation VALUES (3, 'Cancer', 'Cancer is one of the twelve constellation of the zodiac and is loated in the Northen celestial hemisphere.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 400, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (3, 'Comet', 100, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 300, 'ring', NULL);
INSERT INTO public.galaxy VALUES (5, 'Condor', 450, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 200, 'spiral', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 'The Moon is Earths only natural satellite.', 0.2725);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'The Moon is Earths only natural satellite.', 0.2725);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'The Moon is Earths only natural satellite.', 0.2725);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 'The Moon is Jupiter natural satellite.', 0.2725);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 'The Moon is Jupiter natural satellite.', 0.25);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 'The Moon is Jupiter natural satellite.', 0.12);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 'The Moon is Jupiter natural satellite.', 1.32);
INSERT INTO public.moon VALUES (8, 'Lo', 5, 'The Moon is Jupiter natural satellite.', 1.1);
INSERT INTO public.moon VALUES (9, 'Europa', 5, 'The Moon is Jupiter natural satellite.', 1.1);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5, 'The Moon is Jupiter natural satellite.', 1.1);
INSERT INTO public.moon VALUES (11, 'Callisto', 5, 'The Moon is Jupiter natural satellite.', 1.1);
INSERT INTO public.moon VALUES (12, 'Themisto', 5, 'The Moon is Jupiter natural satellite.', 0.72);
INSERT INTO public.moon VALUES (13, 'Leda', 5, 'The Moon is Jupiter natural satellite.', 0.82);
INSERT INTO public.moon VALUES (14, 'Ersa', 5, 'The Moon is Jupiter natural satellite.', 0.2);
INSERT INTO public.moon VALUES (15, 'Himalia', 5, 'The Moon is Jupiter natural satellite.', 2.2);
INSERT INTO public.moon VALUES (16, 'Pandia', 5, 'The Moon is Jupiter natural satellite.', 2.1);
INSERT INTO public.moon VALUES (17, 'Lysithea', 5, 'The Moon is Jupiter natural satellite.', 2);
INSERT INTO public.moon VALUES (18, 'Elara', 5, 'The Moon is Jupiter natural satellite.', 2.4);
INSERT INTO public.moon VALUES (19, 'Dia', 5, 'The Moon is Jupiter natural satellite.', 0.01);
INSERT INTO public.moon VALUES (20, 'Carpo', 5, 'The Moon is Jupiter natural satellite.', 3.01);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Mercury is the smallest planet in the Solar System and the closest to the Sun.', false, false, 3.301, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 'Venus is the second planet from the Sun.', false, false, 4.868, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 5, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, true, 5.972, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.', false, false, 6.417, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, false, 1.898, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Saturn is the sixth planet form the Sun and the Second-largest in the Solar System.', false, false, 5.683, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Uranus is the seventh planet from the Sun.', false, false, 8.681, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Neptune is the eighth planet from the Sun and the farthest known solar planet.', false, false, 1.024, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 1, 'Ceres is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.', false, false, 0.002, 1);
INSERT INTO public.planet VALUES (10, 'Orcus', 1, 'Orcus is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter', false, false, 0.023, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 1, 'Pluto is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.', false, false, 0.002, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 1, 'Haumea is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter', false, false, 0.023, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 2, 'The sun is the star at the center of the Solar System.', 696342);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 'Sirius is the brightest star in the night sky.', 1711);
INSERT INTO public.star VALUES (3, 'Canopus', 2, 'Canopus is the brightest start in the southern constellation of Carina.', 71);
INSERT INTO public.star VALUES (4, 'Arcturus', 2, 'Arturus is the brightest star in the norhen constellation of Bootes.', 25.4);
INSERT INTO public.star VALUES (5, 'Vega', 2, 'Vega is the brightest in the northern constellation of Lyra', 2362);
INSERT INTO public.star VALUES (6, 'Capella', 2, 'Capella is the brightest star in the northem constellation of Auriga.', 8.83);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

