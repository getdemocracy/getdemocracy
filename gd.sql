--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO furiston;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO furiston;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO furiston;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO furiston;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO furiston;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO furiston;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO furiston;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO furiston;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO furiston;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO furiston;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO furiston;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO furiston;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO furiston;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO furiston;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO furiston;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO furiston;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO furiston;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: gd_mv; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE gd_mv (
    mv_id integer NOT NULL,
    name character varying(30) NOT NULL,
    party character varying(15) NOT NULL,
    city character varying(20) NOT NULL
);


ALTER TABLE public.gd_mv OWNER TO furiston;

--
-- Name: gd_mv_records; Type: TABLE; Schema: public; Owner: furiston; Tablespace: 
--

CREATE TABLE gd_mv_records (
    id integer NOT NULL,
    mv_id integer NOT NULL,
    date date NOT NULL,
    ilk_kanun integer NOT NULL,
    kanun integer NOT NULL,
    sso integer NOT NULL,
    yso integer NOT NULL,
    ilk_mao integer NOT NULL,
    mao integer NOT NULL,
    ilk_ggo integer NOT NULL,
    ggo integer NOT NULL,
    ilk_go integer NOT NULL,
    go integer NOT NULL
);


ALTER TABLE public.gd_mv_records OWNER TO furiston;

--
-- Name: gd_mv_records_id_seq; Type: SEQUENCE; Schema: public; Owner: furiston
--

CREATE SEQUENCE gd_mv_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gd_mv_records_id_seq OWNER TO furiston;

--
-- Name: gd_mv_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: furiston
--

ALTER SEQUENCE gd_mv_records_id_seq OWNED BY gd_mv_records.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY gd_mv_records ALTER COLUMN id SET DEFAULT nextval('gd_mv_records_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add mv	7	add_mv
20	Can change mv	7	change_mv
21	Can delete mv	7	delete_mv
22	Can add mv_records	8	add_mv_records
23	Can change mv_records	8	change_mv_records
24	Can delete mv_records	8	delete_mv_records
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	furiston			furiston@gmail.com	pbkdf2_sha256$10000$Vu0nmF7d15Ec$l1Himk1Q0brfNyninoDYwdazbIdAUuMks2733mYBQHc=	t	t	t	2013-01-10 02:58:39.366804+00	2013-01-10 02:58:39.366804+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	mv	gd	mv
8	mv_records	gd	mv_records
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: gd_mv; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY gd_mv (mv_id, name, party, city) FROM stdin;
5540	Mehmet Necati ÇETİNKAYA	AK Parti	ADANA
6758	Ali DEMİRÇALI	CHP	ADANA
6859	Turgay DEVELİ	CHP	ADANA
6852	Mehmet Şükrü ERDİNÇ	AK Parti	ADANA
6585	Fatoş GÜRKAN	AK Parti	ADANA
5857	Ali HALAMAN	MHP	ADANA
6349	Ali KÜÇÜKAYDIN	AK Parti	ADANA
6782	Osman Faruk LOĞOĞLU	CHP	ADANA
6931	Ümit ÖZGÜMÜŞ	CHP	ADANA
6439	Muharrem VARLI	MHP	ADANA
6905	Seyfettin YILMAZ	MHP	ADANA
6608	Ahmet AYDIN	AK Parti	ADIYAMAN
6565	Mehmet ERDOĞAN	AK Parti	ADIYAMAN
6760	Salih FIRAT	AK Parti	ADIYAMAN
6660	Mehmet METİNER	AK Parti	ADIYAMAN
6793	Muhammed Murtaza YETİŞ	AK Parti	ADIYAMAN
5336	Sait AÇBA	AK Parti	AFYONKARAHİSAR
6545	Veysel EROĞLU	AK Parti	AFYONKARAHİSAR
6712	Ahmet TOPTAŞ	CHP	AFYONKARAHİSAR
6898	Halil ÜRÜN	AK Parti	AFYONKARAHİSAR
6828	Kemalettin YILMAZ	MHP	AFYONKARAHİSAR
6954	Halil AKSOY	BDP	AĞRI
6665	Ekrem ÇELEBİ	AK Parti	AĞRI
6090	Mehmet Kerim YILDIZ	AK Parti	AĞRI
5981	Ruhi AÇIKGÖZ	AK Parti	AKSARAY
5988	Ali Rıza ALABOYUN	AK Parti	AKSARAY
6566	İlknur İNCEÖZ	AK Parti	AKSARAY
6667	Mehmet Naci BOSTANCI	AK Parti	AMASYA
6386	Avni ERDEMİR	AK Parti	AMASYA
6880	Ramis TOPAL	CHP	AMASYA
6689	Yalçın AKDOĞAN	AK Parti	ANKARA
6814	Süleyman Sencer AYATA	CHP	ANKARA
6720	Sinan Aydın AYGÜN	CHP	ANKARA
6063	Ali BABACAN	AK Parti	ANKARA
5948	Ayşe Gülsün BİLGEHAN	CHP	ANKARA
6148	İzzet ÇETİN	CHP	ANKARA
4445	Cemil ÇİÇEK	AK Parti	ANKARA
6095	Reha DENEMEÇ	AK Parti	ANKARA
6702	Mustafa ERDEM	MHP	ANKARA
6302	Cevdet ERDÖL	AK Parti	ANKARA
6692	Levent GÖK	CHP	ANKARA
6721	Gökhan GÜNAYDIN	CHP	ANKARA
6703	Ülker GÜZEL	AK Parti	ANKARA
5644	Mehmet Emrehan HALICI	CHP	ANKARA
5930	Haluk İPEK	AK Parti	ANKARA
6704	Emrullah İŞLER	AK Parti	ANKARA
5347	Ahmet İYİMAYA	AK Parti	ANKARA
4634	Salih KAPUSUZ	AK Parti	ANKARA
6801	Zelkif KAZDAL	AK Parti	ANKARA
6717	Bülent KUŞOĞLU	CHP	ANKARA
6690	Aylin NAZLIAKA	CHP	ANKARA
6525	Nazmi Haluk ÖZDALGA	AK Parti	ANKARA
6701	Tülay SELAMOĞLU	AK Parti	ANKARA
6697	Seyit SERTÇELİK	AK Parti	ANKARA
6810	Fatih ŞAHİN	AK Parti	ANKARA
6696	Nurdan ŞANLI	AK Parti	ANKARA
6727	Zühal TOPCU	MHP	ANKARA
6375	Yıldırım Tuğrul TÜRKEŞ	MHP	ANKARA
6699	Özcan YENİÇERİ	MHP	ANKARA
6688	Gürkut ACAR	CHP	ANTALYA
6552	Sadık BADAK	AK Parti	ANTALYA
3377	Deniz BAYKAL	CHP	ANTALYA
6678	Arif BULUT	CHP	ANTALYA
6235	Mevlüt ÇAVUŞOĞLU	AK Parti	ANTALYA
5691	Mehmet Vecdi GÖNÜL	AK Parti	ANTALYA
6469	Mehmet GÜNAL	MHP	ANTALYA
6451	Yusuf Ziya İRBEÇ	MHP	ANTALYA
6031	Osman KAPTAN	CHP	ANTALYA
6911	Gökcen ÖZDOĞAN ENÇ	AK Parti	ANTALYA
6893	Hüseyin SAMANİ	AK Parti	ANTALYA
6919	Yıldıray SAPAN	CHP	ANTALYA
4603	Tunca TOSKAY	MHP	ANTALYA
6687	Orhan ATALAY	AK Parti	ARDAHAN
6353	Ensar ÖĞÜT	CHP	ARDAHAN
6909	Uğur BAYRAKTUTAN	CHP	ARTVİN
6847	İsrafil KIŞLA	AK Parti	ARTVİN
6723	Osman AYDIN	CHP	AYDIN
6839	Metin Lütfi BAYDAR	CHP	AYDIN
6603	Mehmet ERDEM	AK Parti	AYDIN
6892	Ali Gültekin KILINÇ	AK Parti	AYDIN
6164	Semiha ÖYÜŞ	AK Parti	AYDIN
6734	Bülent TEZCAN	CHP	AYDIN
5776	Ali UZUNIRMAK	MHP	AYDIN
6790	Ayşe Nedret AKOVA	CHP	BALIKESİR
6362	Ali AYDINLIOĞLU	AK Parti	BALIKESİR
6953	Tülay BABUŞCU	AK Parti	BALIKESİR
6446	Ahmet Duran BULUT	MHP	BALIKESİR
6827	Haluk Ahmet GÜMÜŞ	CHP	BALIKESİR
6762	Namık HAVUTÇA	CHP	BALIKESİR
4255	Ahmet Edip UĞUR	AK Parti	BALIKESİR
6541	Yılmaz TUNÇ	AK Parti	BARTIN
6407	Muhammet Rıza YALÇINKAYA	CHP	BARTIN
6477	Ayla AKAT ATA	BDP	BATMAN
6730	Ziver ÖZDEMİR	AK Parti	BATMAN
6398	Mehmet ŞİMŞEK	AK Parti	BATMAN
6489	Bengi YILDIZ	BDP	BATMAN
6874	Bünyamin ÖZBEK	AK Parti	BAYBURT
5959	Fahrettin POYRAZ	AK Parti	BİLECİK
4505	Bahattin ŞEKER	MHP	BİLECİK
6972	İdris BALUKEN	BDP	BİNGÖL
6724	Eşref TAŞ	AK Parti	BİNGÖL
6577	Cevdet YILMAZ	AK Parti	BİNGÖL
6757	Vedat DEMİRÖZ	AK Parti	BİTLİS
6266	Vahit KİLER	AK Parti	BİTLİS
6956	Hüsamettin ZENDERLİOĞLU	BDP	BİTLİS
6705	Ali ERCOŞKUN	AK Parti	BOLU
6751	Fehmi KÜPÇÜ	AK Parti	BOLU
6691	Tanju ÖZCAN	CHP	BOLU
6035	Ramazan Kerim ÖZKAN	CHP	BURDUR
6676	Hasan Hami YILDIRIM	AK Parti	BURDUR
5551	Bülent ARINÇ	AK Parti	BURSA
6842	İsmail AYDIN	AK Parti	BURSA
6444	İsmet BÜYÜKATAMAN	MHP	BURSA
6619	Canan CANDEMİR ÇELİK	AK Parti	BURSA
6843	Hakan ÇAVUŞOĞLU	AK Parti	BURSA
6773	İlhan DEMİRÖZ	CHP	BURSA
6026	Ömer ÇELİK	AK Parti	ADANA
6845	Tülin ERKAL KARA	AK Parti	BURSA
6820	Sena KALELİ	CHP	BURSA
6849	Önder MATLI	AK Parti	BURSA
6431	Necati ÖZENSOY	MHP	BURSA
6840	İsmet SU	AK Parti	BURSA
6841	Hüseyin ŞAHİN	AK Parti	BURSA
6824	Mustafa Kemal ŞERBETÇİOĞLU	AK Parti	BURSA
4522	Turhan TAYAN	CHP	BURSA
6835	Bedrettin YILDIRIM	AK Parti	BURSA
6254	Mehmet DANİŞ	AK Parti	ÇANAKKALE
6902	İsmail KAŞDEMİR	AK Parti	ÇANAKKALE
6832	Ali SARIBAŞ	CHP	ÇANAKKALE
6753	Mustafa Serdar SOYDAN	CHP	ÇANAKKALE
6653	Hüseyin FİLİZ	AK Parti	ÇANKIRI
6654	İdris ŞAHİN	AK Parti	ÇANKIRI
6387	Cahit BAĞCI	AK Parti	ÇORUM
6803	Tufan KÖSE	CHP	ÇORUM
6708	Salim USLU	AK Parti	ÇORUM
6202	Murat YILDIRIM	AK Parti	ÇORUM
6923	İlhan CİHANER	CHP	DENİZLİ
6797	Nurcan DALBUDAK	AK Parti	DENİZLİ
3658	Adnan KESKİN	CHP	DENİZLİ
6795	Bilal UÇAR	AK Parti	DENİZLİ
6601	Mehmet YÜKSEL	AK Parti	DENİZLİ
6783	Nihat ZEYBEKCİ	AK Parti	DENİZLİ
6960	Nursel AYDOĞAN	BDP	DİYARBAKIR
6549	Emine AYNA	BDP	DİYARBAKIR
6123	Mehmet Mehdi EKER	AK Parti	DİYARBAKIR
6946	Mehmet Galip ENSARİOĞLU	AK Parti	DİYARBAKIR
3769	Şerafettin ELÇİ	KADEP	DİYARBAKIR
6939	Oya ERONAT	AK Parti	DİYARBAKIR
6935	Cuma İÇTEN	AK Parti	DİYARBAKIR
6940	Mine LÖK BEYAZ	AK Parti	DİYARBAKIR
6959	Altan TAN	BDP	DİYARBAKIR
4537	Leyla ZANA	BAĞIMSIZ	DİYARBAKIR
6878	Fevai ARSLAN	AK Parti	DÜZCE
6813	Osman ÇAKIR	AK Parti	DÜZCE
6815	İbrahim KORKMAZ	AK Parti	DÜZCE
6755	Kemal DEĞİRMENDERELİ	CHP	EDİRNE
6743	Recep GÜRKAN	CHP	EDİRNE
6491	Mehmet MÜEZZİNOĞLU	AK Parti	EDİRNE
6729	Şuay ALPAY	AK Parti	ELAZIĞ
6761	Sermin BALIK	AK Parti	ELAZIĞ
6097	Zülfü DEMİRBAĞ	AK Parti	ELAZIĞ
6821	Enver ERDEM	MHP	ELAZIĞ
6453	Faruk SEPTİOĞLU	AK Parti	ELAZIĞ
6659	Muharrem IŞIK	CHP	ERZİNCAN
5821	Sebahattin KARAKELLE	AK Parti	ERZİNCAN
6331	Recep AKDAĞ	AK Parti	ERZURUM
6576	Muhyettin AKSAK	AK Parti	ERZURUM
6496	Fazilet DAĞCI ÇIĞLIK	AK Parti	ERZURUM
4548	Oktay ÖZTÜRK	MHP	ERZURUM
6728	Cengiz YAVİLİOĞLU	AK Parti	ERZURUM
6750	Adnan YILMAZ	AK Parti	ERZURUM
6804	Nabi AVCI	AK Parti	ESKİŞEHİR
6818	Ülker CAN	AK Parti	ESKİŞEHİR
6722	Ruhsar DEMİREL	MHP	ESKİŞEHİR
6817	Salih KOCA	AK Parti	ESKİŞEHİR
6713	Kazım KURT	CHP	ESKİŞEHİR
6766	Derya BAKBAK	AK Parti	GAZİANTEP
5800	Hüseyin ÇELİK	AK Parti	GAZİANTEP
6506	Mehmet ERDOĞAN	AK Parti	GAZİANTEP
6763	Abdullah Nejat KOÇER	AK Parti	GAZİANTEP
6498	İbrahim Halil MAZICIOĞLU	AK Parti	GAZİANTEP
6264	Mehmet SARI	AK Parti	GAZİANTEP
6679	Ali SERİNDAĞ	CHP	GAZİANTEP
6770	Ali ŞAHİN	AK Parti	GAZİANTEP
6159	Fatma ŞAHİN	AK Parti	GAZİANTEP
6764	Mehmet ŞEKER	CHP	GAZİANTEP
6776	Şamil TAYYAR	AK Parti	GAZİANTEP
6726	Edip Semih YALÇIN	MHP	GAZİANTEP
6735	Mehmet GELDİ	AK Parti	GİRESUN
6829	Selahattin KARAAHMETOĞLU	CHP	GİRESUN
5946	Adem TATLI	AK Parti	GİRESUN
6593	Kemalettin AYDIN	AK Parti	GÜMÜŞHANE
6869	Feramuz ÜSTÜN	AK Parti	GÜMÜŞHANE
4561	Esat CANAN	BDP	HAKKARİ
6482	Selahattin DEMİRTAŞ	BDP	HAKKARİ
6969	Adil ZOZANİ	BDP	HAKKARİ
6784	Hasan AKGÖL	CHP	HATAY
6673	Adnan Şefik ÇİRKİN	MHP	HATAY
6926	Mevlüt DUDU	CHP	HATAY
6669	Mehmet Ali EDİBOĞLU	CHP	HATAY
6013	Sadullah ERGİN	AK Parti	HATAY
6925	Refik ERYILMAZ	CHP	HATAY
6604	Orhan KARASAYAR	AK Parti	HATAY
6731	Mehmet ÖNTÜRK	AK Parti	HATAY
6932	Adem YEŞİLDAL	AK Parti	HATAY
6475	Pervin BULDAN	BDP	IĞDIR
6772	Sinan OĞAN	MHP	IĞDIR
6378	Süreyya Sadi BİLGİÇ	AK Parti	ISPARTA
6427	Süleyman Nevzat KORKMAZ	MHP	ISPARTA
6851	Ali Haydar ÖNER	CHP	ISPARTA
6089	Recep ÖZEL	AK Parti	ISPARTA
5687	Celal ADAN	MHP	İSTANBUL
6942	Sabahat AKKİRAY	CHP	İSTANBUL
4279	Abdülkadir AKSU	AK Parti	İSTANBUL
5460	Meral AKŞENER	MHP	İSTANBUL
6951	Engin ALAN	MHP	İSTANBUL
6228	Ferit Mevlüt ASLANOĞLU	CHP	İSTANBUL
6168	Mustafa ATAŞ	AK Parti	İSTANBUL
5709	Aydın Ağan AYAYDIN	CHP	İSTANBUL
6025	Egemen BAĞIŞ	AK Parti	İSTANBUL
6848	Osman Aşkın BAK	AK Parti	İSTANBUL
6819	İhsan BARUTÇU	BAĞIMSIZ	İSTANBUL
6209	Nimet BAŞ	AK Parti	İSTANBUL
4362	Murat BAŞESGİOĞLU	MHP	İSTANBUL
6896	Osman BOYRAZ	AK Parti	İSTANBUL
6871	Volkan BOZKIR	AK Parti	İSTANBUL
6785	Hüseyin BÜRGE	AK Parti	İSTANBUL
6742	Ercan CENGİZ	CHP	İSTANBUL
6767	Süleyman ÇELEBİ	CHP	İSTANBUL
6899	Muhammed ÇETİN	AK Parti	İSTANBUL
6897	Ahmet Berat ÇONKAR	AK Parti	İSTANBUL
6806	Aykan ERDEMİR	CHP	BURSA
6921	Ayşe Eser DANIŞOĞLU	CHP	İSTANBUL
6624	Alev DEDEGİL	AK Parti	İSTANBUL
6812	Celal DİNÇER	CHP	İSTANBUL
6610	Ömer DİNÇER	AK Parti	İSTANBUL
6383	Mehmet DOMAÇ	AK Parti	İSTANBUL
4840	Osman Oktay EKŞİ	CHP	İSTANBUL
5471	Ekrem ERDEM	AK Parti	İSTANBUL
6748	Aykut ERDOĞDU	CHP	İSTANBUL
6174	Gürsoy EROL	AK Parti	İSTANBUL
6936	Ahmet Haldun ERTÜRK	AK Parti	İSTANBUL
6756	Haluk EYİDOĞAN	CHP	İSTANBUL
6408	İdris GÜLLÜCE	AK Parti	İSTANBUL
6069	Mehmet Akif HAMZAÇEBİ	CHP	İSTANBUL
6336	Halide İNCEKARA	AK Parti	İSTANBUL
6167	Ünal KACIR	AK Parti	İSTANBUL
6915	Harun KARACA	AK Parti	İSTANBUL
6495	Atila KAYA	MHP	İSTANBUL
6883	Erol KAYA	AK Parti	İSTANBUL
6910	Tülay KAYNARCA	AK Parti	İSTANBUL
5982	Kemal KILIÇDAROĞLU	CHP	İSTANBUL
6379	Feyzullah KIYIKLIK	AK Parti	İSTANBUL
6858	Osman Taney KORUTÜRK	CHP	İSTANBUL
6799	Mehmet Doğan KUBAT	AK Parti	İSTANBUL
6274	Burhan KUZU	AK Parti	İSTANBUL
6885	Sedef KÜÇÜK	CHP	İSTANBUL
6777	Metin KÜLÜNK	AK Parti	İSTANBUL
6775	Mehmet MUŞ	AK Parti	İSTANBUL
6918	Nureddin NEBATİ	AK Parti	İSTANBUL
6864	Melda ONUR	CHP	İSTANBUL
6800	Umut ORAN	CHP	İSTANBUL
6929	Kadir Gökmen ÖĞÜT	CHP	İSTANBUL
6903	Ahmet Baha ÖĞÜTKEN	AK Parti	İSTANBUL
6963	Sırrı Süreyya ÖNDER	BDP	İSTANBUL
6744	Ali ÖZGÜNDÜZ	CHP	İSTANBUL
6916	İhsan ÖZKES	CHP	İSTANBUL
6920	Şafak PAVEY	CHP	İSTANBUL
6854	İsmail SAFİ	AK Parti	İSTANBUL
6930	Oktay SARAL	AK Parti	İSTANBUL
6895	Müslim SARI	CHP	İSTANBUL
6866	Mihrimah Belma SATIR	AK Parti	İSTANBUL
6876	Sevim SAVAŞER	AK Parti	İSTANBUL
6613	Fatma Nur SERTER	CHP	İSTANBUL
6906	Mustafa ŞENTOP	AK Parti	İSTANBUL
6912	Hakan ŞÜKÜR	AK Parti	İSTANBUL
6765	Mahmut TANAL	CHP	İSTANBUL
6908	Mustafa Sezgin TANRIKULU	CHP	İSTANBUL
6836	Gürsel TEKİN	CHP	İSTANBUL
6922	Binnaz TOPRAK	CHP	İSTANBUL
5486	Erdoğan TOPRAK	CHP	İSTANBUL
6413	Durmuşali TORLAK	MHP	İSTANBUL
6877	Faik TUNAY	CHP	İSTANBUL
6548	Sebahat TUNCEL	BDP	İSTANBUL
6771	Bülent TURAN	AK Parti	İSTANBUL
6950	Ahmet Kutalmış TÜRKEŞ	AK Parti	İSTANBUL
6962	Abdullah Levent TÜZEL	BAĞIMSIZ	İSTANBUL
6952	İsmet UÇMA	AK Parti	İSTANBUL
6823	Şirin ÜNAL	AK Parti	İSTANBUL
5971	Enver YILMAZ	AK Parti	İSTANBUL
6505	İbrahim YİĞİT	AK Parti	İSTANBUL
6856	Erdal AKSÜNGER	CHP	İZMİR
6865	Ali AŞLIK	AK Parti	İZMİR
6945	Mustafa Ali BALBAY	CHP	İZMİR
6838	Musa ÇAM	CHP	İZMİR
6779	Aytun ÇIRAY	CHP	İZMİR
6875	Hamza DAĞ	AK Parti	İZMİR
6934	İlknur DENİZLİ	AK Parti	İZMİR
3782	Ertuğrul GÜNAY	AK Parti	İZMİR
6781	Hülya GÜVEN	CHP	İZMİR
6752	İlhan İŞBİLEN	AK Parti	İZMİR
4287	Erdal KALKAN	AK Parti	İZMİR
6786	Mustafa MOROĞLU	CHP	İZMİR
6564	Şükran Güldal MUMCU	CHP	İZMİR
6121	Oğuz OYAN	CHP	İZMİR
6891	Rıfat SAİT	AK Parti	İZMİR
6523	Mehmet Ali SUSAM	CHP	İZMİR
6860	Aydın ŞENGÜL	AK Parti	İZMİR
6286	Mehmet Sayım TEKELİOĞLU	AK Parti	İZMİR
6853	Rahmi Aşkın TÜRELİ	CHP	İZMİR
6802	Rıza Mahmut TÜRMEN	CHP	İZMİR
6872	Nesrin ULEMA	AK Parti	İZMİR
5763	Oktay VURAL	MHP	İZMİR
6239	Binali YILDIRIM	AK Parti	İZMİR
6809	Alaattin YÜKSEL	CHP	İZMİR
6769	Sevde BAYAZIT KAÇAR	AK Parti	KAHRAMANMARAŞ
6739	Mesut DEDEOĞLU	MHP	KAHRAMANMARAŞ
6787	Sıtkı GÜVENÇ	AK Parti	KAHRAMANMARAŞ
6515	Durdu ÖZBOLAT	CHP	KAHRAMANMARAŞ
6002	Nevzat PAKDİL	AK Parti	KAHRAMANMARAŞ
5506	Mehmet SAĞLAM	AK Parti	KAHRAMANMARAŞ
6862	Mahir ÜNAL	AK Parti	KAHRAMANMARAŞ
6661	Osman KAHVECİ	AK Parti	KARABÜK
5482	Mehmet Ali ŞAHİN	AK Parti	KARABÜK
6306	Mevlüt AKGÜN	AK Parti	KARAMAN
6440	Lütfi ELVAN	AK Parti	KARAMAN
6698	Ahmet ARSLAN	AK Parti	KARS
6966	Mülkiye BİRTANE	BDP	KARS
6693	Yunus KILIÇ	AK Parti	KARS
6749	Emin ÇINAR	MHP	KASTAMONU
6943	Mustafa Gökhan GÜLŞEN	AK Parti	KASTAMONU
6337	Hakkı KÖYLÜ	AK Parti	KASTAMONU
6318	Mustafa ELİTAŞ	AK Parti	KAYSERİ
6900	Pelin GÜNDEŞ BAKIR	AK Parti	KAYSERİ
6746	Yusuf HALAÇOĞLU	MHP	KAYSERİ
6433	Yaşar KARAYEL	AK Parti	KAYSERİ
6509	Mehmet Şevki KULKULOĞLU	CHP	KAYSERİ
6529	Ahmet ÖKSÜZKAYA	AK Parti	KAYSERİ
6948	İsmail TAMER	AK Parti	KAYSERİ
5686	Sadık YAKUT	AK Parti	KAYSERİ
6317	Taner YILDIZ	AK Parti	KAYSERİ
5932	Beşir ATALAY	AK Parti	KIRIKKALE
6133	Ramazan CAN	AK Parti	KIRIKKALE
6716	Oğuz Kağan KÖKSAL	AK Parti	KIRIKKALE
6500	Turgut DİBEK	CHP	KIRKLARELİ
6947	Gülay DALYAN	AK Parti	İSTANBUL
6550	Abdullah ÇALIŞKAN	AK Parti	KIRŞEHİR
6656	Ahmet Salih DAL	AK Parti	KİLİS
6657	Fuat KARAKUŞ	AK Parti	KİLİS
6680	Haydar AKAR	CHP	KOCAELİ
6937	Zeki AYGÜN	AK Parti	KOCAELİ
6321	Muzaffer BAŞTOPÇU	AK Parti	KOCAELİ
6327	Nihat ERGÜN	AK Parti	KOCAELİ
6535	Azize Sibel GÖNÜL	AK Parti	KOCAELİ
6684	Hurşit GÜNEŞ	CHP	KOCAELİ
6534	Fikri IŞIK	AK Parti	KOCAELİ
6938	Mehmet Ali OKUR	AK Parti	KOCAELİ
6941	İlyas ŞEKER	AK Parti	KOCAELİ
6664	Lütfü TÜRKKAN	MHP	KOCAELİ
6672	Mustafa AKIŞ	AK Parti	KONYA
5668	Faruk BAL	MHP	KONYA
6868	Mustafa BALOĞLU	AK Parti	KONYA
6648	Ahmet DAVUTOĞLU	AK Parti	KONYA
6423	Mustafa KABAKCI	AK Parti	KONYA
6466	Mustafa KALAYCI	MHP	KONYA
5938	Atilla KART	CHP	KONYA
6281	Kerim ÖZKUL	AK Parti	KONYA
6718	Gülay SAMANCI	AK Parti	KONYA
6276	Harun TÜFEKCİ	AK Parti	KONYA
6420	Ayşe TÜRKMENOĞLU	AK Parti	KONYA
6677	Hüseyin ÜZÜLMEZ	AK Parti	KONYA
6725	Cem ZORLU	AK Parti	KONYA
5979	Soner AKSOY	AK Parti	KÜTAHYA
6741	İdris BAL	AK Parti	KÜTAHYA
6437	Alim IŞIK	MHP	KÜTAHYA
6658	Vural KAVUNCU	AK Parti	KÜTAHYA
6171	Hasan Fehmi KİNAY	AK Parti	KÜTAHYA
6857	Veli AĞBABA	CHP	MALATYA
6685	Hüseyin Cemal AKIN	AK Parti	MALATYA
6615	Öznur ÇALIK	AK Parti	MALATYA
6518	Mahmut Mücahit FINDIKLI	AK Parti	MALATYA
6429	Ömer Faruk ÖZ	AK Parti	MALATYA
6924	Mustafa ŞAHİN	AK Parti	MALATYA
6462	Erkan AKÇAY	MHP	MANİSA
6913	Uğur AYDEMİR	AK Parti	MANİSA
6522	Recai BERBER	AK Parti	MANİSA
3764	Sümer ORAL	MHP	MANİSA
6324	Hasan ÖREN	CHP	MANİSA
6778	Sakine ÖZ	CHP	MANİSA
6928	Özgür ÖZEL	CHP	MANİSA
6179	Hüseyin TANRIVERDİ	AK Parti	MANİSA
6863	Muzaffer YURTTAŞ	AK Parti	MANİSA
6732	Abdurrahim AKDAĞ	AK Parti	MARDİN
6633	Gönül BEKİN ŞAHKULUBEY	AK Parti	MARDİN
6965	Erol DORA	BDP	MARDİN
6737	Muammer GÜLER	AK Parti	MARDİN
3536	Ahmet TÜRK	BAĞIMSIZ	MARDİN
6964	Gülser YILDIRIM	BDP	MARDİN
6927	Aytuğ ATICI	CHP	MERSİN
6719	Nebi BOZKURT	AK Parti	MERSİN
6531	Mehmet Zafer ÇAĞLAYAN	AK Parti	MERSİN
6641	İsa GÖK	CHP	MERSİN
6955	Ertuğrul KÜRKCÜ	BDP	MERSİN
6811	Ali ÖZ	MHP	MERSİN
6563	Ali Rıza ÖZTÜRK	CHP	MERSİN
6557	Vahap SEÇER	CHP	MERSİN
5782	Mehmet ŞANDIR	MHP	MERSİN
6714	Ahmet Tevfik UZUN	AK Parti	MERSİN
6830	Ömer Süha ALDAN	CHP	MUĞLA
6833	Ali BOĞA	AK Parti	MUĞLA
6791	Tolga ÇANDAR	CHP	MUĞLA
6914	Nurettin DEMİR	CHP	MUĞLA
6881	Mehmet ERDOĞAN	MHP	MUĞLA
6422	Yüksel ÖZDEN	AK Parti	MUĞLA
6890	Muzaffer ÇAKAR	AK Parti	MUŞ
6961	Demir ÇELİK	BDP	MUŞ
6733	Faruk IŞIK	AK Parti	MUŞ
4673	Sırrı SAKİK	BDP	MUŞ
6517	Ahmet Erdal FERALAN	AK Parti	NEVŞEHİR
6882	Murat GÖKTÜRK	AK Parti	NEVŞEHİR
6682	Alpaslan KAVAKLIOĞLU	AK Parti	NİĞDE
6706	Ömer SELVİ	AK Parti	NİĞDE
6711	Doğan ŞAFAK	CHP	NİĞDE
6578	Mustafa HAMARAT	AK Parti	ORDU
6312	İdris Naim ŞAHİN	AK Parti	ORDU
6879	İhsan ŞENER	AK Parti	ORDU
6888	Fatih Han ÜNAL	AK Parti	ORDU
6798	İdris YILDIZ	CHP	ORDU
5801	Devlet BAHÇELİ	MHP	OSMANİYE
6339	Durdu Mehmet KASTAL	AK Parti	OSMANİYE
6740	Suat ÖNAL	AK Parti	OSMANİYE
6694	Hasan Hüseyin TÜRKOĞLU	MHP	OSMANİYE
6260	Nusret BAYRAKTAR	AK Parti	RİZE
6889	Hasan KARAL	AK Parti	RİZE
5996	Hayati YAZICI	AK Parti	RİZE
6348	Hasan Ali ÇELİK	AK Parti	SAKARYA
5997	Şaban DİŞLİ	AK Parti	SAKARYA
6861	Ayşenur İSLAM	AK Parti	SAKARYA
6438	Münir KUTLUATA	MHP	SAKARYA
6789	Engin ÖZKOÇ	CHP	SAKARYA
6822	Ali İhsan YAVUZ	AK Parti	SAKARYA
6675	Tülay BAKIR	AK Parti	SAMSUN
6269	Cemal Yılmaz DEMİR	AK Parti	SAMSUN
6270	Mustafa DEMİR	AK Parti	SAMSUN
6834	Ahmet İhsan KALKAVAN	CHP	SAMSUN
6662	Akif Çağatay KILIÇ	AK Parti	SAMSUN
6153	Suat KILIÇ	AK Parti	SAMSUN
6081	Ahmet Haluk KOÇ	CHP	SAMSUN
6850	Cemalettin ŞİMŞEK	MHP	SAMSUN
6008	Ahmet YENİ	AK Parti	SAMSUN
6010	Afif DEMİRKIRAN	AK Parti	SİİRT
6479	Gültan KIŞANAK	BDP	SİİRT
6901	Osman ÖREN	AK Parti	SİİRT
6030	Engin ALTAY	CHP	SİNOP
6745	Mehmet ERSOY	AK Parti	SİNOP
6887	Hilmi BİLGİN	AK Parti	SİVAS
6405	Malik Ecder ÖZDEMİR	CHP	SİVAS
6886	Ali TURAN	AK Parti	SİVAS
6374	İsmet YILMAZ	AK Parti	SİVAS
5754	Yahya AKMAN	AK Parti	ŞANLIURFA
6695	Mehmet AKYÜREK	AK Parti	ŞANLIURFA
6968	İbrahim AYHAN	BDP	ŞANLIURFA
6474	İbrahim BİNİCİ	BDP	ŞANLIURFA
6816	Muzaffer ASLAN	AK Parti	KIRŞEHİR
6488	Abdulkadir Emin ÖNEN	AK Parti	ŞANLIURFA
6674	Halil ÖZCAN	AK Parti	ŞANLIURFA
6104	Zeynep Armağan USLU	AK Parti	ŞANLIURFA
6681	Mehmet Emin DİNDAR	AK Parti	ŞIRNAK
6970	Selma IRMAK	BDP	ŞIRNAK
6825	Mehmet Volkan CANALİOĞLU	CHP	TRABZON
6294	Faruk Nafız ÖZAK	AK Parti	TRABZON
6555	Safiye SEYMENOĞLU	AK Parti	TRABZON
6826	Hüseyin AYGÜN	CHP	TUNCELİ
4440	Kamer GENÇ	CHP	TUNCELİ
6792	Dilek AKAGÜN YILMAZ	CHP	UŞAK
6788	Mehmet ALTAY	AK Parti	UŞAK
6768	İsmail GÜNEŞ	AK Parti	UŞAK
6958	Kemal AKTAŞ	BAĞIMSIZ	VAN
6807	Mustafa BİLİCİ	AK Parti	VAN
6805	Fatih ÇİFTCİ	AK Parti	VAN
6967	Nazmi GÜR	BDP	VAN
6394	Burhan KAYATÜRK	AK Parti	VAN
6572	Gülşen ORHAN	AK Parti	VAN
6478	Aysel TUĞLUK	BAĞIMSIZ	VAN
6484	Özdal ÜÇER	BDP	VAN
6747	Temel COŞKUN	AK Parti	YALOVA
6367	Muharrem İNCE	CHP	YALOVA
6709	Yusuf BAŞER	AK Parti	YOZGAT
6238	Bekir BOZDAĞ	AK Parti	YOZGAT
6855	Sadir DURMAZ	MHP	YOZGAT
6710	Ertuğrul SOYSAL	AK Parti	YOZGAT
6796	Ercan CANDAN	AK Parti	ZONGULDAK
6894	Mehmet HABERAL	CHP	ZONGULDAK
6512	Ali İhsan KÖKTÜRK	CHP	ZONGULDAK
3822	Köksal TOPTAN	AK Parti	ZONGULDAK
6738	Özcan ULUPINAR	AK Parti	ZONGULDAK
6957	Murat BOZLAK	BDP	ADANA
6508	Necdet ÜNÜVAR	AK Parti	ADANA
6575	Fatma SALMAN	AK Parti	AĞRI
6199	Bülent GEDİKLİ	AK Parti	ANKARA
6700	Emine Ülker TARHAN	CHP	ANKARA
6949	Menderes M. Tevfik TÜREL	AK Parti	ANTALYA
4499	Mehmet Cemal ÖZTAYLAN	AK Parti	BALIKESİR
6112	Bayram ÖZÇELİK	AK Parti	BURDUR
6831	Kemal EKİNCİ	CHP	BURSA
6844	Mustafa ÖZTÜRK	AK Parti	BURSA
6426	Emin Haluk AYHAN	MHP	DENİZLİ
6944	Mehmet Süleyman HAMZAOĞULLARI	AK Parti	DİYARBAKIR
6808	Bedii Süheyl BATUM	CHP	ESKİŞEHİR
5943	Nurettin CANİKLİ	AK Parti	GİRESUN
6736	Hacı Bayram TÜRKOĞLU	AK Parti	HATAY
6628	Ayşe Nur BAHÇEKAPILI	AK Parti	İSTANBUL
6759	Türkan DAĞOĞLU	AK Parti	İSTANBUL
6371	Recep Tayyip ERDOĞAN	AK Parti	İSTANBUL
6870	Muhammet Bilal MACİT	AK Parti	İSTANBUL
6204	Bihlun TAMAYLIGİL	CHP	İSTANBUL
6794	Birgül AYMAN GÜLER	CHP	İZMİR
5683	Ahmet Kenan TANRIKULU	MHP	İZMİR
6754	Yıldırım Mehmet RAMAZANOĞLU	AK Parti	KAHRAMANMARAŞ
6917	Şenol GÜRŞAN	AK Parti	KIRKLARELİ
6079	Mehmet Siyam KESİMOĞLU	CHP	KIRKLARELİ
6683	Mehmet Hilal KAPLAN	CHP	KOCAELİ
6670	İlhan YERLİKAYA	AK Parti	KONYA
6907	Selçuk ÖZDAĞ	AK Parti	MANİSA
6715	Çiğdem Münevver ÖKTEN	AK Parti	MERSİN
6904	Ebu Bekir GİZLİGİDER	AK Parti	NEVŞEHİR
6347	Ayhan Sefer ÜSTÜN	AK Parti	SAKARYA
6620	Mesude Nursuna MEMECAN	AK Parti	SİVAS
5905	Faruk ÇELİK	AK Parti	ŞANLIURFA
4698	Seyit EYYÜPOĞLU	AK Parti	ŞANLIURFA
6663	Abdulkerim GÖK	AK Parti	ŞANLIURFA
6671	Mehmet Kasım GÜLPINAR	AK Parti	ŞANLIURFA
6707	Mahmut KAÇAR	AK Parti	ŞANLIURFA
6476	Hasip KAPLAN	BDP	ŞIRNAK
6971	Faysal SARIYILDIZ	BDP	ŞIRNAK
5954	Tevfik Ziyaeddin AKBULUT	AK Parti	TEKİRDAĞ
6655	Bülent BELEN	MHP	TEKİRDAĞ
6686	Emre KÖPRÜLÜ	CHP	TEKİRDAĞ
6402	Faik ÖZTRAK	CHP	TEKİRDAĞ
6884	Özlem YEMİŞÇİ	AK Parti	TEKİRDAĞ
6837	Candan YÜCEER	CHP	TEKİRDAĞ
6290	Zeyid ASLAN	AK Parti	TOKAT
5973	Şükrü AYALAN	AK Parti	TOKAT
5676	Reşat DOĞRU	MHP	TOKAT
6780	Orhan DÜZGÜN	CHP	TOKAT
6616	Dilek YÜKSEL	AK Parti	TOKAT
4712	Koray AYDIN	MHP	TRABZON
6933	Erdoğan BAYRAKTAR	AK Parti	TRABZON
6846	Aydın BIYIKLIOĞLU	AK Parti	TRABZON
\.


--
-- Data for Name: gd_mv_records; Type: TABLE DATA; Schema: public; Owner: furiston
--

COPY gd_mv_records (id, mv_id, date, ilk_kanun, kanun, sso, yso, ilk_mao, mao, ilk_ggo, ggo, ilk_go, go) FROM stdin;
1	6957	2012-10-18	0	0	0	4	1	140	0	0	0	0
2	6026	2012-10-18	0	1	0	0	0	0	0	0	0	0
3	5540	2012-10-18	0	1	0	0	0	0	0	0	0	0
4	6758	2012-10-18	3	12	2	25	0	130	0	0	0	3
5	6859	2012-10-18	1	6	0	3	1	45	0	0	0	1
6	6852	2012-10-18	1	6	0	0	0	2	0	0	0	0
7	6585	2012-10-18	1	3	0	0	1	5	0	0	0	0
8	5857	2012-10-18	6	12	193	306	18	134	0	0	0	0
9	6349	2012-10-18	0	1	0	0	0	3	0	0	0	0
10	6782	2012-10-18	0	10	0	13	2	11	1	1	0	1
11	6931	2012-10-18	1	7	0	14	3	47	0	0	0	3
12	6508	2012-10-18	0	1	0	0	1	2	0	0	0	0
13	6439	2012-10-18	2	7	4	32	6	129	0	0	0	0
14	6905	2012-10-18	4	10	0	46	3	199	0	0	0	0
15	6608	2012-10-18	4	5	0	0	0	1	0	1	0	0
16	6565	2012-10-18	0	1	0	0	0	1	0	0	0	0
17	6760	2012-10-18	0	15	0	28	2	175	0	1	0	2
18	6660	2012-10-18	0	1	0	0	0	0	0	0	0	0
19	6793	2012-10-18	0	2	0	0	0	5	0	0	0	0
20	5336	2012-10-18	0	0	0	0	1	1	0	0	0	0
21	6545	2012-10-18	0	1	0	0	0	0	0	0	0	0
22	6712	2012-10-18	12	23	0	28	0	50	0	0	0	2
23	6898	2012-10-18	0	1	0	0	0	1	0	0	0	0
24	6828	2012-10-18	1	4	0	31	4	179	0	0	0	0
25	6954	2012-10-18	6	6	4	44	7	141	0	0	0	0
26	6665	2012-10-18	1	6	0	0	0	3	0	0	0	0
27	6575	2012-10-18	0	1	0	0	0	8	0	0	0	0
28	6090	2012-10-18	0	1	0	0	0	2	0	0	0	0
29	5981	2012-10-18	0	1	0	0	0	1	0	0	0	0
30	5988	2012-10-18	0	0	0	0	0	12	0	0	0	0
31	6566	2012-10-18	0	2	0	0	0	3	0	0	0	0
32	6667	2012-10-18	0	1	0	0	0	2	0	0	0	0
33	6386	2012-10-18	2	3	0	0	0	11	0	0	0	0
34	6880	2012-10-18	0	11	0	18	0	50	0	1	0	2
35	6689	2012-10-18	0	1	0	0	0	0	0	1	0	0
36	6814	2012-10-18	0	1	0	0	0	3	0	0	0	2
37	6720	2012-10-18	8	13	0	40	1	67	0	0	0	1
38	6063	2012-10-18	0	0	0	0	0	0	0	0	0	0
39	5948	2012-10-18	0	16	0	19	0	17	0	0	0	1
40	6148	2012-10-18	5	14	0	50	3	42	0	0	0	2
41	4445	2012-10-18	1	1	0	0	0	0	0	0	0	0
42	6095	2012-10-18	0	1	0	0	0	0	0	0	0	0
43	6702	2012-10-18	0	1	2	21	0	40	0	0	0	0
44	6302	2012-10-18	4	6	0	0	2	2	0	0	0	0
45	6199	2012-10-18	0	1	0	0	0	0	0	0	0	0
46	6692	2012-10-18	2	15	0	100	4	45	0	0	1	2
47	6721	2012-10-18	0	0	0	15	0	8	0	0	0	1
48	6703	2012-10-18	0	2	0	0	0	0	0	0	0	0
49	5644	2012-10-18	0	1	0	1	0	3	0	0	0	1
50	5930	2012-10-18	0	1	0	0	0	0	0	0	0	0
51	6704	2012-10-18	0	4	0	0	0	8	0	0	0	0
52	5347	2012-10-18	0	1	0	0	0	0	0	0	0	0
53	4634	2012-10-18	3	4	0	0	0	1	0	0	0	0
54	6801	2012-10-18	0	1	0	0	0	0	0	0	0	0
55	6717	2012-10-18	1	7	0	24	0	31	0	1	0	3
56	6690	2012-10-18	11	30	9	115	10	166	0	0	0	1
57	6525	2012-10-18	0	1	0	0	0	0	0	0	0	0
58	6701	2012-10-18	0	2	0	0	1	16	0	0	0	0
59	6697	2012-10-18	0	1	0	0	0	1	0	0	0	0
60	6810	2012-10-18	0	1	0	0	0	2	0	0	0	0
61	6696	2012-10-18	0	2	5	0	0	2	0	1	0	0
62	6700	2012-10-18	14	15	0	11	1	9	0	3	1	3
63	6727	2012-10-18	0	4	37	89	0	96	0	0	0	0
64	6375	2012-10-18	0	1	0	0	0	28	0	0	0	0
65	6699	2012-10-18	14	16	3	146	6	134	0	0	0	0
66	6688	2012-10-18	10	29	23	172	6	225	0	1	0	3
67	6552	2012-10-18	1	2	0	0	1	2	0	0	0	0
68	3377	2012-10-18	0	0	0	0	0	0	0	0	0	1
69	6678	2012-10-18	1	11	7	17	1	82	0	0	0	3
70	6235	2012-10-18	0	1	0	0	0	0	0	0	0	0
71	5691	2012-10-18	0	1	0	0	0	0	0	0	0	0
72	6469	2012-10-18	0	19	0	20	2	132	0	0	0	0
73	6451	2012-10-18	2	2	0	0	0	1	0	0	0	0
74	6031	2012-10-18	2	17	0	6	2	54	0	0	0	3
75	6911	2012-10-18	0	1	0	0	0	4	0	0	0	0
76	6893	2012-10-18	0	1	0	0	0	1	0	0	0	0
77	6919	2012-10-18	1	9	0	23	4	30	0	1	0	0
78	4603	2012-10-18	1	2	0	56	0	20	0	0	0	0
79	6949	2012-10-18	0	3	0	0	1	2	0	0	0	0
80	6687	2012-10-18	0	1	0	0	0	1	0	0	0	0
81	6353	2012-10-18	26	34	558	191	10	31	0	0	1	3
82	6909	2012-10-18	1	9	0	126	2	54	0	0	0	4
83	6847	2012-10-18	0	1	0	0	0	1	0	1	0	0
84	6723	2012-10-18	0	10	2	1	0	82	0	1	0	1
85	6839	2012-10-18	6	15	0	187	5	106	1	1	0	0
86	6603	2012-10-18	0	1	0	0	1	5	0	0	0	0
87	6892	2012-10-18	0	1	0	0	0	4	0	0	0	0
88	6164	2012-10-18	0	0	0	0	1	2	0	0	0	0
89	6734	2012-10-18	6	23	2	26	15	261	0	2	0	2
90	5776	2012-10-18	9	14	0	11	0	151	0	0	0	0
91	6790	2012-10-18	4	44	3	66	3	183	0	1	0	2
92	6362	2012-10-18	0	0	0	0	0	2	0	0	0	0
93	6953	2012-10-18	0	1	0	0	0	3	0	0	0	0
94	6446	2012-10-18	0	4	0	229	3	78	0	0	0	0
95	6827	2012-10-18	0	10	1	27	0	55	0	0	0	1
96	6762	2012-10-18	8	30	11	56	13	237	0	0	0	4
97	4499	2012-10-18	0	1	0	0	0	0	0	0	0	0
98	4255	2012-10-18	0	1	0	0	0	1	0	0	0	0
99	6541	2012-10-18	2	4	5	0	0	1	0	1	0	0
100	6407	2012-10-18	15	20	0	30	12	45	0	1	0	3
101	6477	2012-10-18	1	1	0	35	5	140	0	0	0	0
102	6730	2012-10-18	0	2	0	0	0	2	0	0	0	0
103	6398	2012-10-18	0	1	0	0	0	0	0	0	0	0
104	6489	2012-10-18	0	0	0	0	0	0	0	0	0	0
105	6874	2012-10-18	0	2	0	0	0	5	0	0	0	0
106	5959	2012-10-18	1	1	0	0	0	2	0	0	0	0
107	4505	2012-10-18	1	4	0	21	2	55	0	0	0	0
108	6972	2012-10-18	4	4	2	46	16	142	0	0	0	0
109	6724	2012-10-18	0	2	0	0	0	1	0	0	0	0
110	6577	2012-10-18	0	0	0	0	0	0	0	0	0	0
111	6757	2012-10-18	0	3	0	0	0	1	0	0	0	0
112	6266	2012-10-18	0	0	0	0	2	2	0	0	0	0
113	6956	2012-10-18	0	0	0	39	5	140	0	0	0	0
114	6705	2012-10-18	1	6	6	0	0	1	0	1	0	0
115	6751	2012-10-18	1	7	0	0	0	2	0	0	0	0
116	6691	2012-10-18	11	21	0	85	12	57	0	1	0	1
117	6112	2012-10-18	0	0	0	0	0	0	0	0	0	0
118	6035	2012-10-18	2	27	0	40	10	305	0	2	0	3
119	6676	2012-10-18	0	1	0	0	0	2	0	0	0	0
120	5551	2012-10-18	0	1	0	0	0	0	0	0	0	0
121	6842	2012-10-18	0	2	0	0	0	3	0	0	0	0
122	6444	2012-10-18	1	5	1	309	2	12	0	0	0	0
123	6619	2012-10-18	0	1	0	0	0	8	0	0	0	0
124	6843	2012-10-18	0	2	0	0	0	1	0	0	0	0
125	6773	2012-10-18	1	32	0	26	6	182	0	1	0	5
126	6831	2012-10-18	1	11	0	6	0	28	0	1	0	2
127	6806	2012-10-18	1	11	0	24	2	51	0	0	0	1
128	6845	2012-10-18	0	1	0	0	0	2	0	0	0	0
129	6820	2012-10-18	10	26	1	63	3	97	0	0	0	4
130	6849	2012-10-18	0	1	0	0	0	2	0	0	0	0
131	6431	2012-10-18	1	7	0	12	3	152	0	0	0	0
132	6844	2012-10-18	0	2	0	0	0	2	0	0	0	0
133	6840	2012-10-18	0	1	0	0	0	3	0	0	0	0
134	6841	2012-10-18	4	9	4	0	0	5	0	0	0	0
135	6824	2012-10-18	0	2	0	0	0	3	0	0	0	0
136	4522	2012-10-18	3	13	0	31	1	22	0	1	0	3
137	6835	2012-10-18	0	1	0	0	1	2	0	0	0	0
138	6254	2012-10-18	0	1	0	0	0	5	0	0	0	0
139	6902	2012-10-18	0	3	0	0	0	2	0	0	0	0
140	6832	2012-10-18	6	29	5	25	4	199	0	1	0	1
141	6753	2012-10-18	1	25	2	16	4	184	0	1	0	2
142	6653	2012-10-18	1	2	0	0	0	0	0	0	0	0
143	6654	2012-10-18	0	4	0	0	0	2	0	0	0	0
144	6387	2012-10-18	0	1	0	0	0	3	0	0	0	0
145	6803	2012-10-18	3	9	0	4	0	60	0	0	0	2
146	6708	2012-10-18	1	2	0	0	0	2	0	0	0	0
147	6202	2012-10-18	0	1	0	0	0	1	0	0	0	0
148	6426	2012-10-18	3	6	0	1	2	129	0	0	0	0
149	6923	2012-10-18	1	8	0	8	0	11	0	1	0	2
150	6797	2012-10-18	0	0	0	0	0	3	0	0	0	0
151	3658	2012-10-18	2	7	0	31	0	17	0	0	0	3
152	6795	2012-10-18	0	1	0	0	0	4	0	0	0	0
153	6601	2012-10-18	0	1	0	0	0	5	0	0	0	0
154	6783	2012-10-18	0	1	0	0	0	4	0	0	0	0
155	6960	2012-10-18	1	1	1	33	6	140	0	0	0	0
156	6549	2012-10-18	1	1	0	20	0	140	0	0	0	0
157	6123	2012-10-18	0	0	0	0	0	0	0	0	0	0
158	3769	2012-10-18	0	0	0	0	0	0	0	0	0	0
159	6946	2012-10-18	0	2	0	0	0	1	0	0	0	0
160	6939	2012-10-18	0	3	0	0	0	11	0	0	0	0
161	6944	2012-10-18	0	0	0	0	0	9	0	0	0	0
162	6935	2012-10-18	0	2	0	0	1	3	0	1	0	0
163	6940	2012-10-18	0	2	0	0	0	2	0	0	0	0
164	6959	2012-10-18	1	1	0	273	9	141	0	0	0	0
165	4537	2012-10-18	0	0	0	1	0	55	0	0	0	0
166	6878	2012-10-18	0	0	0	0	0	0	0	1	0	0
167	6813	2012-10-18	0	0	0	0	0	1	0	0	0	0
168	6815	2012-10-18	0	1	0	0	0	5	0	0	0	0
169	6755	2012-10-18	0	10	0	12	1	41	0	0	0	1
170	6743	2012-10-18	2	12	0	24	0	114	0	1	0	2
171	6491	2012-10-18	0	0	0	0	0	3	0	0	0	0
172	6729	2012-10-18	1	4	0	0	0	5	0	0	0	0
173	6761	2012-10-18	0	1	0	0	0	1	0	0	0	0
174	6097	2012-10-18	0	2	0	0	0	10	0	0	0	0
175	6821	2012-10-18	0	9	0	25	13	188	0	0	0	0
176	6453	2012-10-18	0	1	0	0	0	0	0	0	0	0
177	6659	2012-10-18	5	20	0	55	9	129	0	1	0	2
178	5821	2012-10-18	0	1	0	0	0	0	0	0	0	0
179	6331	2012-10-18	0	1	0	0	0	0	0	0	0	0
180	6576	2012-10-18	0	1	0	0	0	1	0	0	0	0
181	6496	2012-10-18	0	0	0	0	0	2	0	0	0	0
182	4548	2012-10-18	1	5	0	24	1	138	0	0	0	0
183	6728	2012-10-18	1	3	0	0	0	0	0	0	0	0
184	6750	2012-10-18	0	2	0	0	0	0	0	0	0	0
185	6804	2012-10-18	0	0	0	0	0	0	0	0	0	0
186	6808	2012-10-18	0	9	0	2	1	31	0	0	0	3
187	6818	2012-10-18	0	2	0	0	0	2	0	0	0	0
188	6722	2012-10-18	0	8	0	155	9	58	0	0	0	0
189	6817	2012-10-18	0	3	5	0	0	1	0	0	0	0
190	6713	2012-10-18	14	20	11	107	2	126	0	1	0	3
191	6766	2012-10-18	0	2	0	0	0	1	0	0	0	0
192	5800	2012-10-18	0	2	0	0	0	0	0	0	0	0
193	6506	2012-10-18	1	2	0	0	1	4	0	0	0	0
194	6763	2012-10-18	0	3	0	0	0	1	0	0	0	0
195	6498	2012-10-18	0	2	0	0	0	1	0	0	0	0
196	6264	2012-10-18	0	2	0	0	0	2	0	0	0	0
197	6679	2012-10-18	4	28	0	18	0	198	0	1	0	5
198	6770	2012-10-18	0	1	0	0	0	3	0	0	0	0
199	6159	2012-10-18	0	1	0	0	0	0	0	0	0	0
200	6764	2012-10-18	6	27	15	58	4	279	0	1	0	3
201	6776	2012-10-18	0	1	0	0	0	2	0	0	0	0
202	6726	2012-10-18	0	2	1	14	0	22	0	0	0	0
203	5943	2012-10-18	6	7	0	0	1	1	1	1	0	0
204	6735	2012-10-18	0	1	0	0	0	0	0	0	0	0
205	6829	2012-10-18	2	16	15	70	3	85	0	0	0	3
206	5946	2012-10-18	0	1	5	0	0	0	0	0	0	0
207	6593	2012-10-18	0	5	0	0	0	15	0	0	0	0
208	6869	2012-10-18	0	2	0	0	0	1	0	0	0	0
209	4561	2012-10-18	0	0	0	0	0	141	0	0	0	0
210	6482	2012-10-18	0	0	0	0	0	0	0	0	0	0
211	6969	2012-10-18	2	3	0	18	9	143	0	0	0	0
212	6784	2012-10-18	0	14	0	36	2	137	0	1	0	2
213	6673	2012-10-18	11	15	0	75	3	74	0	0	0	0
214	6926	2012-10-18	2	11	1	54	4	100	0	1	0	1
215	6669	2012-10-18	4	29	1	79	5	253	0	1	0	2
216	6013	2012-10-18	0	1	0	0	0	0	0	0	0	0
217	6925	2012-10-18	3	7	0	16	1	34	0	1	0	1
218	6604	2012-10-18	0	2	0	0	0	12	0	0	0	0
219	6731	2012-10-18	0	2	0	0	0	8	0	0	0	0
220	6736	2012-10-18	0	4	0	0	0	1	0	0	0	0
221	6932	2012-10-18	0	1	0	0	0	1	0	0	0	0
222	6475	2012-10-18	4	4	0	61	28	173	1	1	4	4
223	6772	2012-10-18	4	8	28	56	5	95	0	0	0	0
224	6378	2012-10-18	1	2	0	0	0	1	0	0	0	0
225	6427	2012-10-18	0	6	0	19	6	109	0	0	0	0
226	6851	2012-10-18	4	19	0	0	0	109	0	1	0	1
227	6089	2012-10-18	1	5	5	0	0	5	0	1	0	0
228	5687	2012-10-18	0	4	0	17	1	200	0	0	0	0
229	6942	2012-10-18	2	10	0	29	0	32	0	0	0	1
230	4279	2012-10-18	0	2	0	0	0	0	0	0	0	0
231	5460	2012-10-18	0	1	0	0	0	14	0	0	0	0
232	6951	2012-10-18	0	0	0	0	0	0	0	0	0	0
233	6228	2012-10-18	7	17	46	5	45	114	0	3	0	2
234	6168	2012-10-18	0	1	5	0	0	5	0	1	0	0
235	5709	2012-10-18	4	10	0	14	5	27	0	0	0	2
236	6025	2012-10-18	0	1	0	0	0	0	0	0	0	0
237	6628	2012-10-18	4	5	0	0	0	1	0	1	0	0
238	6848	2012-10-18	0	2	0	0	0	4	0	0	0	0
239	6819	2012-10-18	0	1	0	23	0	0	0	0	0	0
240	6209	2012-10-18	0	0	0	0	0	0	0	0	0	0
241	4362	2012-10-18	0	1	0	0	0	50	0	0	0	0
242	6896	2012-10-18	0	1	0	0	0	5	0	1	0	0
243	6871	2012-10-18	0	0	0	0	0	0	0	0	0	0
244	6785	2012-10-18	0	1	0	0	0	1	0	0	0	0
245	6742	2012-10-18	1	9	0	3	0	18	0	0	0	0
246	6767	2012-10-18	4	17	35	37	2	60	0	0	0	2
247	6899	2012-10-18	0	1	0	0	0	0	0	0	0	0
248	6897	2012-10-18	0	1	0	0	0	4	0	0	0	0
249	6759	2012-10-18	1	3	0	0	0	2	0	0	0	0
250	6947	2012-10-18	0	0	0	0	0	4	0	0	0	0
251	6921	2012-10-18	3	12	0	8	2	22	0	0	0	1
252	6624	2012-10-18	0	1	0	0	0	2	0	0	0	0
253	6812	2012-10-18	17	49	22	23	10	200	0	0	0	3
254	6610	2012-10-18	0	0	0	0	0	0	0	0	0	0
255	6383	2012-10-18	1	3	0	0	0	2	0	0	0	0
256	4840	2012-10-18	6	12	2	102	1	21	0	1	0	2
257	5471	2012-10-18	0	1	0	0	0	0	0	0	0	0
258	6371	2012-10-18	1	1	0	0	0	0	0	0	0	0
259	6748	2012-10-18	0	13	0	48	2	54	0	0	0	3
260	6174	2012-10-18	0	1	0	0	0	1	0	0	0	0
261	6936	2012-10-18	0	1	0	0	0	2	0	0	0	0
262	6756	2012-10-18	0	22	1	31	0	160	0	0	0	1
263	6408	2012-10-18	0	1	0	0	0	1	0	0	0	0
264	6069	2012-10-18	16	17	0	23	1	4	1	2	0	2
265	6336	2012-10-18	0	1	0	0	1	2	0	0	0	0
266	6167	2012-10-18	0	1	0	0	0	1	0	0	0	0
267	6915	2012-10-18	0	1	0	0	0	2	0	0	0	0
268	6495	2012-10-18	1	4	0	18	0	113	0	0	0	0
269	6883	2012-10-18	0	1	0	0	0	4	0	0	0	0
270	6910	2012-10-18	0	2	0	0	0	5	0	0	0	0
271	5982	2012-10-18	0	0	0	0	0	0	0	0	0	0
272	6379	2012-10-18	0	1	0	0	0	0	0	0	0	0
273	6858	2012-10-18	0	15	0	11	0	21	0	0	0	3
274	6799	2012-10-18	2	5	5	0	0	4	0	0	0	0
275	6274	2012-10-18	0	0	0	0	0	0	0	0	0	0
276	6885	2012-10-18	6	24	0	13	5	119	0	1	0	2
277	6777	2012-10-18	1	2	0	0	0	3	0	0	0	0
278	6870	2012-10-18	0	1	0	0	0	3	0	0	0	0
279	6775	2012-10-18	0	2	0	0	0	3	0	0	0	0
280	6918	2012-10-18	0	1	0	0	0	2	0	0	0	0
281	6864	2012-10-18	1	12	0	34	3	43	0	0	0	1
282	6800	2012-10-18	15	22	3	219	10	32	0	0	0	1
283	6929	2012-10-18	0	25	5	34	0	277	0	2	0	1
284	6903	2012-10-18	0	3	0	0	0	3	0	0	0	0
285	6963	2012-10-18	6	6	0	30	2	141	0	0	0	0
286	6744	2012-10-18	11	27	8	87	12	165	0	2	0	2
287	6916	2012-10-18	1	27	29	123	4	369	0	0	0	3
288	6920	2012-10-18	1	7	0	9	1	32	0	0	0	1
289	6854	2012-10-18	0	1	0	0	0	9	0	0	0	0
290	6930	2012-10-18	0	3	0	0	0	1	0	0	0	0
291	6895	2012-10-18	0	6	0	11	0	15	0	0	0	3
292	6866	2012-10-18	0	2	0	0	0	4	0	0	0	0
293	6876	2012-10-18	0	2	0	0	0	5	0	1	0	0
294	6613	2012-10-18	0	11	2	13	1	30	0	1	0	2
295	6906	2012-10-18	0	2	0	0	0	0	0	0	0	0
296	6912	2012-10-18	0	2	0	0	0	1	0	0	0	0
297	6204	2012-10-18	1	11	0	4	0	8	0	1	0	1
298	6765	2012-10-18	126	151	37	202	17	244	0	2	0	2
299	6908	2012-10-18	47	120	0	287	16	311	0	2	0	2
300	6836	2012-10-18	8	12	0	5	0	4	0	0	0	1
301	6922	2012-10-18	1	12	0	4	1	36	0	0	0	2
302	5486	2012-10-18	9	16	16	51	3	10	0	0	0	1
303	6413	2012-10-18	1	4	0	104	6	172	0	0	0	0
304	6877	2012-10-18	2	8	0	26	2	46	0	1	0	0
305	6548	2012-10-18	14	14	3	32	16	137	0	0	0	0
306	6771	2012-10-18	2	5	5	0	0	2	0	0	0	0
307	6950	2012-10-18	0	0	0	0	0	1	0	0	0	0
308	6962	2012-10-18	3	3	5	77	4	4	0	0	0	0
309	6952	2012-10-18	0	1	0	0	0	3	0	0	0	0
310	6823	2012-10-18	1	3	0	0	0	3	0	1	0	0
311	5971	2012-10-18	0	1	0	0	0	3	0	0	0	0
312	6505	2012-10-18	0	0	0	0	0	2	0	0	0	0
313	6856	2012-10-18	3	15	0	29	2	211	0	1	0	2
314	6865	2012-10-18	1	2	0	0	0	4	0	1	0	0
315	6794	2012-10-18	0	4	0	17	1	23	0	0	0	2
316	6945	2012-10-18	0	0	0	0	0	1	0	0	0	0
317	6838	2012-10-18	2	11	0	29	0	61	0	0	0	1
318	6779	2012-10-18	2	13	0	42	1	27	0	2	0	1
319	6875	2012-10-18	0	4	0	0	0	3	0	0	0	0
320	6934	2012-10-18	0	2	0	0	0	4	0	0	0	0
321	3782	2012-10-18	0	0	0	0	0	1	0	0	0	0
322	6781	2012-10-18	3	22	15	32	7	179	0	0	0	1
323	6752	2012-10-18	0	1	0	0	0	2	0	0	0	0
324	4287	2012-10-18	0	1	0	0	1	2	0	0	0	0
325	6786	2012-10-18	2	12	0	14	2	36	0	0	0	1
326	6564	2012-10-18	2	3	0	0	0	3	0	0	0	0
327	6121	2012-10-18	5	9	0	18	4	12	0	0	1	3
328	6891	2012-10-18	1	2	0	0	0	0	0	0	0	0
329	6523	2012-10-18	8	19	10	15	3	64	0	0	0	2
330	6860	2012-10-18	0	1	0	0	0	2	0	0	0	0
331	5683	2012-10-18	7	9	0	83	1	78	0	0	0	0
332	6286	2012-10-18	1	2	0	0	0	2	0	0	0	0
333	6853	2012-10-18	1	14	2	47	4	101	0	0	0	2
334	6802	2012-10-18	7	15	0	6	2	55	0	0	0	2
335	6872	2012-10-18	0	3	0	0	0	5	0	0	0	0
336	5763	2012-10-18	55	57	0	24	3	116	2	4	2	2
337	6239	2012-10-18	0	0	0	0	0	0	0	0	0	0
338	6809	2012-10-18	4	13	0	57	3	36	0	0	0	2
339	6769	2012-10-18	0	1	0	0	0	1	0	0	0	0
340	6739	2012-10-18	5	8	480	398	22	198	0	0	0	0
341	6787	2012-10-18	0	1	0	0	0	4	0	0	0	0
342	6515	2012-10-18	0	8	0	29	0	89	0	1	0	2
343	6002	2012-10-18	1	2	0	0	0	5	0	0	0	0
344	6754	2012-10-18	0	1	0	0	0	2	0	0	0	0
345	5506	2012-10-18	1	2	0	0	0	0	0	0	0	0
346	6862	2012-10-18	4	5	0	0	0	1	0	1	0	0
347	6661	2012-10-18	0	2	0	0	0	2	0	0	0	0
348	5482	2012-10-18	0	1	0	0	0	0	0	0	0	0
349	6306	2012-10-18	0	1	0	0	0	1	0	0	0	0
350	6440	2012-10-18	0	1	0	0	0	2	0	0	0	0
351	6698	2012-10-18	1	4	0	0	0	10	0	0	0	0
352	6966	2012-10-18	8	8	1	92	22	138	0	0	0	0
353	6693	2012-10-18	0	1	0	0	0	1	0	0	0	0
354	6749	2012-10-18	1	5	5	39	3	175	0	0	0	0
355	6943	2012-10-18	0	2	0	0	0	1	0	0	0	0
356	6337	2012-10-18	0	1	0	0	0	1	0	0	0	0
357	6318	2012-10-18	5	6	0	0	0	1	0	1	0	0
358	6900	2012-10-18	0	3	0	0	0	2	0	0	0	0
359	6746	2012-10-18	0	6	0	19	0	167	0	0	0	0
360	6433	2012-10-18	0	3	0	0	0	4	0	0	0	0
361	6509	2012-10-18	0	10	0	18	1	212	0	0	0	1
362	6529	2012-10-18	1	3	0	0	0	7	0	0	0	0
363	6948	2012-10-18	0	3	0	0	0	5	0	0	0	0
364	5686	2012-10-18	2	3	0	0	0	1	0	0	0	0
365	6317	2012-10-18	0	2	0	0	0	0	0	0	0	0
366	5932	2012-10-18	0	0	0	0	0	0	0	0	0	0
367	6133	2012-10-18	0	3	0	0	0	4	0	1	0	0
368	6716	2012-10-18	0	2	0	0	0	3	0	0	0	0
369	6500	2012-10-18	4	17	0	117	13	98	0	1	0	3
370	6917	2012-10-18	0	1	0	0	0	2	0	0	0	0
371	6079	2012-10-18	6	21	0	114	3	134	0	0	0	1
372	6816	2012-10-18	0	3	0	0	0	4	0	0	0	0
373	6550	2012-10-18	0	3	0	0	0	2	0	0	0	0
374	6656	2012-10-18	0	1	0	0	0	0	0	1	0	0
375	6657	2012-10-18	0	0	0	0	0	1	0	0	0	0
376	6680	2012-10-18	4	26	2	48	6	179	0	1	0	4
377	6937	2012-10-18	0	1	0	0	0	0	0	0	0	0
378	6321	2012-10-18	0	1	0	0	0	0	0	0	0	0
379	6327	2012-10-18	0	0	0	0	0	0	0	0	0	0
380	6535	2012-10-18	1	4	0	0	1	4	0	0	0	0
381	6684	2012-10-18	1	18	0	13	1	142	0	1	1	2
382	6534	2012-10-18	0	1	0	0	0	1	0	0	0	0
383	6683	2012-10-18	1	11	2	14	3	153	0	0	0	4
384	6938	2012-10-18	0	0	0	0	0	0	0	0	0	0
385	6941	2012-10-18	0	1	0	0	0	0	0	0	0	0
386	6664	2012-10-18	4	7	4	235	3	120	0	0	0	0
387	6672	2012-10-18	0	3	0	0	0	1	0	0	0	0
388	5668	2012-10-18	0	2	0	1	0	29	0	0	0	0
389	6868	2012-10-18	0	4	0	0	0	3	0	0	0	0
390	6648	2012-10-18	0	0	0	0	0	0	0	0	0	0
391	6423	2012-10-18	0	2	0	0	0	1	0	0	0	0
392	6466	2012-10-18	24	34	0	31	2	161	0	0	0	0
393	5938	2012-10-18	5	13	0	65	2	97	0	1	1	2
394	6281	2012-10-18	0	5	0	0	1	2	0	0	0	0
395	6718	2012-10-18	0	2	0	0	0	0	0	0	0	0
396	6276	2012-10-18	0	2	0	0	0	3	0	0	0	0
397	6420	2012-10-18	0	3	0	0	0	2	0	0	0	0
398	6677	2012-10-18	0	1	0	0	0	1	0	0	0	0
399	6670	2012-10-18	0	2	0	0	0	4	0	0	0	0
400	6725	2012-10-18	0	3	0	0	0	3	0	0	0	0
401	5979	2012-10-18	0	0	0	0	0	2	0	0	0	0
402	6741	2012-10-18	0	1	0	0	0	1	0	0	0	0
403	6437	2012-10-18	5	9	169	850	19	214	0	0	0	0
404	6658	2012-10-18	0	1	0	0	0	2	0	0	0	0
405	6171	2012-10-18	0	1	0	0	0	0	0	0	0	0
406	6857	2012-10-18	4	30	2	160	28	287	1	1	0	4
407	6685	2012-10-18	0	1	0	0	0	2	0	0	0	0
408	6615	2012-10-18	3	4	0	0	1	3	0	0	0	0
409	6518	2012-10-18	0	1	0	0	1	2	0	0	0	0
410	6429	2012-10-18	0	3	0	0	0	4	0	0	0	0
411	6924	2012-10-18	0	3	0	0	0	3	0	1	0	0
412	6462	2012-10-18	8	19	0	252	17	157	0	0	0	0
413	6913	2012-10-18	1	3	0	0	0	2	0	0	0	0
414	6522	2012-10-18	1	2	0	0	0	1	0	0	0	0
415	3764	2012-10-18	0	2	0	5	0	137	0	0	0	0
416	6324	2012-10-18	8	20	1	134	7	73	0	1	0	2
417	6778	2012-10-18	1	20	0	45	3	145	0	1	0	1
418	6907	2012-10-18	0	1	0	0	1	2	0	0	0	0
419	6928	2012-10-18	1	21	1	55	3	144	0	1	0	2
420	6179	2012-10-18	0	1	0	0	0	1	0	0	0	0
421	6863	2012-10-18	0	2	0	0	0	3	0	0	0	0
422	6732	2012-10-18	0	1	0	0	0	2	0	0	0	0
423	6633	2012-10-18	0	3	0	0	0	3	0	0	0	0
424	6965	2012-10-18	0	0	0	10	6	141	0	0	0	0
425	6737	2012-10-18	0	2	0	0	0	1	0	0	0	0
426	3536	2012-10-18	0	0	0	1	0	1	0	0	0	0
427	6964	2012-10-18	0	0	0	0	0	0	0	0	0	0
428	6927	2012-10-18	3	14	1	33	9	106	0	1	0	3
429	6719	2012-10-18	0	0	0	0	0	3	0	0	0	0
430	6531	2012-10-18	0	0	0	0	0	0	0	0	0	0
431	6641	2012-10-18	0	1	0	3	0	5	0	0	0	2
432	6955	2012-10-18	0	1	0	16	8	139	0	0	0	0
433	6715	2012-10-18	1	2	0	0	0	3	0	0	0	0
434	6811	2012-10-18	7	12	8	55	3	193	0	0	0	0
435	6563	2012-10-18	7	30	0	172	16	243	0	1	0	2
436	6557	2012-10-18	1	11	0	17	5	30	0	0	0	2
437	5782	2012-10-18	68	70	0	175	68	213	2	4	0	2
438	6714	2012-10-18	0	3	0	0	0	0	0	1	0	0
439	6830	2012-10-18	2	17	0	10	0	39	0	0	0	3
440	6833	2012-10-18	0	1	0	0	0	2	0	0	0	0
441	6791	2012-10-18	0	11	0	5	2	83	0	1	0	2
442	6914	2012-10-18	11	20	4	61	3	137	0	1	0	2
443	6881	2012-10-18	8	14	10	18	3	185	0	0	0	0
444	6422	2012-10-18	1	2	0	0	0	3	0	0	0	0
445	6890	2012-10-18	0	2	0	0	0	1	0	0	0	0
446	6961	2012-10-18	2	2	0	44	6	134	0	0	0	0
447	6733	2012-10-18	0	1	0	0	0	3	0	0	0	0
448	4673	2012-10-18	1	1	0	11	7	141	0	0	0	0
449	6517	2012-10-18	0	1	0	0	0	3	0	0	0	0
450	6904	2012-10-18	0	2	0	0	2	3	0	0	0	0
451	6882	2012-10-18	0	2	0	0	0	4	0	0	0	0
452	6682	2012-10-18	0	2	0	0	0	4	0	0	0	0
453	6706	2012-10-18	0	1	0	0	0	3	0	1	0	0
454	6711	2012-10-18	2	20	6	19	3	143	0	0	0	4
455	6578	2012-10-18	1	2	0	0	0	3	0	0	0	0
456	6312	2012-10-18	0	0	0	0	0	0	0	0	0	0
457	6879	2012-10-18	1	3	0	0	0	2	0	0	0	0
458	6888	2012-10-18	0	3	0	0	0	1	0	0	0	0
459	6798	2012-10-18	0	15	0	30	5	59	0	0	0	3
460	5801	2012-10-18	1	1	0	0	0	0	0	0	0	0
461	6339	2012-10-18	0	0	0	0	0	12	0	0	0	0
462	6740	2012-10-18	0	0	0	0	0	1	0	0	0	0
463	6694	2012-10-18	8	14	2	55	7	146	0	0	0	0
464	6260	2012-10-18	0	2	0	0	0	0	0	0	0	0
465	6889	2012-10-18	0	2	0	0	0	1	0	0	0	0
466	5996	2012-10-18	1	2	0	0	0	0	0	0	0	0
467	6348	2012-10-18	1	2	0	0	0	1	0	0	0	0
468	5997	2012-10-18	0	1	0	0	0	0	0	0	0	0
469	6861	2012-10-18	0	1	0	0	0	3	0	0	0	0
470	6438	2012-10-18	0	2	0	0	1	28	0	0	0	0
471	6789	2012-10-18	2	11	0	26	2	25	0	1	0	1
472	6347	2012-10-18	0	1	0	0	0	1	0	0	0	0
473	6822	2012-10-18	0	3	0	0	0	2	0	0	0	0
474	6675	2012-10-18	0	1	0	0	0	11	0	0	0	0
475	6269	2012-10-18	0	0	0	0	0	1	0	0	0	0
476	6270	2012-10-18	0	1	0	0	0	1	0	0	0	0
477	6834	2012-10-18	0	24	5	14	0	217	0	2	0	2
478	6662	2012-10-18	0	1	0	0	0	2	0	0	0	0
479	6153	2012-10-18	0	1	0	0	0	0	0	0	0	0
480	6081	2012-10-18	0	8	0	21	0	12	0	1	0	1
481	6850	2012-10-18	0	6	0	15	2	67	0	0	0	0
482	6008	2012-10-18	0	1	0	0	0	1	0	0	0	0
483	6010	2012-10-18	0	2	0	0	0	3	0	0	0	0
484	6479	2012-10-18	0	0	0	0	0	0	0	0	0	0
485	6901	2012-10-18	0	1	0	0	0	1	0	0	0	0
486	6030	2012-10-18	2	6	0	19	4	45	0	1	0	3
487	6745	2012-10-18	0	1	0	0	0	6	0	0	0	0
488	6887	2012-10-18	0	3	0	0	0	3	0	0	0	0
489	6620	2012-10-18	0	0	0	0	0	1	0	0	0	0
490	6405	2012-10-18	4	20	0	19	1	152	0	2	0	3
491	6886	2012-10-18	0	1	0	0	0	2	0	0	0	0
492	6374	2012-10-18	0	1	0	0	0	0	0	0	0	0
493	5754	2012-10-18	1	2	0	0	0	9	0	0	0	0
494	6695	2012-10-18	0	1	0	0	0	10	0	0	0	0
495	6968	2012-10-18	0	0	0	0	0	0	0	0	0	0
496	6474	2012-10-18	2	2	19	71	8	142	0	0	0	0
497	5905	2012-10-18	0	1	0	0	0	0	0	0	0	0
498	4698	2012-10-18	0	1	0	0	0	0	0	0	0	0
499	6663	2012-10-18	2	7	0	0	0	2	0	0	0	0
500	6671	2012-10-18	1	4	0	0	0	2	0	0	0	0
501	6707	2012-10-18	0	1	0	0	0	11	0	0	0	0
502	6488	2012-10-18	0	1	0	0	0	0	0	0	0	0
503	6674	2012-10-18	0	1	0	0	0	0	0	0	0	0
504	6104	2012-10-18	0	5	0	0	0	3	0	0	0	0
505	6681	2012-10-18	0	1	0	0	0	3	0	0	0	0
506	6970	2012-10-18	0	0	0	0	0	0	0	0	0	0
507	6476	2012-10-18	20	20	3	55	40	189	0	1	0	4
508	6971	2012-10-18	0	0	0	0	0	0	0	0	0	0
509	5954	2012-10-18	0	1	0	0	0	0	0	0	0	0
510	6655	2012-10-18	12	16	0	27	1	138	0	0	0	0
511	6686	2012-10-18	3	15	3	47	4	105	0	1	0	1
512	6402	2012-10-18	2	10	0	14	1	20	0	1	0	1
513	6884	2012-10-18	0	0	0	0	0	1	0	0	0	0
514	6837	2012-10-18	2	19	1	63	10	199	0	2	0	3
515	6290	2012-10-18	0	1	0	0	0	10	0	0	0	0
516	5973	2012-10-18	0	0	0	0	0	0	0	0	0	0
517	5676	2012-10-18	12	22	143	57	14	90	0	0	0	0
518	6780	2012-10-18	10	17	0	59	4	20	0	1	0	2
519	6616	2012-10-18	0	1	0	0	0	3	0	0	0	0
520	4712	2012-10-18	0	2	0	5	0	58	0	0	0	0
521	6933	2012-10-18	0	1	0	0	0	1	0	0	0	0
522	6846	2012-10-18	0	1	0	0	0	0	0	0	0	0
523	6825	2012-10-18	1	15	2	35	4	91	0	1	0	3
524	6294	2012-10-18	0	0	0	0	0	0	0	0	0	0
525	6555	2012-10-18	0	3	0	0	0	5	0	0	0	0
526	6826	2012-10-18	0	5	0	77	4	22	0	1	0	1
527	4440	2012-10-18	9	20	77	4	0	68	0	1	0	4
528	6792	2012-10-18	0	11	0	44	1	59	0	0	0	1
529	6788	2012-10-18	2	3	0	0	0	1	0	0	0	0
530	6768	2012-10-18	0	5	0	0	0	1	0	0	0	0
531	6958	2012-10-18	0	0	0	0	0	0	0	0	0	0
532	6807	2012-10-18	0	1	0	0	0	1	0	0	0	0
533	6805	2012-10-18	0	1	0	0	0	1	0	0	0	0
534	6967	2012-10-18	0	0	3	35	2	140	0	0	0	0
535	6394	2012-10-18	0	1	0	0	0	0	0	0	0	0
536	6572	2012-10-18	0	0	0	0	0	1	0	0	0	0
537	6478	2012-10-18	0	0	0	9	0	3	0	0	0	0
538	6484	2012-10-18	0	0	0	40	4	140	0	0	0	0
539	6747	2012-10-18	0	1	0	0	1	2	0	0	0	0
540	6367	2012-10-18	15	15	0	67	3	8	1	2	2	3
541	6709	2012-10-18	1	3	0	0	0	11	0	0	0	0
542	6238	2012-10-18	0	1	0	0	0	0	0	0	0	0
543	6855	2012-10-18	8	12	18	43	4	73	0	0	0	0
544	6710	2012-10-18	1	6	0	0	0	4	0	0	0	0
545	6796	2012-10-18	0	1	0	0	0	0	0	0	0	0
546	6894	2012-10-18	0	0	0	0	0	0	0	0	0	0
547	6512	2012-10-18	3	26	0	108	5	151	0	0	0	2
548	3822	2012-10-18	0	1	0	0	0	0	0	0	0	0
549	6738	2012-10-18	0	1	0	0	0	11	0	0	0	0
550	6957	2013-01-16	0	0	0	4	1	140	0	0	0	0
551	6026	2013-01-16	0	1	0	0	0	0	0	0	0	0
552	5540	2013-01-16	0	1	0	0	0	0	0	0	0	0
553	6758	2013-01-16	3	12	2	25	0	130	0	0	0	3
554	6859	2013-01-16	1	6	0	3	1	45	0	0	0	1
555	6852	2013-01-16	1	6	0	0	0	2	0	0	0	0
556	6585	2013-01-16	1	3	0	0	1	5	0	0	0	0
557	5857	2013-01-16	6	12	193	306	18	134	0	0	0	0
558	6349	2013-01-16	0	1	0	0	0	3	0	0	0	0
559	6782	2013-01-16	0	10	0	13	2	11	1	1	0	1
560	6931	2013-01-16	1	7	0	14	3	47	0	0	0	3
561	6508	2013-01-16	0	1	0	0	1	2	0	0	0	0
562	6439	2013-01-16	2	7	4	32	6	129	0	0	0	0
563	6905	2013-01-16	4	10	0	46	3	199	0	0	0	0
564	6608	2013-01-16	4	5	0	0	0	1	0	1	0	0
565	6565	2013-01-16	0	1	0	0	0	1	0	0	0	0
566	6760	2013-01-16	0	15	0	28	2	175	0	1	0	2
567	6660	2013-01-16	0	1	0	0	0	0	0	0	0	0
568	6793	2013-01-16	0	2	0	0	0	5	0	0	0	0
569	5336	2013-01-16	0	0	0	0	1	1	0	0	0	0
570	6545	2013-01-16	0	1	0	0	0	0	0	0	0	0
571	6712	2013-01-16	12	23	0	28	0	50	0	0	0	2
572	6898	2013-01-16	0	1	0	0	0	1	0	0	0	0
573	6828	2013-01-16	1	4	0	31	4	179	0	0	0	0
574	6954	2013-01-16	6	6	4	44	7	141	0	0	0	0
575	6665	2013-01-16	1	6	0	0	0	3	0	0	0	0
576	6575	2013-01-16	0	1	0	0	0	8	0	0	0	0
577	6090	2013-01-16	0	1	0	0	0	2	0	0	0	0
578	5981	2013-01-16	0	1	0	0	0	1	0	0	0	0
579	5988	2013-01-16	0	0	0	0	0	12	0	0	0	0
580	6566	2013-01-16	0	2	0	0	0	3	0	0	0	0
581	6667	2013-01-16	0	1	0	0	0	2	0	0	0	0
582	6386	2013-01-16	2	3	0	0	0	11	0	0	0	0
583	6880	2013-01-16	0	11	0	18	0	50	0	1	0	2
584	6689	2013-01-16	0	1	0	0	0	0	0	1	0	0
585	6814	2013-01-16	0	1	0	0	0	3	0	0	0	2
586	6720	2013-01-16	8	13	0	40	1	67	0	0	0	1
587	6063	2013-01-16	0	0	0	0	0	0	0	0	0	0
588	5948	2013-01-16	0	16	0	19	0	17	0	0	0	1
589	6148	2013-01-16	5	14	0	50	3	42	0	0	0	2
590	4445	2013-01-16	1	1	0	0	0	0	0	0	0	0
591	6095	2013-01-16	0	1	0	0	0	0	0	0	0	0
592	6702	2013-01-16	0	1	2	21	0	40	0	0	0	0
593	6302	2013-01-16	4	6	0	0	2	2	0	0	0	0
594	6199	2013-01-16	0	1	0	0	0	0	0	0	0	0
595	6692	2013-01-16	2	15	0	100	4	45	0	0	1	2
596	6721	2013-01-16	0	0	0	15	0	8	0	0	0	1
597	6703	2013-01-16	0	2	0	0	0	0	0	0	0	0
598	5644	2013-01-16	0	1	0	1	0	3	0	0	0	1
599	5930	2013-01-16	0	1	0	0	0	0	0	0	0	0
600	6704	2013-01-16	0	4	0	0	0	8	0	0	0	0
601	5347	2013-01-16	0	1	0	0	0	0	0	0	0	0
602	4634	2013-01-16	3	4	0	0	0	1	0	0	0	0
603	6801	2013-01-16	0	1	0	0	0	0	0	0	0	0
604	6717	2013-01-16	1	7	0	24	0	31	0	1	0	3
605	6690	2013-01-16	11	30	9	115	10	166	0	0	0	1
606	6525	2013-01-16	0	1	0	0	0	0	0	0	0	0
607	6701	2013-01-16	0	2	0	0	1	16	0	0	0	0
608	6697	2013-01-16	0	1	0	0	0	1	0	0	0	0
609	6810	2013-01-16	0	1	0	0	0	2	0	0	0	0
610	6696	2013-01-16	0	2	5	0	0	2	0	1	0	0
611	6700	2013-01-16	14	15	0	11	1	9	0	3	1	3
612	6727	2013-01-16	0	4	37	89	0	96	0	0	0	0
613	6375	2013-01-16	0	1	0	0	0	28	0	0	0	0
614	6699	2013-01-16	14	16	3	146	6	134	0	0	0	0
615	6688	2013-01-16	10	29	23	172	6	225	0	1	0	3
616	6552	2013-01-16	1	2	0	0	1	2	0	0	0	0
617	3377	2013-01-16	0	0	0	0	0	0	0	0	0	1
618	6678	2013-01-16	1	11	7	17	1	82	0	0	0	3
619	6235	2013-01-16	0	1	0	0	0	0	0	0	0	0
620	5691	2013-01-16	0	1	0	0	0	0	0	0	0	0
621	6469	2013-01-16	0	19	0	20	2	132	0	0	0	0
622	6451	2013-01-16	2	2	0	0	0	1	0	0	0	0
623	6031	2013-01-16	2	17	0	6	2	54	0	0	0	3
624	6911	2013-01-16	0	1	0	0	0	4	0	0	0	0
625	6893	2013-01-16	0	1	0	0	0	1	0	0	0	0
626	6919	2013-01-16	1	9	0	23	4	30	0	1	0	0
627	4603	2013-01-16	1	2	0	56	0	20	0	0	0	0
628	6949	2013-01-16	0	3	0	0	1	2	0	0	0	0
629	6687	2013-01-16	0	1	0	0	0	1	0	0	0	0
630	6353	2013-01-16	26	34	558	191	10	31	0	0	1	3
631	6909	2013-01-16	1	9	0	126	2	54	0	0	0	4
632	6847	2013-01-16	0	1	0	0	0	1	0	1	0	0
633	6723	2013-01-16	0	10	2	1	0	82	0	1	0	1
634	6839	2013-01-16	6	15	0	187	5	106	1	1	0	0
635	6603	2013-01-16	0	1	0	0	1	5	0	0	0	0
636	6892	2013-01-16	0	1	0	0	0	4	0	0	0	0
637	6164	2013-01-16	0	0	0	0	1	2	0	0	0	0
638	6734	2013-01-16	6	23	2	26	15	261	0	2	0	2
639	5776	2013-01-16	9	14	0	11	0	151	0	0	0	0
640	6790	2013-01-16	4	44	3	66	3	183	0	1	0	2
641	6362	2013-01-16	0	0	0	0	0	2	0	0	0	0
642	6953	2013-01-16	0	1	0	0	0	3	0	0	0	0
643	6446	2013-01-16	0	4	0	229	3	78	0	0	0	0
644	6827	2013-01-16	0	10	1	27	0	55	0	0	0	1
645	6762	2013-01-16	8	30	11	56	13	237	0	0	0	4
646	4499	2013-01-16	0	1	0	0	0	0	0	0	0	0
647	4255	2013-01-16	0	1	0	0	0	1	0	0	0	0
648	6541	2013-01-16	2	4	5	0	0	1	0	1	0	0
649	6407	2013-01-16	15	20	0	30	12	45	0	1	0	3
650	6477	2013-01-16	1	1	0	35	5	140	0	0	0	0
651	6730	2013-01-16	0	2	0	0	0	2	0	0	0	0
652	6398	2013-01-16	0	1	0	0	0	0	0	0	0	0
653	6489	2013-01-16	0	0	0	0	0	0	0	0	0	0
654	6874	2013-01-16	0	2	0	0	0	5	0	0	0	0
655	5959	2013-01-16	1	1	0	0	0	2	0	0	0	0
656	4505	2013-01-16	1	4	0	21	2	55	0	0	0	0
657	6972	2013-01-16	4	4	2	46	16	142	0	0	0	0
658	6724	2013-01-16	0	2	0	0	0	1	0	0	0	0
659	6577	2013-01-16	0	0	0	0	0	0	0	0	0	0
660	6757	2013-01-16	0	3	0	0	0	1	0	0	0	0
661	6266	2013-01-16	0	0	0	0	2	2	0	0	0	0
662	6956	2013-01-16	0	0	0	39	5	140	0	0	0	0
663	6705	2013-01-16	1	6	6	0	0	1	0	1	0	0
664	6751	2013-01-16	1	7	0	0	0	2	0	0	0	0
665	6691	2013-01-16	11	21	0	85	12	57	0	1	0	1
666	6112	2013-01-16	0	0	0	0	0	0	0	0	0	0
667	6035	2013-01-16	2	27	0	40	10	305	0	2	0	3
668	6676	2013-01-16	0	1	0	0	0	2	0	0	0	0
669	5551	2013-01-16	0	1	0	0	0	0	0	0	0	0
670	6842	2013-01-16	0	2	0	0	0	3	0	0	0	0
671	6444	2013-01-16	1	5	1	309	2	12	0	0	0	0
672	6619	2013-01-16	0	1	0	0	0	8	0	0	0	0
673	6843	2013-01-16	0	2	0	0	0	1	0	0	0	0
674	6773	2013-01-16	1	32	0	26	6	182	0	1	0	5
675	6831	2013-01-16	1	11	0	6	0	28	0	1	0	2
676	6806	2013-01-16	1	11	0	24	2	51	0	0	0	1
677	6845	2013-01-16	0	1	0	0	0	2	0	0	0	0
678	6820	2013-01-16	10	26	1	63	3	97	0	0	0	4
679	6849	2013-01-16	0	1	0	0	0	2	0	0	0	0
680	6431	2013-01-16	1	7	0	12	3	152	0	0	0	0
681	6844	2013-01-16	0	2	0	0	0	2	0	0	0	0
682	6840	2013-01-16	0	1	0	0	0	3	0	0	0	0
683	6841	2013-01-16	4	9	4	0	0	5	0	0	0	0
684	6824	2013-01-16	0	2	0	0	0	3	0	0	0	0
685	4522	2013-01-16	3	13	0	31	1	22	0	1	0	3
686	6835	2013-01-16	0	1	0	0	1	2	0	0	0	0
687	6254	2013-01-16	0	1	0	0	0	5	0	0	0	0
688	6902	2013-01-16	0	3	0	0	0	2	0	0	0	0
689	6832	2013-01-16	6	29	5	25	4	199	0	1	0	1
690	6753	2013-01-16	1	25	2	16	4	184	0	1	0	2
691	6653	2013-01-16	1	2	0	0	0	0	0	0	0	0
692	6654	2013-01-16	0	4	0	0	0	2	0	0	0	0
693	6387	2013-01-16	0	1	0	0	0	3	0	0	0	0
694	6803	2013-01-16	3	9	0	4	0	60	0	0	0	2
695	6708	2013-01-16	1	2	0	0	0	2	0	0	0	0
696	6202	2013-01-16	0	1	0	0	0	1	0	0	0	0
697	6426	2013-01-16	3	6	0	1	2	129	0	0	0	0
698	6923	2013-01-16	1	8	0	8	0	11	0	1	0	2
699	6797	2013-01-16	0	0	0	0	0	3	0	0	0	0
700	3658	2013-01-16	2	7	0	31	0	17	0	0	0	3
701	6795	2013-01-16	0	1	0	0	0	4	0	0	0	0
702	6601	2013-01-16	0	1	0	0	0	5	0	0	0	0
703	6783	2013-01-16	0	1	0	0	0	4	0	0	0	0
704	6960	2013-01-16	1	1	1	33	6	140	0	0	0	0
705	6549	2013-01-16	1	1	0	20	0	140	0	0	0	0
706	6123	2013-01-16	0	0	0	0	0	0	0	0	0	0
707	3769	2013-01-16	0	0	0	0	0	0	0	0	0	0
708	6946	2013-01-16	0	2	0	0	0	1	0	0	0	0
709	6939	2013-01-16	0	3	0	0	0	11	0	0	0	0
710	6944	2013-01-16	0	0	0	0	0	9	0	0	0	0
711	6935	2013-01-16	0	2	0	0	1	3	0	1	0	0
712	6940	2013-01-16	0	2	0	0	0	2	0	0	0	0
713	6959	2013-01-16	1	1	0	273	9	141	0	0	0	0
714	4537	2013-01-16	0	0	0	1	0	55	0	0	0	0
715	6878	2013-01-16	0	0	0	0	0	0	0	1	0	0
716	6813	2013-01-16	0	0	0	0	0	1	0	0	0	0
717	6815	2013-01-16	0	1	0	0	0	5	0	0	0	0
718	6755	2013-01-16	0	10	0	12	1	41	0	0	0	1
719	6743	2013-01-16	2	12	0	24	0	114	0	1	0	2
720	6491	2013-01-16	0	0	0	0	0	3	0	0	0	0
721	6729	2013-01-16	1	4	0	0	0	5	0	0	0	0
722	6761	2013-01-16	0	1	0	0	0	1	0	0	0	0
723	6097	2013-01-16	0	2	0	0	0	10	0	0	0	0
724	6821	2013-01-16	0	9	0	25	13	188	0	0	0	0
725	6453	2013-01-16	0	1	0	0	0	0	0	0	0	0
726	6659	2013-01-16	5	20	0	55	9	129	0	1	0	2
727	5821	2013-01-16	0	1	0	0	0	0	0	0	0	0
728	6331	2013-01-16	0	1	0	0	0	0	0	0	0	0
729	6576	2013-01-16	0	1	0	0	0	1	0	0	0	0
730	6496	2013-01-16	0	0	0	0	0	2	0	0	0	0
731	4548	2013-01-16	1	5	0	24	1	138	0	0	0	0
732	6728	2013-01-16	1	3	0	0	0	0	0	0	0	0
733	6750	2013-01-16	0	2	0	0	0	0	0	0	0	0
734	6804	2013-01-16	0	0	0	0	0	0	0	0	0	0
735	6808	2013-01-16	0	9	0	2	1	31	0	0	0	3
736	6818	2013-01-16	0	2	0	0	0	2	0	0	0	0
737	6722	2013-01-16	0	8	0	155	9	58	0	0	0	0
738	6817	2013-01-16	0	3	5	0	0	1	0	0	0	0
739	6713	2013-01-16	14	20	11	107	2	126	0	1	0	3
740	6766	2013-01-16	0	2	0	0	0	1	0	0	0	0
741	5800	2013-01-16	0	2	0	0	0	0	0	0	0	0
742	6506	2013-01-16	1	2	0	0	1	4	0	0	0	0
743	6763	2013-01-16	0	3	0	0	0	1	0	0	0	0
744	6498	2013-01-16	0	2	0	0	0	1	0	0	0	0
745	6264	2013-01-16	0	2	0	0	0	2	0	0	0	0
746	6679	2013-01-16	4	28	0	18	0	198	0	1	0	5
747	6770	2013-01-16	0	1	0	0	0	3	0	0	0	0
748	6159	2013-01-16	0	1	0	0	0	0	0	0	0	0
749	6764	2013-01-16	6	27	15	58	4	279	0	1	0	3
750	6776	2013-01-16	0	1	0	0	0	2	0	0	0	0
751	6726	2013-01-16	0	2	1	14	0	22	0	0	0	0
752	5943	2013-01-16	6	7	0	0	1	1	1	1	0	0
753	6735	2013-01-16	0	1	0	0	0	0	0	0	0	0
754	6829	2013-01-16	2	16	15	70	3	85	0	0	0	3
755	5946	2013-01-16	0	1	5	0	0	0	0	0	0	0
756	6593	2013-01-16	0	5	0	0	0	15	0	0	0	0
757	6869	2013-01-16	0	2	0	0	0	1	0	0	0	0
758	4561	2013-01-16	0	0	0	0	0	141	0	0	0	0
759	6482	2013-01-16	0	0	0	0	0	0	0	0	0	0
760	6969	2013-01-16	2	3	0	18	9	143	0	0	0	0
761	6784	2013-01-16	0	14	0	36	2	137	0	1	0	2
762	6673	2013-01-16	11	15	0	75	3	74	0	0	0	0
763	6926	2013-01-16	2	11	1	54	4	100	0	1	0	1
764	6669	2013-01-16	4	29	1	79	5	253	0	1	0	2
765	6013	2013-01-16	0	1	0	0	0	0	0	0	0	0
766	6925	2013-01-16	3	7	0	16	1	34	0	1	0	1
767	6604	2013-01-16	0	2	0	0	0	12	0	0	0	0
768	6731	2013-01-16	0	2	0	0	0	8	0	0	0	0
769	6736	2013-01-16	0	4	0	0	0	1	0	0	0	0
770	6932	2013-01-16	0	1	0	0	0	1	0	0	0	0
771	6475	2013-01-16	4	4	0	61	28	173	1	1	4	4
772	6772	2013-01-16	4	8	28	56	5	95	0	0	0	0
773	6378	2013-01-16	1	2	0	0	0	1	0	0	0	0
774	6427	2013-01-16	0	6	0	19	6	109	0	0	0	0
775	6851	2013-01-16	4	19	0	0	0	109	0	1	0	1
776	6089	2013-01-16	1	5	5	0	0	5	0	1	0	0
777	5687	2013-01-16	0	4	0	17	1	200	0	0	0	0
778	6942	2013-01-16	2	10	0	29	0	32	0	0	0	1
779	4279	2013-01-16	0	2	0	0	0	0	0	0	0	0
780	5460	2013-01-16	0	1	0	0	0	14	0	0	0	0
781	6951	2013-01-16	0	0	0	0	0	0	0	0	0	0
782	6228	2013-01-16	7	17	46	5	45	114	0	3	0	2
783	6168	2013-01-16	0	1	5	0	0	5	0	1	0	0
784	5709	2013-01-16	4	10	0	14	5	27	0	0	0	2
785	6025	2013-01-16	0	1	0	0	0	0	0	0	0	0
786	6628	2013-01-16	4	5	0	0	0	1	0	1	0	0
787	6848	2013-01-16	0	2	0	0	0	4	0	0	0	0
788	6819	2013-01-16	0	1	0	23	0	0	0	0	0	0
789	6209	2013-01-16	0	0	0	0	0	0	0	0	0	0
790	4362	2013-01-16	0	1	0	0	0	50	0	0	0	0
791	6896	2013-01-16	0	1	0	0	0	5	0	1	0	0
792	6871	2013-01-16	0	0	0	0	0	0	0	0	0	0
793	6785	2013-01-16	0	1	0	0	0	1	0	0	0	0
794	6742	2013-01-16	1	9	0	3	0	18	0	0	0	0
795	6767	2013-01-16	4	17	35	37	2	60	0	0	0	2
796	6899	2013-01-16	0	1	0	0	0	0	0	0	0	0
797	6897	2013-01-16	0	1	0	0	0	4	0	0	0	0
798	6759	2013-01-16	1	3	0	0	0	2	0	0	0	0
799	6947	2013-01-16	0	0	0	0	0	4	0	0	0	0
800	6921	2013-01-16	3	12	0	8	2	22	0	0	0	1
801	6624	2013-01-16	0	1	0	0	0	2	0	0	0	0
802	6812	2013-01-16	17	49	22	23	10	200	0	0	0	3
803	6610	2013-01-16	0	0	0	0	0	0	0	0	0	0
804	6383	2013-01-16	1	3	0	0	0	2	0	0	0	0
805	4840	2013-01-16	6	12	2	102	1	21	0	1	0	2
806	5471	2013-01-16	0	1	0	0	0	0	0	0	0	0
807	6371	2013-01-16	1	1	0	0	0	0	0	0	0	0
808	6748	2013-01-16	0	13	0	48	2	54	0	0	0	3
809	6174	2013-01-16	0	1	0	0	0	1	0	0	0	0
810	6936	2013-01-16	0	1	0	0	0	2	0	0	0	0
811	6756	2013-01-16	0	22	1	31	0	160	0	0	0	1
812	6408	2013-01-16	0	1	0	0	0	1	0	0	0	0
813	6069	2013-01-16	16	17	0	23	1	4	1	2	0	2
814	6336	2013-01-16	0	1	0	0	1	2	0	0	0	0
815	6167	2013-01-16	0	1	0	0	0	1	0	0	0	0
816	6915	2013-01-16	0	1	0	0	0	2	0	0	0	0
817	6495	2013-01-16	1	4	0	18	0	113	0	0	0	0
818	6883	2013-01-16	0	1	0	0	0	4	0	0	0	0
819	6910	2013-01-16	0	2	0	0	0	5	0	0	0	0
820	5982	2013-01-16	0	0	0	0	0	0	0	0	0	0
821	6379	2013-01-16	0	1	0	0	0	0	0	0	0	0
822	6858	2013-01-16	0	15	0	11	0	21	0	0	0	3
823	6799	2013-01-16	2	5	5	0	0	4	0	0	0	0
824	6274	2013-01-16	0	0	0	0	0	0	0	0	0	0
825	6885	2013-01-16	6	24	0	13	5	119	0	1	0	2
826	6777	2013-01-16	1	2	0	0	0	3	0	0	0	0
827	6870	2013-01-16	0	1	0	0	0	3	0	0	0	0
828	6775	2013-01-16	0	2	0	0	0	3	0	0	0	0
829	6918	2013-01-16	0	1	0	0	0	2	0	0	0	0
830	6864	2013-01-16	1	12	0	34	3	43	0	0	0	1
831	6800	2013-01-16	15	22	3	219	10	32	0	0	0	1
832	6929	2013-01-16	0	25	5	34	0	277	0	2	0	1
833	6903	2013-01-16	0	3	0	0	0	3	0	0	0	0
834	6963	2013-01-16	6	6	0	30	2	141	0	0	0	0
835	6744	2013-01-16	11	27	8	87	12	165	0	2	0	2
836	6916	2013-01-16	1	27	29	123	4	369	0	0	0	3
837	6920	2013-01-16	1	7	0	9	1	32	0	0	0	1
838	6854	2013-01-16	0	1	0	0	0	9	0	0	0	0
839	6930	2013-01-16	0	3	0	0	0	1	0	0	0	0
840	6895	2013-01-16	0	6	0	11	0	15	0	0	0	3
841	6866	2013-01-16	0	2	0	0	0	4	0	0	0	0
842	6876	2013-01-16	0	2	0	0	0	5	0	1	0	0
843	6613	2013-01-16	0	11	2	13	1	30	0	1	0	2
844	6906	2013-01-16	0	2	0	0	0	0	0	0	0	0
845	6912	2013-01-16	0	2	0	0	0	1	0	0	0	0
846	6204	2013-01-16	1	11	0	4	0	8	0	1	0	1
847	6765	2013-01-16	126	151	37	202	17	244	0	2	0	2
848	6908	2013-01-16	47	120	0	287	16	311	0	2	0	2
849	6836	2013-01-16	8	12	0	5	0	4	0	0	0	1
850	6922	2013-01-16	1	12	0	4	1	36	0	0	0	2
851	5486	2013-01-16	9	16	16	51	3	10	0	0	0	1
852	6413	2013-01-16	1	4	0	104	6	172	0	0	0	0
853	6877	2013-01-16	2	8	0	26	2	46	0	1	0	0
854	6548	2013-01-16	14	14	3	32	16	137	0	0	0	0
855	6771	2013-01-16	2	5	5	0	0	2	0	0	0	0
856	6950	2013-01-16	0	0	0	0	0	1	0	0	0	0
857	6962	2013-01-16	3	3	5	77	4	4	0	0	0	0
858	6952	2013-01-16	0	1	0	0	0	3	0	0	0	0
859	6823	2013-01-16	1	3	0	0	0	3	0	1	0	0
860	5971	2013-01-16	0	1	0	0	0	3	0	0	0	0
861	6505	2013-01-16	0	0	0	0	0	2	0	0	0	0
862	6856	2013-01-16	3	15	0	29	2	211	0	1	0	2
863	6865	2013-01-16	1	2	0	0	0	4	0	1	0	0
864	6794	2013-01-16	0	4	0	17	1	23	0	0	0	2
865	6945	2013-01-16	0	0	0	0	0	1	0	0	0	0
866	6838	2013-01-16	2	11	0	29	0	61	0	0	0	1
867	6779	2013-01-16	2	13	0	42	1	27	0	2	0	1
868	6875	2013-01-16	0	4	0	0	0	3	0	0	0	0
869	6934	2013-01-16	0	2	0	0	0	4	0	0	0	0
870	3782	2013-01-16	0	0	0	0	0	1	0	0	0	0
871	6781	2013-01-16	3	22	15	32	7	179	0	0	0	1
872	6752	2013-01-16	0	1	0	0	0	2	0	0	0	0
873	4287	2013-01-16	0	1	0	0	1	2	0	0	0	0
874	6786	2013-01-16	2	12	0	14	2	36	0	0	0	1
875	6564	2013-01-16	2	3	0	0	0	3	0	0	0	0
876	6121	2013-01-16	5	9	0	18	4	12	0	0	1	3
877	6891	2013-01-16	1	2	0	0	0	0	0	0	0	0
878	6523	2013-01-16	8	19	10	15	3	64	0	0	0	2
879	6860	2013-01-16	0	1	0	0	0	2	0	0	0	0
880	5683	2013-01-16	7	9	0	83	1	78	0	0	0	0
881	6286	2013-01-16	1	2	0	0	0	2	0	0	0	0
882	6853	2013-01-16	1	14	2	47	4	101	0	0	0	2
883	6802	2013-01-16	7	15	0	6	2	55	0	0	0	2
884	6872	2013-01-16	0	3	0	0	0	5	0	0	0	0
885	5763	2013-01-16	55	57	0	24	3	116	2	4	2	2
886	6239	2013-01-16	0	0	0	0	0	0	0	0	0	0
887	6809	2013-01-16	4	13	0	57	3	36	0	0	0	2
888	6769	2013-01-16	0	1	0	0	0	1	0	0	0	0
889	6739	2013-01-16	5	8	480	398	22	198	0	0	0	0
890	6787	2013-01-16	0	1	0	0	0	4	0	0	0	0
891	6515	2013-01-16	0	8	0	29	0	89	0	1	0	2
892	6002	2013-01-16	1	2	0	0	0	5	0	0	0	0
893	6754	2013-01-16	0	1	0	0	0	2	0	0	0	0
894	5506	2013-01-16	1	2	0	0	0	0	0	0	0	0
895	6862	2013-01-16	4	5	0	0	0	1	0	1	0	0
896	6661	2013-01-16	0	2	0	0	0	2	0	0	0	0
897	5482	2013-01-16	0	1	0	0	0	0	0	0	0	0
898	6306	2013-01-16	0	1	0	0	0	1	0	0	0	0
899	6440	2013-01-16	0	1	0	0	0	2	0	0	0	0
900	6698	2013-01-16	1	4	0	0	0	10	0	0	0	0
901	6966	2013-01-16	8	8	1	92	22	138	0	0	0	0
902	6693	2013-01-16	0	1	0	0	0	1	0	0	0	0
903	6749	2013-01-16	1	5	5	39	3	175	0	0	0	0
904	6943	2013-01-16	0	2	0	0	0	1	0	0	0	0
905	6337	2013-01-16	0	1	0	0	0	1	0	0	0	0
906	6318	2013-01-16	5	6	0	0	0	1	0	1	0	0
907	6900	2013-01-16	0	3	0	0	0	2	0	0	0	0
908	6746	2013-01-16	0	6	0	19	0	167	0	0	0	0
909	6433	2013-01-16	0	3	0	0	0	4	0	0	0	0
910	6509	2013-01-16	0	10	0	18	1	212	0	0	0	1
911	6529	2013-01-16	1	3	0	0	0	7	0	0	0	0
912	6948	2013-01-16	0	3	0	0	0	5	0	0	0	0
913	5686	2013-01-16	2	3	0	0	0	1	0	0	0	0
914	6317	2013-01-16	0	2	0	0	0	0	0	0	0	0
915	5932	2013-01-16	0	0	0	0	0	0	0	0	0	0
916	6133	2013-01-16	0	3	0	0	0	4	0	1	0	0
917	6716	2013-01-16	0	2	0	0	0	3	0	0	0	0
918	6500	2013-01-16	4	17	0	117	13	98	0	1	0	3
919	6917	2013-01-16	0	1	0	0	0	2	0	0	0	0
920	6079	2013-01-16	6	21	0	114	3	134	0	0	0	1
921	6816	2013-01-16	0	3	0	0	0	4	0	0	0	0
922	6550	2013-01-16	0	3	0	0	0	2	0	0	0	0
923	6656	2013-01-16	0	1	0	0	0	0	0	1	0	0
924	6657	2013-01-16	0	0	0	0	0	1	0	0	0	0
925	6680	2013-01-16	4	26	2	48	6	179	0	1	0	4
926	6937	2013-01-16	0	1	0	0	0	0	0	0	0	0
927	6321	2013-01-16	0	1	0	0	0	0	0	0	0	0
928	6327	2013-01-16	0	0	0	0	0	0	0	0	0	0
929	6535	2013-01-16	1	4	0	0	1	4	0	0	0	0
930	6684	2013-01-16	1	18	0	13	1	142	0	1	1	2
931	6534	2013-01-16	0	1	0	0	0	1	0	0	0	0
932	6683	2013-01-16	1	11	2	14	3	153	0	0	0	4
933	6938	2013-01-16	0	0	0	0	0	0	0	0	0	0
934	6941	2013-01-16	0	1	0	0	0	0	0	0	0	0
935	6664	2013-01-16	4	7	4	235	3	120	0	0	0	0
936	6672	2013-01-16	0	3	0	0	0	1	0	0	0	0
937	5668	2013-01-16	0	2	0	1	0	29	0	0	0	0
938	6868	2013-01-16	0	4	0	0	0	3	0	0	0	0
939	6648	2013-01-16	0	0	0	0	0	0	0	0	0	0
940	6423	2013-01-16	0	2	0	0	0	1	0	0	0	0
941	6466	2013-01-16	24	34	0	31	2	161	0	0	0	0
942	5938	2013-01-16	5	13	0	65	2	97	0	1	1	2
943	6281	2013-01-16	0	5	0	0	1	2	0	0	0	0
944	6718	2013-01-16	0	2	0	0	0	0	0	0	0	0
945	6276	2013-01-16	0	2	0	0	0	3	0	0	0	0
946	6420	2013-01-16	0	3	0	0	0	2	0	0	0	0
947	6677	2013-01-16	0	1	0	0	0	1	0	0	0	0
948	6670	2013-01-16	0	2	0	0	0	4	0	0	0	0
949	6725	2013-01-16	0	3	0	0	0	3	0	0	0	0
950	5979	2013-01-16	0	0	0	0	0	2	0	0	0	0
951	6741	2013-01-16	0	1	0	0	0	1	0	0	0	0
952	6437	2013-01-16	5	9	169	850	19	214	0	0	0	0
953	6658	2013-01-16	0	1	0	0	0	2	0	0	0	0
954	6171	2013-01-16	0	1	0	0	0	0	0	0	0	0
955	6857	2013-01-16	4	30	2	160	28	287	1	1	0	4
956	6685	2013-01-16	0	1	0	0	0	2	0	0	0	0
957	6615	2013-01-16	3	4	0	0	1	3	0	0	0	0
958	6518	2013-01-16	0	1	0	0	1	2	0	0	0	0
959	6429	2013-01-16	0	3	0	0	0	4	0	0	0	0
960	6924	2013-01-16	0	3	0	0	0	3	0	1	0	0
961	6462	2013-01-16	8	19	0	252	17	157	0	0	0	0
962	6913	2013-01-16	1	3	0	0	0	2	0	0	0	0
963	6522	2013-01-16	1	2	0	0	0	1	0	0	0	0
964	3764	2013-01-16	0	2	0	5	0	137	0	0	0	0
965	6324	2013-01-16	8	20	1	134	7	73	0	1	0	2
966	6778	2013-01-16	1	20	0	45	3	145	0	1	0	1
967	6907	2013-01-16	0	1	0	0	1	2	0	0	0	0
968	6928	2013-01-16	1	21	1	55	3	144	0	1	0	2
969	6179	2013-01-16	0	1	0	0	0	1	0	0	0	0
970	6863	2013-01-16	0	2	0	0	0	3	0	0	0	0
971	6732	2013-01-16	0	1	0	0	0	2	0	0	0	0
972	6633	2013-01-16	0	3	0	0	0	3	0	0	0	0
973	6965	2013-01-16	0	0	0	10	6	141	0	0	0	0
974	6737	2013-01-16	0	2	0	0	0	1	0	0	0	0
975	3536	2013-01-16	0	0	0	1	0	1	0	0	0	0
976	6964	2013-01-16	0	0	0	0	0	0	0	0	0	0
977	6927	2013-01-16	3	14	1	33	9	106	0	1	0	3
978	6719	2013-01-16	0	0	0	0	0	3	0	0	0	0
979	6531	2013-01-16	0	0	0	0	0	0	0	0	0	0
980	6641	2013-01-16	0	1	0	3	0	5	0	0	0	2
981	6955	2013-01-16	0	1	0	16	8	139	0	0	0	0
982	6715	2013-01-16	1	2	0	0	0	3	0	0	0	0
983	6811	2013-01-16	7	12	8	55	3	193	0	0	0	0
984	6563	2013-01-16	7	30	0	172	16	243	0	1	0	2
985	6557	2013-01-16	1	11	0	17	5	30	0	0	0	2
986	5782	2013-01-16	68	70	0	175	68	213	2	4	0	2
987	6714	2013-01-16	0	3	0	0	0	0	0	1	0	0
988	6830	2013-01-16	2	17	0	10	0	39	0	0	0	3
989	6833	2013-01-16	0	1	0	0	0	2	0	0	0	0
990	6791	2013-01-16	0	11	0	5	2	83	0	1	0	2
991	6914	2013-01-16	11	20	4	61	3	137	0	1	0	2
992	6881	2013-01-16	8	14	10	18	3	185	0	0	0	0
993	6422	2013-01-16	1	2	0	0	0	3	0	0	0	0
994	6890	2013-01-16	0	2	0	0	0	1	0	0	0	0
995	6961	2013-01-16	2	2	0	44	6	134	0	0	0	0
996	6733	2013-01-16	0	1	0	0	0	3	0	0	0	0
997	4673	2013-01-16	1	1	0	11	7	141	0	0	0	0
998	6517	2013-01-16	0	1	0	0	0	3	0	0	0	0
999	6904	2013-01-16	0	2	0	0	2	3	0	0	0	0
1000	6882	2013-01-16	0	2	0	0	0	4	0	0	0	0
1001	6682	2013-01-16	0	2	0	0	0	4	0	0	0	0
1002	6706	2013-01-16	0	1	0	0	0	3	0	1	0	0
1003	6711	2013-01-16	2	20	6	19	3	143	0	0	0	4
1004	6578	2013-01-16	1	2	0	0	0	3	0	0	0	0
1005	6312	2013-01-16	0	0	0	0	0	0	0	0	0	0
1006	6879	2013-01-16	1	3	0	0	0	2	0	0	0	0
1007	6888	2013-01-16	0	3	0	0	0	1	0	0	0	0
1008	6798	2013-01-16	0	15	0	30	5	59	0	0	0	3
1009	5801	2013-01-16	1	1	0	0	0	0	0	0	0	0
1010	6339	2013-01-16	0	0	0	0	0	12	0	0	0	0
1011	6740	2013-01-16	0	0	0	0	0	1	0	0	0	0
1012	6694	2013-01-16	8	14	2	55	7	146	0	0	0	0
1013	6260	2013-01-16	0	2	0	0	0	0	0	0	0	0
1014	6889	2013-01-16	0	2	0	0	0	1	0	0	0	0
1015	5996	2013-01-16	1	2	0	0	0	0	0	0	0	0
1016	6348	2013-01-16	1	2	0	0	0	1	0	0	0	0
1017	5997	2013-01-16	0	1	0	0	0	0	0	0	0	0
1018	6861	2013-01-16	0	1	0	0	0	3	0	0	0	0
1019	6438	2013-01-16	0	2	0	0	1	28	0	0	0	0
1020	6789	2013-01-16	2	11	0	26	2	25	0	1	0	1
1021	6347	2013-01-16	0	1	0	0	0	1	0	0	0	0
1022	6822	2013-01-16	0	3	0	0	0	2	0	0	0	0
1023	6675	2013-01-16	0	1	0	0	0	11	0	0	0	0
1024	6269	2013-01-16	0	0	0	0	0	1	0	0	0	0
1025	6270	2013-01-16	0	1	0	0	0	1	0	0	0	0
1026	6834	2013-01-16	0	24	5	14	0	217	0	2	0	2
1027	6662	2013-01-16	0	1	0	0	0	2	0	0	0	0
1028	6153	2013-01-16	0	1	0	0	0	0	0	0	0	0
1029	6081	2013-01-16	0	8	0	21	0	12	0	1	0	1
1030	6850	2013-01-16	0	6	0	15	2	67	0	0	0	0
1031	6008	2013-01-16	0	1	0	0	0	1	0	0	0	0
1032	6010	2013-01-16	0	2	0	0	0	3	0	0	0	0
1033	6479	2013-01-16	0	0	0	0	0	0	0	0	0	0
1034	6901	2013-01-16	0	1	0	0	0	1	0	0	0	0
1035	6030	2013-01-16	2	6	0	19	4	45	0	1	0	3
1036	6745	2013-01-16	0	1	0	0	0	6	0	0	0	0
1037	6887	2013-01-16	0	3	0	0	0	3	0	0	0	0
1038	6620	2013-01-16	0	0	0	0	0	1	0	0	0	0
1039	6405	2013-01-16	4	20	0	19	1	152	0	2	0	3
1040	6886	2013-01-16	0	1	0	0	0	2	0	0	0	0
1041	6374	2013-01-16	0	1	0	0	0	0	0	0	0	0
1042	5754	2013-01-16	1	2	0	0	0	9	0	0	0	0
1043	6695	2013-01-16	0	1	0	0	0	10	0	0	0	0
1044	6968	2013-01-16	0	0	0	0	0	0	0	0	0	0
1045	6474	2013-01-16	2	2	19	71	8	142	0	0	0	0
1046	5905	2013-01-16	0	1	0	0	0	0	0	0	0	0
1047	4698	2013-01-16	0	1	0	0	0	0	0	0	0	0
1048	6663	2013-01-16	2	7	0	0	0	2	0	0	0	0
1049	6671	2013-01-16	1	4	0	0	0	2	0	0	0	0
1050	6707	2013-01-16	0	1	0	0	0	11	0	0	0	0
1051	6488	2013-01-16	0	1	0	0	0	0	0	0	0	0
1052	6674	2013-01-16	0	1	0	0	0	0	0	0	0	0
1053	6104	2013-01-16	0	5	0	0	0	3	0	0	0	0
1054	6681	2013-01-16	0	1	0	0	0	3	0	0	0	0
1055	6970	2013-01-16	0	0	0	0	0	0	0	0	0	0
1056	6476	2013-01-16	20	20	3	55	40	189	0	1	0	4
1057	6971	2013-01-16	0	0	0	0	0	0	0	0	0	0
1058	5954	2013-01-16	0	1	0	0	0	0	0	0	0	0
1059	6655	2013-01-16	12	16	0	27	1	138	0	0	0	0
1060	6686	2013-01-16	3	15	3	47	4	105	0	1	0	1
1061	6402	2013-01-16	2	10	0	14	1	20	0	1	0	1
1062	6884	2013-01-16	0	0	0	0	0	1	0	0	0	0
1063	6837	2013-01-16	2	19	1	63	10	199	0	2	0	3
1064	6290	2013-01-16	0	1	0	0	0	10	0	0	0	0
1065	5973	2013-01-16	0	0	0	0	0	0	0	0	0	0
1066	5676	2013-01-16	12	22	143	57	14	90	0	0	0	0
1067	6780	2013-01-16	10	17	0	59	4	20	0	1	0	2
1068	6616	2013-01-16	0	1	0	0	0	3	0	0	0	0
1069	4712	2013-01-16	0	2	0	5	0	58	0	0	0	0
1070	6933	2013-01-16	0	1	0	0	0	1	0	0	0	0
1071	6846	2013-01-16	0	1	0	0	0	0	0	0	0	0
1072	6825	2013-01-16	1	15	2	35	4	91	0	1	0	3
1073	6294	2013-01-16	0	0	0	0	0	0	0	0	0	0
1074	6555	2013-01-16	0	3	0	0	0	5	0	0	0	0
1075	6826	2013-01-16	0	5	0	77	4	22	0	1	0	1
1076	4440	2013-01-16	9	20	77	4	0	68	0	1	0	4
1077	6792	2013-01-16	0	11	0	44	1	59	0	0	0	1
1078	6788	2013-01-16	2	3	0	0	0	1	0	0	0	0
1079	6768	2013-01-16	0	5	0	0	0	1	0	0	0	0
1080	6958	2013-01-16	0	0	0	0	0	0	0	0	0	0
1081	6807	2013-01-16	0	1	0	0	0	1	0	0	0	0
1082	6805	2013-01-16	0	1	0	0	0	1	0	0	0	0
1083	6967	2013-01-16	0	0	3	35	2	140	0	0	0	0
1084	6394	2013-01-16	0	1	0	0	0	0	0	0	0	0
1085	6572	2013-01-16	0	0	0	0	0	1	0	0	0	0
1086	6478	2013-01-16	0	0	0	9	0	3	0	0	0	0
1087	6484	2013-01-16	0	0	0	40	4	140	0	0	0	0
1088	6747	2013-01-16	0	1	0	0	1	2	0	0	0	0
1089	6367	2013-01-16	15	15	0	67	3	8	1	2	2	3
1090	6709	2013-01-16	1	3	0	0	0	11	0	0	0	0
1091	6238	2013-01-16	0	1	0	0	0	0	0	0	0	0
1092	6855	2013-01-16	8	12	18	43	4	73	0	0	0	0
1093	6710	2013-01-16	1	6	0	0	0	4	0	0	0	0
1094	6796	2013-01-16	0	1	0	0	0	0	0	0	0	0
1095	6894	2013-01-16	0	0	0	0	0	0	0	0	0	0
1096	6512	2013-01-16	3	26	0	108	5	151	0	0	0	2
1097	3822	2013-01-16	0	1	0	0	0	0	0	0	0	0
1098	6738	2013-01-16	0	1	0	0	0	11	0	0	0	0
1099	6957	2013-05-11	2	2	0	16	1	274	0	0	0	0
1100	6026	2013-05-11	0	1	0	0	0	0	0	0	0	0
1101	5540	2013-05-11	0	3	0	0	0	1	0	0	0	0
1102	6758	2013-05-11	9	22	2	39	2	215	0	0	0	5
1103	6859	2013-05-11	1	9	0	12	3	70	0	0	0	3
1104	6852	2013-05-11	1	12	0	0	0	4	0	0	0	0
1105	6585	2013-05-11	1	8	0	0	1	6	0	0	0	0
1106	5857	2013-05-11	14	32	291	311	24	180	0	1	0	1
1107	6349	2013-05-11	0	3	0	0	0	3	0	0	0	0
1108	6782	2013-05-11	0	13	1	25	3	16	1	1	0	1
1109	6931	2013-05-11	1	11	0	25	4	87	0	0	0	3
1110	6508	2013-05-11	0	2	0	0	1	4	0	0	0	0
1111	6439	2013-05-11	2	10	4	35	6	172	0	0	0	0
1112	6905	2013-05-11	5	17	0	99	5	255	1	1	1	2
1113	6608	2013-05-11	7	8	0	0	0	3	0	1	0	0
1114	6565	2013-05-11	0	5	0	0	0	5	0	0	0	0
1115	6760	2013-05-11	1	19	0	33	2	217	0	1	0	3
1116	6660	2013-05-11	0	3	0	0	0	2	0	0	0	0
1117	6793	2013-05-11	0	3	0	0	0	9	0	0	0	0
1118	5336	2013-05-11	0	1	0	0	1	1	0	0	0	0
1119	6545	2013-05-11	0	1	0	0	0	0	0	0	0	0
1120	6712	2013-05-11	13	27	0	44	1	112	0	1	0	4
1121	6898	2013-05-11	0	3	0	0	0	2	0	0	0	0
1122	6828	2013-05-11	1	5	0	33	9	213	0	1	0	1
1123	6954	2013-05-11	6	6	4	70	9	273	0	0	0	0
1124	6665	2013-05-11	2	10	0	0	0	6	0	0	0	0
1125	6575	2013-05-11	0	3	0	0	0	8	0	0	0	0
1126	6090	2013-05-11	0	3	0	0	0	5	0	0	0	0
1127	5981	2013-05-11	0	3	0	0	0	3	0	0	0	0
1128	5988	2013-05-11	0	1	0	0	0	14	0	0	0	0
1129	6566	2013-05-11	0	8	0	0	0	5	0	0	0	0
1130	6667	2013-05-11	0	2	0	0	0	3	0	0	0	0
1131	6386	2013-05-11	2	4	0	0	0	12	0	0	0	0
1132	6880	2013-05-11	0	13	2	29	0	173	0	1	0	2
1133	6689	2013-05-11	0	1	0	0	0	0	0	1	0	0
1134	6814	2013-05-11	0	1	0	0	0	5	0	0	0	2
1135	6720	2013-05-11	9	16	0	53	1	91	0	0	0	2
1136	6063	2013-05-11	0	0	0	0	0	0	0	0	0	0
1137	5948	2013-05-11	0	16	0	41	0	22	0	0	0	1
1138	6148	2013-05-11	11	27	0	91	3	106	0	0	0	2
1139	4445	2013-05-11	1	1	0	0	0	0	0	0	0	0
1140	6095	2013-05-11	0	1	0	0	0	0	0	0	0	0
1141	6702	2013-05-11	0	4	2	28	0	70	0	1	0	2
1142	6302	2013-05-11	4	8	0	0	2	2	0	0	0	0
1143	6199	2013-05-11	0	2	0	0	0	1	0	0	0	0
1144	6692	2013-05-11	6	24	0	343	7	78	0	0	2	5
1145	6721	2013-05-11	2	2	0	20	0	10	0	0	0	1
1146	6703	2013-05-11	0	4	0	0	0	2	0	0	0	0
1147	5644	2013-05-11	0	1	0	3	0	7	0	0	0	1
1148	5930	2013-05-11	0	1	0	0	0	0	0	0	0	0
1149	6704	2013-05-11	0	6	0	0	0	10	0	0	0	0
1150	5347	2013-05-11	0	2	0	0	0	0	0	0	0	0
1151	4634	2013-05-11	3	5	0	0	0	1	0	0	0	0
1152	6801	2013-05-11	0	2	0	0	0	0	0	0	0	0
1153	6717	2013-05-11	2	11	0	38	1	54	0	1	0	3
1154	6690	2013-05-11	18	41	11	281	14	204	0	1	0	1
1155	6525	2013-05-11	0	2	0	0	0	1	0	0	0	0
1156	6701	2013-05-11	0	3	0	0	1	19	0	0	0	0
1157	6697	2013-05-11	0	2	0	0	0	1	0	0	0	0
1158	6810	2013-05-11	0	4	0	0	0	3	0	0	0	0
1159	6696	2013-05-11	0	6	5	0	0	4	0	1	0	0
1160	6700	2013-05-11	15	16	0	30	1	9	3	4	3	3
1161	6727	2013-05-11	0	6	37	165	2	115	0	0	1	2
1162	6375	2013-05-11	0	1	0	4	0	31	0	0	0	0
1163	6699	2013-05-11	19	23	121	977	7	164	0	0	0	2
1164	6688	2013-05-11	25	51	33	270	19	386	0	1	0	4
1165	6552	2013-05-11	1	4	0	0	1	4	0	0	0	0
1166	3377	2013-05-11	0	0	0	0	0	0	0	0	0	1
1167	6678	2013-05-11	3	15	16	32	3	114	0	0	0	3
1168	6235	2013-05-11	0	3	0	0	0	1	0	0	0	0
1169	5691	2013-05-11	0	2	0	0	0	1	0	0	0	0
1170	6469	2013-05-11	0	22	0	29	5	170	0	0	0	0
1171	6451	2013-05-11	2	2	0	1	0	12	0	0	0	0
1172	6031	2013-05-11	4	20	1	9	3	125	0	0	0	3
1173	6911	2013-05-11	0	7	0	0	0	9	0	0	0	0
1174	6893	2013-05-11	0	5	0	0	0	4	0	0	0	0
1175	6919	2013-05-11	10	20	1	67	12	69	0	1	0	1
1176	4603	2013-05-11	2	4	0	56	0	50	0	1	0	1
1177	6949	2013-05-11	0	5	0	0	1	3	0	0	0	0
1178	6687	2013-05-11	0	1	0	0	0	4	0	0	0	0
1179	6353	2013-05-11	31	41	1136	294	10	42	0	0	1	5
1180	6909	2013-05-11	6	17	0	587	10	125	0	1	0	6
1181	6847	2013-05-11	0	4	0	0	0	4	0	1	0	0
1182	6723	2013-05-11	0	14	2	6	0	158	0	1	0	1
1183	6839	2013-05-11	14	25	0	381	10	160	1	1	0	1
1184	6603	2013-05-11	1	4	0	0	1	6	0	0	0	0
1185	6892	2013-05-11	1	3	0	0	0	5	0	0	0	0
1186	6164	2013-05-11	0	3	0	0	1	3	0	0	0	0
1187	6734	2013-05-11	6	25	2	31	14	345	0	2	0	2
1188	5776	2013-05-11	9	16	0	18	0	174	0	1	0	1
1189	6790	2013-05-11	10	52	3	142	12	276	0	1	0	2
1190	6362	2013-05-11	0	3	0	0	0	3	0	0	0	0
1191	6953	2013-05-11	0	6	0	0	0	4	0	0	0	0
1192	6446	2013-05-11	8	12	0	403	3	94	0	1	0	1
1193	6827	2013-05-11	0	17	1	59	2	122	0	0	0	2
1194	6762	2013-05-11	11	47	11	152	18	456	0	0	0	6
1195	4499	2013-05-11	0	5	0	0	0	2	0	0	0	0
1196	4255	2013-05-11	0	1	0	0	0	1	0	0	0	0
1197	6541	2013-05-11	2	12	5	0	0	6	0	1	0	0
1198	6407	2013-05-11	18	25	0	40	16	65	0	1	0	4
1199	6477	2013-05-11	8	9	4	77	11	275	0	0	0	0
1200	6730	2013-05-11	0	8	0	0	0	4	0	0	0	0
1201	6398	2013-05-11	0	1	0	0	0	0	0	0	0	0
1202	6489	2013-05-11	0	0	0	1	0	0	0	0	0	0
1203	6874	2013-05-11	0	3	0	0	0	7	0	0	0	0
1204	5959	2013-05-11	2	3	0	0	0	3	0	0	0	0
1205	4505	2013-05-11	1	6	0	39	3	70	0	1	0	2
1206	6972	2013-05-11	11	11	2	151	61	319	0	0	0	0
1207	6724	2013-05-11	0	3	0	0	0	4	0	0	0	0
1208	6577	2013-05-11	0	0	0	0	0	0	0	0	0	0
1209	6757	2013-05-11	0	4	0	0	0	5	0	0	0	0
1210	6266	2013-05-11	0	0	0	0	2	2	0	0	0	0
1211	6956	2013-05-11	0	0	0	150	7	274	0	0	0	0
1212	6705	2013-05-11	2	12	6	0	0	4	0	1	0	0
1213	6751	2013-05-11	1	9	0	0	0	4	0	0	0	0
1214	6691	2013-05-11	16	27	0	110	14	82	0	1	0	2
1215	6112	2013-05-11	1	2	0	0	0	0	0	0	0	0
1216	6035	2013-05-11	6	39	0	59	15	465	0	3	0	4
1217	6676	2013-05-11	2	8	0	0	0	5	0	0	0	0
1218	5551	2013-05-11	0	1	0	0	0	0	0	0	0	0
1219	6842	2013-05-11	0	6	0	0	0	7	0	0	0	0
1220	6444	2013-05-11	2	7	200	828	2	16	0	0	0	0
1221	6619	2013-05-11	0	4	0	0	0	8	0	0	0	0
1222	6843	2013-05-11	1	7	0	0	0	6	0	0	0	0
1223	6773	2013-05-11	4	43	0	53	6	334	0	1	0	7
1224	6831	2013-05-11	1	12	0	22	1	45	0	2	0	2
1225	6806	2013-05-11	5	20	0	70	4	68	0	0	0	2
1226	6845	2013-05-11	0	2	0	0	0	4	0	0	0	0
1227	6820	2013-05-11	15	37	1	94	5	151	0	0	0	4
1228	6849	2013-05-11	1	4	0	0	0	4	0	0	0	0
1229	6431	2013-05-11	1	12	2	19	4	196	0	0	0	1
1230	6844	2013-05-11	0	5	0	0	0	5	0	0	0	0
1231	6840	2013-05-11	0	3	0	0	0	6	0	0	0	0
1232	6841	2013-05-11	5	18	4	0	1	8	0	0	0	0
1233	6824	2013-05-11	0	8	0	0	0	8	0	0	0	0
1234	4522	2013-05-11	4	15	0	45	1	41	0	1	0	4
1235	6835	2013-05-11	1	5	0	0	1	5	0	0	0	0
1236	6254	2013-05-11	0	2	0	0	0	6	0	0	0	0
1237	6902	2013-05-11	1	7	0	0	0	6	0	0	0	0
1238	6832	2013-05-11	10	40	5	49	7	402	0	1	0	1
1239	6753	2013-05-11	3	30	2	40	11	379	0	1	0	2
1240	6653	2013-05-11	1	8	0	0	0	4	0	0	0	0
1241	6654	2013-05-11	2	7	0	0	0	5	0	0	0	0
1242	6387	2013-05-11	0	4	0	0	0	5	0	0	0	0
1243	6803	2013-05-11	3	11	0	24	1	70	0	0	0	2
1244	6708	2013-05-11	1	5	0	0	0	4	0	0	0	0
1245	6202	2013-05-11	0	3	0	0	0	3	0	0	0	0
1246	6426	2013-05-11	5	9	0	3	3	163	0	1	0	2
1247	6923	2013-05-11	1	8	0	35	0	28	0	2	0	3
1248	6797	2013-05-11	0	5	0	0	0	6	0	0	0	0
1249	3658	2013-05-11	2	8	0	45	0	19	0	0	0	3
1250	6795	2013-05-11	0	4	0	0	0	6	0	0	0	0
1251	6601	2013-05-11	0	4	0	0	0	8	0	0	0	0
1252	6783	2013-05-11	0	2	0	0	0	7	0	0	0	0
1253	6960	2013-05-11	3	4	1	70	11	273	0	0	0	0
1254	6549	2013-05-11	5	6	2	113	4	272	0	0	0	0
1255	6123	2013-05-11	0	1	0	0	0	0	0	0	0	0
1256	6946	2013-05-11	0	3	0	0	0	2	0	0	0	0
1257	6939	2013-05-11	0	8	0	0	0	14	0	0	0	0
1258	6944	2013-05-11	1	4	0	0	0	10	0	0	0	0
1259	6935	2013-05-11	0	5	0	0	1	4	0	1	0	0
1260	6940	2013-05-11	0	6	0	0	0	4	0	0	0	0
1261	6959	2013-05-11	15	15	0	529	30	275	0	0	0	0
1262	4537	2013-05-11	0	1	0	1	0	57	0	0	0	0
1263	6878	2013-05-11	0	2	0	0	0	2	0	1	0	0
1264	6813	2013-05-11	0	2	0	0	0	3	0	0	0	0
1265	6815	2013-05-11	0	2	0	0	0	4	0	0	0	0
1266	6755	2013-05-11	0	11	0	16	1	53	0	0	0	1
1267	6743	2013-05-11	3	14	0	41	0	203	0	2	0	2
1268	6491	2013-05-11	0	1	0	0	0	4	0	0	0	0
1269	6729	2013-05-11	1	10	0	0	0	9	0	0	0	0
1270	6761	2013-05-11	0	3	0	0	0	3	0	0	0	0
1271	6097	2013-05-11	0	5	0	0	0	13	0	0	0	0
1272	6821	2013-05-11	0	14	0	28	16	227	0	1	0	2
1273	6453	2013-05-11	0	3	0	0	0	2	0	0	0	0
1274	6659	2013-05-11	9	32	0	99	25	247	0	1	0	5
1275	5821	2013-05-11	0	2	0	0	0	3	0	0	0	0
1276	6331	2013-05-11	0	1	0	0	0	0	0	0	0	0
1277	6576	2013-05-11	0	4	0	0	0	4	0	0	0	0
1278	6496	2013-05-11	0	4	0	0	0	4	0	0	0	0
1279	4548	2013-05-11	3	7	8	28	1	158	0	1	0	2
1280	6728	2013-05-11	1	5	0	0	0	4	0	0	0	0
1281	6750	2013-05-11	0	6	0	0	0	4	0	0	0	0
1282	6804	2013-05-11	0	1	0	0	0	0	0	0	0	0
1283	6808	2013-05-11	1	12	0	8	1	39	0	1	0	3
1284	6818	2013-05-11	0	3	0	0	0	4	0	0	0	0
1285	6722	2013-05-11	17	26	0	356	12	67	0	0	0	0
1286	6817	2013-05-11	0	5	5	0	0	2	0	0	0	0
1287	6713	2013-05-11	23	34	11	213	3	162	0	1	0	4
1288	6766	2013-05-11	0	3	0	0	0	5	0	0	0	0
1289	5800	2013-05-11	0	2	0	0	0	1	0	0	0	0
1290	6506	2013-05-11	1	3	0	0	1	6	0	0	0	0
1291	6763	2013-05-11	0	6	0	0	0	4	0	0	0	0
1292	6498	2013-05-11	0	3	0	0	0	3	0	0	0	0
1293	6264	2013-05-11	0	6	0	0	0	4	0	0	0	0
1294	6679	2013-05-11	4	33	0	26	0	310	0	1	0	6
1295	6770	2013-05-11	0	3	0	0	0	9	0	0	0	0
1296	6159	2013-05-11	0	1	0	0	0	0	0	0	0	0
1297	6764	2013-05-11	8	35	15	96	7	439	0	1	0	3
1298	6776	2013-05-11	0	4	0	0	0	4	0	0	0	0
1299	6726	2013-05-11	0	4	1	22	0	29	0	0	0	0
1300	5943	2013-05-11	10	11	0	0	2	3	1	1	0	0
1301	6735	2013-05-11	0	5	0	0	0	5	0	0	0	0
1302	6829	2013-05-11	3	25	25	138	6	222	0	0	0	5
1303	5946	2013-05-11	0	3	5	0	0	3	0	0	0	0
1304	6593	2013-05-11	0	6	0	0	0	19	0	0	0	0
1305	6869	2013-05-11	0	4	0	0	0	2	0	0	0	0
1306	4561	2013-05-11	0	0	0	0	0	275	0	0	0	0
1307	6482	2013-05-11	0	0	0	0	0	0	0	0	0	0
1308	6969	2013-05-11	3	4	0	32	10	277	0	0	0	0
1309	6784	2013-05-11	1	18	0	45	2	223	0	2	0	3
1310	6673	2013-05-11	16	21	0	110	5	92	0	0	0	0
1311	6926	2013-05-11	5	18	2	113	7	224	0	1	0	3
1312	6669	2013-05-11	10	38	1	115	9	361	0	1	0	4
1313	6013	2013-05-11	0	2	0	0	0	0	0	0	0	0
1314	6925	2013-05-11	3	9	0	29	4	61	0	1	0	4
1315	6604	2013-05-11	0	5	0	0	0	15	0	0	0	0
1316	6731	2013-05-11	0	6	0	0	0	11	0	0	0	0
1317	6736	2013-05-11	0	10	0	0	0	4	0	0	0	0
1318	6932	2013-05-11	0	5	0	0	0	4	0	0	0	0
1319	6475	2013-05-11	9	9	0	174	62	337	1	1	4	4
1320	6772	2013-05-11	5	14	28	156	9	129	0	0	0	0
1321	6378	2013-05-11	2	5	0	0	0	4	0	0	0	0
1322	6427	2013-05-11	1	8	0	40	6	147	0	1	0	1
1323	6851	2013-05-11	6	25	0	2	0	229	0	1	0	1
1324	6089	2013-05-11	1	12	5	0	0	8	0	1	0	0
1325	5687	2013-05-11	1	8	0	25	1	229	0	1	0	0
1326	6942	2013-05-11	2	10	0	35	0	41	0	0	0	1
1327	4279	2013-05-11	0	3	0	0	0	0	0	0	0	0
1328	5460	2013-05-11	2	3	0	0	0	31	0	0	0	0
1329	6951	2013-05-11	0	0	0	0	0	0	0	0	0	0
1330	6228	2013-05-11	11	25	48	8	49	145	0	4	0	3
1331	6168	2013-05-11	0	2	5	0	0	9	0	1	0	0
1332	5709	2013-05-11	10	19	0	18	9	44	0	0	0	2
1333	6025	2013-05-11	0	1	0	0	0	0	0	0	0	0
1334	6628	2013-05-11	7	8	0	0	0	3	0	1	0	0
1335	6848	2013-05-11	0	5	0	0	1	6	0	0	0	0
1336	6819	2013-05-11	0	1	0	29	0	1	0	0	0	0
1337	6209	2013-05-11	0	0	0	0	0	0	0	0	0	0
1338	4362	2013-05-11	0	2	0	0	0	83	0	1	0	0
1339	6896	2013-05-11	0	4	0	0	0	11	0	1	0	0
1340	6871	2013-05-11	0	2	0	0	0	1	0	0	0	0
1341	6785	2013-05-11	1	4	0	0	0	3	0	0	0	0
1342	6742	2013-05-11	3	13	0	4	0	40	0	1	0	1
1343	6767	2013-05-11	9	24	35	52	6	107	0	1	0	3
1344	6899	2013-05-11	0	3	0	0	0	1	0	0	0	0
1345	6897	2013-05-11	0	4	0	0	0	7	0	0	0	0
1346	6759	2013-05-11	1	6	0	0	0	6	0	0	0	0
1347	6947	2013-05-11	0	2	0	0	0	7	0	0	0	0
1348	6921	2013-05-11	3	14	0	17	2	40	0	0	0	2
1349	6624	2013-05-11	0	3	0	0	0	4	0	0	0	0
1350	6812	2013-05-11	24	65	30	108	24	342	0	1	0	5
1351	6610	2013-05-11	0	0	0	0	0	0	0	0	0	0
1352	6383	2013-05-11	1	6	0	0	0	4	0	0	0	0
1353	4840	2013-05-11	13	20	2	160	1	39	0	1	0	3
1354	5471	2013-05-11	0	1	0	0	0	0	0	0	0	0
1355	6371	2013-05-11	2	2	0	0	0	0	0	0	0	0
1356	6748	2013-05-11	0	17	0	66	4	71	0	0	1	4
1357	6174	2013-05-11	0	3	0	0	0	3	0	0	0	0
1358	6936	2013-05-11	0	4	0	0	0	5	0	0	0	0
1359	6756	2013-05-11	0	29	1	44	0	280	0	0	0	3
1360	6408	2013-05-11	0	4	0	0	0	4	0	0	0	0
1361	6069	2013-05-11	22	23	0	39	4	6	3	3	2	2
1362	6336	2013-05-11	0	2	0	0	1	2	0	0	0	0
1363	6167	2013-05-11	0	2	0	0	0	4	0	0	0	0
1364	6915	2013-05-11	0	4	0	0	0	6	0	0	0	0
1365	6495	2013-05-11	5	10	0	38	0	127	0	1	0	2
1366	6883	2013-05-11	0	2	0	2	0	7	0	0	0	0
1367	6910	2013-05-11	0	7	0	0	0	8	0	0	0	0
1368	5982	2013-05-11	0	0	0	0	0	0	0	0	0	0
1369	6379	2013-05-11	0	2	0	0	0	2	0	0	0	0
1370	6858	2013-05-11	1	20	0	19	0	43	0	0	0	5
1371	6799	2013-05-11	2	10	5	0	0	7	0	0	0	0
1372	6274	2013-05-11	0	1	0	0	0	1	0	0	0	0
1373	6885	2013-05-11	6	27	0	26	6	192	0	1	0	4
1374	6777	2013-05-11	1	3	0	0	0	4	0	0	0	0
1375	6870	2013-05-11	0	4	0	0	0	6	0	0	0	0
1376	6775	2013-05-11	0	3	0	0	0	6	0	0	0	0
1377	6918	2013-05-11	0	4	0	0	0	3	0	0	0	0
1378	6864	2013-05-11	1	19	0	53	5	61	0	0	0	2
1379	6800	2013-05-11	19	26	11	477	14	65	0	0	0	1
1380	6929	2013-05-11	1	30	11	81	7	450	0	4	0	1
1381	6903	2013-05-11	0	7	0	0	0	8	0	0	0	0
1382	6963	2013-05-11	6	6	0	31	3	273	0	0	0	0
1383	6744	2013-05-11	14	38	10	134	19	257	0	2	0	5
1384	6916	2013-05-11	4	36	29	184	11	600	0	1	0	5
1385	6920	2013-05-11	3	9	0	19	1	37	0	0	0	1
1386	6854	2013-05-11	0	1	0	0	0	10	0	0	0	0
1387	6930	2013-05-11	0	5	0	0	0	4	0	0	0	0
1388	6895	2013-05-11	0	9	0	21	0	31	0	0	0	4
1389	6866	2013-05-11	0	6	0	0	0	6	0	0	0	0
1390	6876	2013-05-11	0	6	0	0	0	9	0	1	0	0
1391	6613	2013-05-11	0	12	3	19	3	55	0	1	0	2
1392	6906	2013-05-11	0	2	0	0	0	0	0	0	0	0
1393	6912	2013-05-11	0	2	0	0	0	2	0	0	0	0
1394	6204	2013-05-11	1	13	0	5	0	11	0	1	0	1
1395	6765	2013-05-11	193	226	62	536	23	365	0	2	0	2
1396	6908	2013-05-11	74	154	1	1274	45	526	0	2	0	4
1397	6836	2013-05-11	13	17	0	17	1	10	0	0	0	1
1398	6922	2013-05-11	1	18	0	10	2	65	0	0	0	2
1399	5486	2013-05-11	11	20	19	84	4	19	0	0	0	1
1400	6413	2013-05-11	3	11	0	234	7	210	0	1	0	1
1401	6877	2013-05-11	3	10	0	31	2	69	0	1	0	0
1402	6548	2013-05-11	20	21	4	71	34	270	0	0	0	0
1403	6771	2013-05-11	4	11	5	0	0	8	0	0	0	0
1404	6950	2013-05-11	0	2	0	0	0	2	0	0	0	0
1405	6962	2013-05-11	9	9	11	177	14	14	0	0	0	0
1406	6952	2013-05-11	0	2	0	0	0	6	0	0	0	0
1407	6823	2013-05-11	1	8	0	0	0	7	0	1	0	0
1408	5971	2013-05-11	0	3	0	0	0	7	0	0	0	0
1409	6505	2013-05-11	0	3	0	0	0	3	0	0	0	0
1410	6856	2013-05-11	3	20	0	43	3	311	1	2	0	3
1411	6865	2013-05-11	2	6	0	0	0	8	0	1	0	0
1412	6794	2013-05-11	2	10	0	26	4	58	0	0	0	3
1413	6945	2013-05-11	0	0	0	0	0	1	0	0	0	0
1414	6838	2013-05-11	9	22	0	47	0	143	0	0	0	2
1415	6779	2013-05-11	2	20	0	72	1	59	0	3	1	3
1416	6875	2013-05-11	0	6	0	0	0	6	0	0	0	0
1417	6934	2013-05-11	0	3	0	0	0	9	0	0	0	0
1418	3782	2013-05-11	0	0	0	0	0	1	0	0	0	0
1419	6781	2013-05-11	11	36	15	67	12	295	0	0	0	1
1420	6752	2013-05-11	0	5	0	0	0	3	0	0	0	0
1421	4287	2013-05-11	0	1	0	0	1	2	0	0	0	0
1422	6786	2013-05-11	3	18	0	22	2	61	0	0	0	1
1423	6564	2013-05-11	2	3	0	0	0	3	0	0	0	0
1424	6121	2013-05-11	7	13	0	33	5	27	0	0	1	5
1425	6891	2013-05-11	1	3	0	0	0	1	0	0	0	0
1426	6523	2013-05-11	9	20	12	20	3	88	0	0	0	3
1427	6860	2013-05-11	2	3	0	0	0	5	0	0	0	0
1428	5683	2013-05-11	16	19	0	113	3	100	0	0	0	1
1429	6286	2013-05-11	1	3	0	0	0	3	0	0	0	0
1430	6853	2013-05-11	10	27	4	100	8	136	0	0	0	3
1431	6802	2013-05-11	7	16	0	6	2	76	0	0	0	2
1432	6872	2013-05-11	0	8	0	0	0	9	0	0	0	0
1433	5763	2013-05-11	82	84	0	56	5	152	15	15	9	10
1434	6239	2013-05-11	0	0	0	0	0	0	0	0	0	0
1435	6809	2013-05-11	7	21	0	84	6	57	0	0	0	2
1436	6769	2013-05-11	0	4	0	0	0	3	0	0	0	0
1437	6739	2013-05-11	10	17	721	710	29	250	0	0	0	0
1438	6787	2013-05-11	1	5	0	0	0	6	0	0	0	0
1439	6515	2013-05-11	0	9	0	54	0	114	0	1	0	3
1440	6002	2013-05-11	1	3	0	0	0	8	0	0	0	0
1441	6754	2013-05-11	0	4	0	0	0	3	0	0	0	0
1442	5506	2013-05-11	1	4	0	0	0	0	0	0	0	0
1443	6862	2013-05-11	7	8	0	0	1	3	0	1	0	0
1444	6661	2013-05-11	0	7	0	0	0	4	0	0	0	0
1445	5482	2013-05-11	0	1	0	0	0	0	0	0	0	0
1446	6306	2013-05-11	0	1	0	6	0	3	0	0	0	0
1447	6440	2013-05-11	0	1	0	0	0	3	0	0	0	0
1448	6698	2013-05-11	1	8	0	0	0	13	0	0	0	0
1449	6966	2013-05-11	14	15	1	216	42	272	0	0	0	0
1450	6693	2013-05-11	1	4	0	0	0	5	0	0	0	0
1451	6749	2013-05-11	2	10	6	72	4	237	0	0	0	0
1452	6943	2013-05-11	0	5	0	0	0	4	0	0	0	0
1453	6337	2013-05-11	0	2	0	0	0	1	0	0	0	0
1454	6318	2013-05-11	8	9	0	0	0	3	0	1	0	0
1455	6900	2013-05-11	0	4	0	0	0	3	0	0	0	0
1456	6746	2013-05-11	2	15	0	42	0	216	0	0	0	0
1457	6433	2013-05-11	0	5	0	0	0	5	0	0	0	0
1458	6509	2013-05-11	0	11	0	39	2	277	0	0	0	1
1459	6529	2013-05-11	1	7	0	0	0	9	0	0	0	0
1460	6948	2013-05-11	0	7	0	0	0	7	0	0	0	0
1461	5686	2013-05-11	2	4	0	0	0	1	0	0	0	0
1462	6317	2013-05-11	0	2	0	0	0	0	0	0	0	0
1463	5932	2013-05-11	0	0	0	0	0	0	0	0	0	0
1464	6133	2013-05-11	1	12	0	0	1	10	0	1	0	0
1465	6716	2013-05-11	0	4	0	0	0	5	0	0	0	0
1466	6500	2013-05-11	4	18	0	170	21	145	0	1	0	3
1467	6917	2013-05-11	0	4	0	0	0	3	0	0	0	0
1468	6079	2013-05-11	7	26	0	163	5	229	0	1	0	2
1469	6816	2013-05-11	0	8	0	0	0	7	0	0	0	0
1470	6550	2013-05-11	1	5	0	0	0	3	0	0	0	0
1471	6656	2013-05-11	0	3	0	0	0	2	0	1	0	0
1472	6657	2013-05-11	0	1	0	0	0	2	0	0	0	0
1473	6680	2013-05-11	10	41	2	79	10	367	0	2	0	7
1474	6937	2013-05-11	0	4	0	0	0	1	0	0	0	0
1475	6321	2013-05-11	0	3	0	0	0	2	0	0	0	0
1476	6327	2013-05-11	0	0	0	0	0	0	0	0	0	0
1477	6535	2013-05-11	1	6	0	0	1	6	0	0	0	0
1478	6684	2013-05-11	4	24	0	17	1	189	0	1	1	2
1479	6534	2013-05-11	0	4	0	0	0	2	0	0	0	0
1480	6683	2013-05-11	12	30	2	32	7	353	0	0	0	5
1481	6938	2013-05-11	1	4	0	0	0	3	0	0	0	0
1482	6941	2013-05-11	0	7	0	0	0	2	0	0	0	0
1483	6664	2013-05-11	4	9	4	393	6	175	0	0	0	1
1484	6672	2013-05-11	0	9	0	0	0	1	0	0	0	0
1485	5668	2013-05-11	0	2	0	1	0	41	0	0	0	0
1486	6868	2013-05-11	1	13	0	0	0	6	0	0	0	0
1487	6648	2013-05-11	0	0	0	0	0	0	0	0	0	0
1488	6423	2013-05-11	0	3	0	0	0	3	0	0	0	0
1489	6466	2013-05-11	39	73	0	48	3	210	0	1	0	2
1490	5938	2013-05-11	5	13	0	91	4	111	0	1	1	2
1491	6281	2013-05-11	2	16	0	0	1	3	0	0	0	0
1492	6718	2013-05-11	0	6	0	0	0	1	0	0	0	0
1493	6276	2013-05-11	0	7	0	0	0	5	0	0	0	0
1494	6420	2013-05-11	0	6	0	0	0	3	0	0	0	0
1495	6677	2013-05-11	0	3	0	0	0	3	0	0	0	0
1496	6670	2013-05-11	0	9	0	0	0	7	0	0	0	0
1497	6725	2013-05-11	0	5	0	0	0	5	0	0	0	0
1498	5979	2013-05-11	0	4	0	0	0	4	0	0	0	0
1499	6741	2013-05-11	0	2	0	0	0	3	0	0	0	0
1500	6437	2013-05-11	11	22	178	1292	29	260	0	0	0	2
1501	6658	2013-05-11	0	4	0	0	0	4	0	0	0	0
1502	6171	2013-05-11	0	2	0	0	0	2	0	0	0	0
1503	6857	2013-05-11	11	48	2	262	32	416	1	1	0	4
1504	6685	2013-05-11	0	2	0	0	0	3	0	0	0	0
1505	6615	2013-05-11	3	6	0	0	2	6	0	0	0	0
1506	6518	2013-05-11	1	3	0	0	1	4	0	0	0	0
1507	6429	2013-05-11	0	6	0	0	0	6	0	0	0	0
1508	6924	2013-05-11	0	7	0	0	2	9	0	1	0	0
1509	6462	2013-05-11	25	40	5	543	17	199	0	0	0	1
1510	6913	2013-05-11	1	6	0	0	0	2	0	0	0	0
1511	6522	2013-05-11	2	3	0	0	0	3	0	0	0	0
1512	3764	2013-05-11	0	5	0	6	0	183	0	0	0	0
1513	6324	2013-05-11	9	24	1	174	11	189	0	1	0	2
1514	6778	2013-05-11	4	27	0	96	9	227	0	1	0	2
1515	6907	2013-05-11	0	3	0	0	1	3	0	0	0	0
1516	6928	2013-05-11	7	36	1	127	3	183	0	1	0	2
1517	6179	2013-05-11	0	2	0	0	0	1	0	0	0	0
1518	6863	2013-05-11	0	6	0	0	0	5	0	0	0	0
1519	6732	2013-05-11	0	4	0	0	0	4	0	0	0	0
1520	6633	2013-05-11	0	3	0	0	0	5	0	0	0	0
1521	6965	2013-05-11	0	0	0	34	29	274	0	0	0	0
1522	6737	2013-05-11	0	3	0	0	0	2	0	0	0	0
1523	3536	2013-05-11	0	0	0	1	0	1	0	0	0	0
1524	6964	2013-05-11	0	0	0	0	0	0	0	0	0	0
1525	6927	2013-05-11	7	25	1	51	15	173	0	2	0	4
1526	6719	2013-05-11	0	4	0	0	0	5	0	0	0	0
1527	6531	2013-05-11	0	0	0	0	0	0	0	0	0	0
1528	6641	2013-05-11	0	1	0	4	0	7	0	0	0	2
1529	6955	2013-05-11	0	1	0	36	8	273	0	0	0	0
1530	6715	2013-05-11	1	2	0	0	0	5	0	0	0	0
1531	6811	2013-05-11	19	28	14	326	13	248	0	0	0	0
1532	6563	2013-05-11	8	37	0	206	16	326	0	2	0	3
1533	6557	2013-05-11	6	21	0	31	7	52	0	0	0	4
1534	5782	2013-05-11	163	165	0	205	70	266	15	15	9	10
1535	6714	2013-05-11	0	4	0	0	0	0	0	1	0	0
1536	6830	2013-05-11	7	25	0	47	0	57	0	0	0	4
1537	6833	2013-05-11	0	2	0	0	0	4	0	0	0	0
1538	6791	2013-05-11	0	15	0	19	3	135	0	1	0	2
1539	6914	2013-05-11	21	32	16	121	6	163	0	1	0	2
1540	6881	2013-05-11	8	19	10	40	4	233	0	1	0	2
1541	6422	2013-05-11	1	3	0	0	0	5	0	0	0	0
1542	6890	2013-05-11	0	3	0	0	0	5	0	0	0	0
1543	6961	2013-05-11	7	7	0	91	15	271	0	0	0	0
1544	6733	2013-05-11	0	2	0	0	0	5	0	0	0	0
1545	4673	2013-05-11	1	1	0	14	7	274	0	0	0	0
1546	6517	2013-05-11	0	2	0	0	0	4	0	0	0	0
1547	6904	2013-05-11	0	5	0	0	2	5	0	0	0	0
1548	6882	2013-05-11	0	7	0	0	0	7	0	0	0	0
1549	6682	2013-05-11	0	7	0	0	0	9	0	0	0	0
1550	6706	2013-05-11	0	4	0	0	0	6	0	1	0	0
1551	6711	2013-05-11	4	26	6	58	3	219	0	1	0	5
1552	6578	2013-05-11	1	5	0	0	0	3	0	0	0	0
1553	6312	2013-05-11	1	1	0	0	0	0	0	0	0	0
1554	6879	2013-05-11	1	9	0	0	0	6	0	0	0	0
1555	6888	2013-05-11	0	6	0	0	0	2	0	0	0	0
1556	6798	2013-05-11	0	22	0	48	5	84	0	1	0	3
1557	5801	2013-05-11	1	1	0	0	0	0	0	0	0	0
1558	6339	2013-05-11	0	1	0	0	0	14	0	0	0	0
1559	6740	2013-05-11	0	5	0	0	0	5	0	0	0	0
1560	6694	2013-05-11	12	20	13	132	10	201	0	0	0	1
1561	6260	2013-05-11	1	6	0	0	0	4	0	0	0	0
1562	6889	2013-05-11	0	3	0	0	0	5	0	0	0	0
1563	5996	2013-05-11	1	2	0	0	0	0	0	0	0	0
1564	6348	2013-05-11	1	7	0	0	0	3	0	0	0	0
1565	5997	2013-05-11	0	2	0	0	0	0	0	0	0	0
1566	6861	2013-05-11	0	5	0	0	0	5	0	0	0	0
1567	6438	2013-05-11	0	5	0	0	1	67	0	1	0	2
1568	6789	2013-05-11	2	15	0	46	2	42	0	1	0	2
1569	6347	2013-05-11	0	2	0	0	0	1	0	0	0	0
1570	6822	2013-05-11	0	6	0	0	0	6	0	0	0	0
1571	6675	2013-05-11	0	3	0	0	0	13	0	0	0	0
1572	6269	2013-05-11	0	0	0	0	0	1	0	0	0	0
1573	6270	2013-05-11	0	1	0	0	0	2	0	0	0	0
1574	6834	2013-05-11	0	31	5	26	0	368	0	3	0	2
1575	6662	2013-05-11	0	2	0	0	0	5	0	0	0	0
1576	6153	2013-05-11	0	2	0	0	0	0	0	0	0	0
1577	6081	2013-05-11	1	11	0	46	0	23	0	1	0	1
1578	6850	2013-05-11	9	19	4	42	2	113	0	0	0	0
1579	6008	2013-05-11	0	2	0	0	0	4	0	0	0	0
1580	6010	2013-05-11	0	2	0	0	0	3	0	0	0	0
1581	6479	2013-05-11	0	0	0	0	0	0	0	0	0	0
1582	6901	2013-05-11	0	3	0	0	0	5	0	0	0	0
1583	6030	2013-05-11	10	18	0	44	4	113	0	1	0	3
1584	6745	2013-05-11	0	3	0	0	0	10	0	0	0	0
1585	6887	2013-05-11	1	9	0	0	0	6	0	0	0	0
1586	6620	2013-05-11	0	0	0	0	0	2	0	0	0	0
1587	6405	2013-05-11	4	27	0	24	1	191	0	2	0	4
1588	6886	2013-05-11	0	3	0	0	0	6	0	0	0	0
1589	6374	2013-05-11	0	1	0	0	0	0	0	0	0	0
1590	5754	2013-05-11	1	5	0	0	0	10	0	0	0	0
1591	6695	2013-05-11	0	8	0	0	0	15	0	0	0	0
1592	6968	2013-05-11	0	0	0	0	0	0	0	0	0	0
1593	6474	2013-05-11	4	4	19	108	9	275	0	0	0	0
1594	5905	2013-05-11	0	1	0	0	0	0	0	0	0	0
1595	4698	2013-05-11	0	4	0	0	0	0	0	0	0	0
1596	6663	2013-05-11	4	11	0	0	0	6	0	0	0	0
1597	6671	2013-05-11	1	7	0	0	0	5	0	0	0	0
1598	6707	2013-05-11	0	3	0	0	0	12	0	0	0	0
1599	6488	2013-05-11	0	5	0	0	0	4	0	0	0	0
1600	6674	2013-05-11	0	3	0	0	0	0	0	0	0	0
1601	6104	2013-05-11	0	11	0	0	0	4	0	0	0	0
1602	6681	2013-05-11	0	4	0	0	0	4	0	0	0	0
1603	6970	2013-05-11	0	0	0	0	0	0	0	0	0	0
1604	6476	2013-05-11	20	20	16	97	55	326	1	1	4	4
1605	6971	2013-05-11	0	0	0	0	0	0	0	0	0	0
1606	5954	2013-05-11	0	3	0	0	0	2	0	0	0	0
1607	6655	2013-05-11	13	20	0	47	1	185	0	1	0	2
1608	6686	2013-05-11	4	21	3	81	7	184	0	1	0	2
1609	6402	2013-05-11	3	11	0	17	1	30	0	1	0	1
1610	6884	2013-05-11	0	4	0	0	0	3	0	0	0	0
1611	6837	2013-05-11	3	26	1	121	15	349	0	2	0	4
1612	6290	2013-05-11	0	3	0	0	0	14	0	0	0	0
1613	5973	2013-05-11	1	1	0	0	0	0	0	0	0	0
1614	5676	2013-05-11	14	29	257	129	17	138	0	1	0	1
1615	6780	2013-05-11	11	22	0	94	9	44	0	1	0	2
1616	6616	2013-05-11	0	4	0	0	0	4	0	0	0	0
1617	4712	2013-05-11	0	3	0	6	0	77	0	0	0	0
1618	6933	2013-05-11	0	1	0	0	0	0	0	0	0	0
1619	6846	2013-05-11	0	6	0	0	0	4	0	0	0	0
1620	6825	2013-05-11	6	25	2	69	5	131	0	1	0	3
1621	6294	2013-05-11	0	1	0	0	0	1	0	0	0	0
1622	6555	2013-05-11	0	5	0	0	0	6	0	0	0	0
1623	6826	2013-05-11	1	6	0	125	9	41	0	1	0	3
1624	4440	2013-05-11	10	25	104	6	3	160	0	1	0	6
1625	6792	2013-05-11	1	14	0	75	3	95	0	0	0	2
1626	6788	2013-05-11	2	5	0	0	0	2	0	0	0	0
1627	6768	2013-05-11	0	9	0	0	0	4	0	0	0	0
1628	6958	2013-05-11	0	0	0	0	0	0	0	0	0	0
1629	6807	2013-05-11	0	4	0	0	0	6	0	0	0	0
1630	6805	2013-05-11	0	4	0	0	0	4	0	0	0	0
1631	6967	2013-05-11	1	1	4	82	8	274	0	0	0	0
1632	6394	2013-05-11	0	2	0	0	0	1	0	0	0	0
1633	6572	2013-05-11	0	1	0	0	0	4	0	0	0	0
1634	6478	2013-05-11	0	1	0	26	1	4	0	0	0	0
1635	6484	2013-05-11	0	0	0	59	4	272	0	0	0	0
1636	6747	2013-05-11	0	6	0	0	1	5	0	0	0	0
1637	6367	2013-05-11	16	16	0	115	6	16	3	3	4	4
1638	6709	2013-05-11	1	7	0	0	0	12	0	0	0	0
1639	6238	2013-05-11	0	2	0	0	0	0	0	0	0	0
1640	6855	2013-05-11	9	19	19	121	5	92	0	0	0	1
1641	6710	2013-05-11	1	13	0	0	0	8	0	0	0	0
1642	6796	2013-05-11	0	1	0	0	0	1	0	0	0	0
1643	6894	2013-05-11	0	0	0	0	0	0	0	0	0	0
1644	6512	2013-05-11	4	31	0	156	10	211	0	0	0	3
1645	3822	2013-05-11	0	1	0	0	0	0	0	0	0	0
1646	6738	2013-05-11	0	2	0	0	0	14	0	0	0	0
1647	6957	2013-05-11	2	2	0	16	1	274	0	0	0	0
1648	6026	2013-05-11	0	1	0	0	0	0	0	0	0	0
1649	5540	2013-05-11	0	3	0	0	0	1	0	0	0	0
1650	6758	2013-05-11	9	22	2	39	2	215	0	0	0	5
1651	6859	2013-05-11	1	9	0	12	3	70	0	0	0	3
1652	6852	2013-05-11	1	12	0	0	0	4	0	0	0	0
1653	6585	2013-05-11	1	8	0	0	1	6	0	0	0	0
1654	5857	2013-05-11	14	32	291	311	24	180	0	1	0	1
1655	6349	2013-05-11	0	3	0	0	0	3	0	0	0	0
1656	6782	2013-05-11	0	13	1	25	3	16	1	1	0	1
1657	6931	2013-05-11	1	11	0	25	4	87	0	0	0	3
1658	6508	2013-05-11	0	2	0	0	1	4	0	0	0	0
1659	6439	2013-05-11	2	10	4	35	6	172	0	0	0	0
1660	6905	2013-05-11	5	17	0	99	5	255	1	1	1	2
1661	6608	2013-05-11	7	8	0	0	0	3	0	1	0	0
1662	6565	2013-05-11	0	5	0	0	0	5	0	0	0	0
1663	6760	2013-05-11	1	19	0	33	2	217	0	1	0	3
1664	6660	2013-05-11	0	3	0	0	0	2	0	0	0	0
1665	6793	2013-05-11	0	3	0	0	0	9	0	0	0	0
1666	5336	2013-05-11	0	1	0	0	1	1	0	0	0	0
1667	6545	2013-05-11	0	1	0	0	0	0	0	0	0	0
1668	6712	2013-05-11	13	27	0	44	1	112	0	1	0	4
1669	6898	2013-05-11	0	3	0	0	0	2	0	0	0	0
1670	6828	2013-05-11	1	5	0	33	9	213	0	1	0	1
1671	6954	2013-05-11	6	6	4	70	9	273	0	0	0	0
1672	6665	2013-05-11	2	10	0	0	0	6	0	0	0	0
1673	6575	2013-05-11	0	3	0	0	0	8	0	0	0	0
1674	6090	2013-05-11	0	3	0	0	0	5	0	0	0	0
1675	5981	2013-05-11	0	3	0	0	0	3	0	0	0	0
1676	5988	2013-05-11	0	1	0	0	0	14	0	0	0	0
1677	6566	2013-05-11	0	8	0	0	0	5	0	0	0	0
1678	6667	2013-05-11	0	2	0	0	0	3	0	0	0	0
1679	6386	2013-05-11	2	4	0	0	0	12	0	0	0	0
1680	6880	2013-05-11	0	13	2	29	0	173	0	1	0	2
1681	6689	2013-05-11	0	1	0	0	0	0	0	1	0	0
1682	6814	2013-05-11	0	1	0	0	0	5	0	0	0	2
1683	6720	2013-05-11	9	16	0	53	1	91	0	0	0	2
1684	6063	2013-05-11	0	0	0	0	0	0	0	0	0	0
1685	5948	2013-05-11	0	16	0	41	0	22	0	0	0	1
1686	6148	2013-05-11	11	27	0	91	3	106	0	0	0	2
1687	4445	2013-05-11	1	1	0	0	0	0	0	0	0	0
1688	6095	2013-05-11	0	1	0	0	0	0	0	0	0	0
1689	6702	2013-05-11	0	4	2	28	0	70	0	1	0	2
1690	6302	2013-05-11	4	8	0	0	2	2	0	0	0	0
1691	6199	2013-05-11	0	2	0	0	0	1	0	0	0	0
1692	6692	2013-05-11	6	24	0	343	7	78	0	0	2	5
1693	6721	2013-05-11	2	2	0	20	0	10	0	0	0	1
1694	6703	2013-05-11	0	4	0	0	0	2	0	0	0	0
1695	5644	2013-05-11	0	1	0	3	0	7	0	0	0	1
1696	5930	2013-05-11	0	1	0	0	0	0	0	0	0	0
1697	6704	2013-05-11	0	6	0	0	0	10	0	0	0	0
1698	5347	2013-05-11	0	2	0	0	0	0	0	0	0	0
1699	4634	2013-05-11	3	5	0	0	0	1	0	0	0	0
1700	6801	2013-05-11	0	2	0	0	0	0	0	0	0	0
1701	6717	2013-05-11	2	11	0	38	1	54	0	1	0	3
1702	6690	2013-05-11	18	41	11	281	14	204	0	1	0	1
1703	6525	2013-05-11	0	2	0	0	0	1	0	0	0	0
1704	6701	2013-05-11	0	3	0	0	1	19	0	0	0	0
1705	6697	2013-05-11	0	2	0	0	0	1	0	0	0	0
1706	6810	2013-05-11	0	4	0	0	0	3	0	0	0	0
1707	6696	2013-05-11	0	6	5	0	0	4	0	1	0	0
1708	6700	2013-05-11	15	16	0	30	1	9	3	4	3	3
1709	6727	2013-05-11	0	6	37	165	2	115	0	0	1	2
1710	6375	2013-05-11	0	1	0	4	0	31	0	0	0	0
1711	6699	2013-05-11	19	23	121	977	7	164	0	0	0	2
1712	6688	2013-05-11	25	51	33	270	19	386	0	1	0	4
1713	6552	2013-05-11	1	4	0	0	1	4	0	0	0	0
1714	3377	2013-05-11	0	0	0	0	0	0	0	0	0	1
1715	6678	2013-05-11	3	15	16	32	3	114	0	0	0	3
1716	6235	2013-05-11	0	3	0	0	0	1	0	0	0	0
1717	5691	2013-05-11	0	2	0	0	0	1	0	0	0	0
1718	6469	2013-05-11	0	22	0	29	5	170	0	0	0	0
1719	6451	2013-05-11	2	2	0	1	0	12	0	0	0	0
1720	6031	2013-05-11	4	20	1	9	3	125	0	0	0	3
1721	6911	2013-05-11	0	7	0	0	0	9	0	0	0	0
1722	6893	2013-05-11	0	5	0	0	0	4	0	0	0	0
1723	6919	2013-05-11	10	20	1	67	12	69	0	1	0	1
1724	4603	2013-05-11	2	4	0	56	0	50	0	1	0	1
1725	6949	2013-05-11	0	5	0	0	1	3	0	0	0	0
1726	6687	2013-05-11	0	1	0	0	0	4	0	0	0	0
1727	6353	2013-05-11	31	41	1136	294	10	42	0	0	1	5
1728	6909	2013-05-11	6	17	0	587	10	125	0	1	0	6
1729	6847	2013-05-11	0	4	0	0	0	4	0	1	0	0
1730	6723	2013-05-11	0	14	2	6	0	158	0	1	0	1
1731	6839	2013-05-11	14	25	0	381	10	160	1	1	0	1
1732	6603	2013-05-11	1	4	0	0	1	6	0	0	0	0
1733	6892	2013-05-11	1	3	0	0	0	5	0	0	0	0
1734	6164	2013-05-11	0	3	0	0	1	3	0	0	0	0
1735	6734	2013-05-11	6	25	2	31	14	345	0	2	0	2
1736	5776	2013-05-11	9	16	0	18	0	174	0	1	0	1
1737	6790	2013-05-11	10	52	3	142	12	276	0	1	0	2
1738	6362	2013-05-11	0	3	0	0	0	3	0	0	0	0
1739	6953	2013-05-11	0	6	0	0	0	4	0	0	0	0
1740	6446	2013-05-11	8	12	0	403	3	94	0	1	0	1
1741	6827	2013-05-11	0	17	1	59	2	122	0	0	0	2
1742	6762	2013-05-11	11	47	11	152	18	456	0	0	0	6
1743	4499	2013-05-11	0	5	0	0	0	2	0	0	0	0
1744	4255	2013-05-11	0	1	0	0	0	1	0	0	0	0
1745	6541	2013-05-11	2	12	5	0	0	6	0	1	0	0
1746	6407	2013-05-11	18	25	0	40	16	65	0	1	0	4
1747	6477	2013-05-11	8	9	4	77	11	275	0	0	0	0
1748	6730	2013-05-11	0	8	0	0	0	4	0	0	0	0
1749	6398	2013-05-11	0	1	0	0	0	0	0	0	0	0
1750	6489	2013-05-11	0	0	0	1	0	0	0	0	0	0
1751	6874	2013-05-11	0	3	0	0	0	7	0	0	0	0
1752	5959	2013-05-11	2	3	0	0	0	3	0	0	0	0
1753	4505	2013-05-11	1	6	0	39	3	70	0	1	0	2
1754	6972	2013-05-11	11	11	2	151	61	319	0	0	0	0
1755	6724	2013-05-11	0	3	0	0	0	4	0	0	0	0
1756	6577	2013-05-11	0	0	0	0	0	0	0	0	0	0
1757	6757	2013-05-11	0	4	0	0	0	5	0	0	0	0
1758	6266	2013-05-11	0	0	0	0	2	2	0	0	0	0
1759	6956	2013-05-11	0	0	0	150	7	274	0	0	0	0
1760	6705	2013-05-11	2	12	6	0	0	4	0	1	0	0
1761	6751	2013-05-11	1	9	0	0	0	4	0	0	0	0
1762	6691	2013-05-11	16	27	0	110	14	82	0	1	0	2
1763	6112	2013-05-11	1	2	0	0	0	0	0	0	0	0
1764	6035	2013-05-11	6	39	0	59	15	465	0	3	0	4
1765	6676	2013-05-11	2	8	0	0	0	5	0	0	0	0
1766	5551	2013-05-11	0	1	0	0	0	0	0	0	0	0
1767	6842	2013-05-11	0	6	0	0	0	7	0	0	0	0
1768	6444	2013-05-11	2	7	200	828	2	16	0	0	0	0
1769	6619	2013-05-11	0	4	0	0	0	8	0	0	0	0
1770	6843	2013-05-11	1	7	0	0	0	6	0	0	0	0
1771	6773	2013-05-11	4	43	0	53	6	334	0	1	0	7
1772	6831	2013-05-11	1	12	0	22	1	45	0	2	0	2
1773	6806	2013-05-11	5	20	0	70	4	68	0	0	0	2
1774	6845	2013-05-11	0	2	0	0	0	4	0	0	0	0
1775	6820	2013-05-11	15	37	1	94	5	151	0	0	0	4
1776	6849	2013-05-11	1	4	0	0	0	4	0	0	0	0
1777	6431	2013-05-11	1	12	2	19	4	196	0	0	0	1
1778	6844	2013-05-11	0	5	0	0	0	5	0	0	0	0
1779	6840	2013-05-11	0	3	0	0	0	6	0	0	0	0
1780	6841	2013-05-11	5	18	4	0	1	8	0	0	0	0
1781	6824	2013-05-11	0	8	0	0	0	8	0	0	0	0
1782	4522	2013-05-11	4	15	0	45	1	41	0	1	0	4
1783	6835	2013-05-11	1	5	0	0	1	5	0	0	0	0
1784	6254	2013-05-11	0	2	0	0	0	6	0	0	0	0
1785	6902	2013-05-11	1	7	0	0	0	6	0	0	0	0
1786	6832	2013-05-11	10	40	5	49	7	402	0	1	0	1
1787	6753	2013-05-11	3	30	2	40	11	379	0	1	0	2
1788	6653	2013-05-11	1	8	0	0	0	4	0	0	0	0
1789	6654	2013-05-11	2	7	0	0	0	5	0	0	0	0
1790	6387	2013-05-11	0	4	0	0	0	5	0	0	0	0
1791	6803	2013-05-11	3	11	0	24	1	70	0	0	0	2
1792	6708	2013-05-11	1	5	0	0	0	4	0	0	0	0
1793	6202	2013-05-11	0	3	0	0	0	3	0	0	0	0
1794	6426	2013-05-11	5	9	0	3	3	163	0	1	0	2
1795	6923	2013-05-11	1	8	0	35	0	28	0	2	0	3
1796	6797	2013-05-11	0	5	0	0	0	6	0	0	0	0
1797	3658	2013-05-11	2	8	0	45	0	19	0	0	0	3
1798	6795	2013-05-11	0	4	0	0	0	6	0	0	0	0
1799	6601	2013-05-11	0	4	0	0	0	8	0	0	0	0
1800	6783	2013-05-11	0	2	0	0	0	7	0	0	0	0
1801	6960	2013-05-11	3	4	1	70	11	273	0	0	0	0
1802	6549	2013-05-11	5	6	2	113	4	272	0	0	0	0
1803	6123	2013-05-11	0	1	0	0	0	0	0	0	0	0
1804	6946	2013-05-11	0	3	0	0	0	2	0	0	0	0
1805	6939	2013-05-11	0	8	0	0	0	14	0	0	0	0
1806	6944	2013-05-11	1	4	0	0	0	10	0	0	0	0
1807	6935	2013-05-11	0	5	0	0	1	4	0	1	0	0
1808	6940	2013-05-11	0	6	0	0	0	4	0	0	0	0
1809	6959	2013-05-11	15	15	0	529	30	275	0	0	0	0
1810	4537	2013-05-11	0	1	0	1	0	57	0	0	0	0
1811	6878	2013-05-11	0	2	0	0	0	2	0	1	0	0
1812	6813	2013-05-11	0	2	0	0	0	3	0	0	0	0
1813	6815	2013-05-11	0	2	0	0	0	4	0	0	0	0
1814	6755	2013-05-11	0	11	0	16	1	53	0	0	0	1
1815	6743	2013-05-11	3	14	0	41	0	203	0	2	0	2
1816	6491	2013-05-11	0	1	0	0	0	4	0	0	0	0
1817	6729	2013-05-11	1	10	0	0	0	9	0	0	0	0
1818	6761	2013-05-11	0	3	0	0	0	3	0	0	0	0
1819	6097	2013-05-11	0	5	0	0	0	13	0	0	0	0
1820	6821	2013-05-11	0	14	0	28	16	227	0	1	0	2
1821	6453	2013-05-11	0	3	0	0	0	2	0	0	0	0
1822	6659	2013-05-11	9	32	0	99	25	247	0	1	0	5
1823	5821	2013-05-11	0	2	0	0	0	3	0	0	0	0
1824	6331	2013-05-11	0	1	0	0	0	0	0	0	0	0
1825	6576	2013-05-11	0	4	0	0	0	4	0	0	0	0
1826	6496	2013-05-11	0	4	0	0	0	4	0	0	0	0
1827	4548	2013-05-11	3	7	8	28	1	158	0	1	0	2
1828	6728	2013-05-11	1	5	0	0	0	4	0	0	0	0
1829	6750	2013-05-11	0	6	0	0	0	4	0	0	0	0
1830	6804	2013-05-11	0	1	0	0	0	0	0	0	0	0
1831	6808	2013-05-11	1	12	0	8	1	39	0	1	0	3
1832	6818	2013-05-11	0	3	0	0	0	4	0	0	0	0
1833	6722	2013-05-11	17	26	0	356	12	67	0	0	0	0
1834	6817	2013-05-11	0	5	5	0	0	2	0	0	0	0
1835	6713	2013-05-11	23	34	11	213	3	162	0	1	0	4
1836	6766	2013-05-11	0	3	0	0	0	5	0	0	0	0
1837	5800	2013-05-11	0	2	0	0	0	1	0	0	0	0
1838	6506	2013-05-11	1	3	0	0	1	6	0	0	0	0
1839	6763	2013-05-11	0	6	0	0	0	4	0	0	0	0
1840	6498	2013-05-11	0	3	0	0	0	3	0	0	0	0
1841	6264	2013-05-11	0	6	0	0	0	4	0	0	0	0
1842	6679	2013-05-11	4	33	0	26	0	310	0	1	0	6
1843	6770	2013-05-11	0	3	0	0	0	9	0	0	0	0
1844	6159	2013-05-11	0	1	0	0	0	0	0	0	0	0
1845	6764	2013-05-11	8	35	15	96	7	439	0	1	0	3
1846	6776	2013-05-11	0	4	0	0	0	4	0	0	0	0
1847	6726	2013-05-11	0	4	1	22	0	29	0	0	0	0
1848	5943	2013-05-11	10	11	0	0	2	3	1	1	0	0
1849	6735	2013-05-11	0	5	0	0	0	5	0	0	0	0
1850	6829	2013-05-11	3	25	25	138	6	222	0	0	0	5
1851	5946	2013-05-11	0	3	5	0	0	3	0	0	0	0
1852	6593	2013-05-11	0	6	0	0	0	19	0	0	0	0
1853	6869	2013-05-11	0	4	0	0	0	2	0	0	0	0
1854	4561	2013-05-11	0	0	0	0	0	275	0	0	0	0
1855	6482	2013-05-11	0	0	0	0	0	0	0	0	0	0
1856	6969	2013-05-11	3	4	0	32	10	277	0	0	0	0
1857	6784	2013-05-11	1	18	0	45	2	223	0	2	0	3
1858	6673	2013-05-11	16	21	0	110	5	92	0	0	0	0
1859	6926	2013-05-11	5	18	2	113	7	224	0	1	0	3
1860	6669	2013-05-11	10	38	1	115	9	361	0	1	0	4
1861	6013	2013-05-11	0	2	0	0	0	0	0	0	0	0
1862	6925	2013-05-11	3	9	0	29	4	61	0	1	0	4
1863	6604	2013-05-11	0	5	0	0	0	15	0	0	0	0
1864	6731	2013-05-11	0	6	0	0	0	11	0	0	0	0
1865	6736	2013-05-11	0	10	0	0	0	4	0	0	0	0
1866	6932	2013-05-11	0	5	0	0	0	4	0	0	0	0
1867	6475	2013-05-11	9	9	0	174	62	337	1	1	4	4
1868	6772	2013-05-11	5	14	28	156	9	129	0	0	0	0
1869	6378	2013-05-11	2	5	0	0	0	4	0	0	0	0
1870	6427	2013-05-11	1	8	0	40	6	147	0	1	0	1
1871	6851	2013-05-11	6	25	0	2	0	229	0	1	0	1
1872	6089	2013-05-11	1	12	5	0	0	8	0	1	0	0
1873	5687	2013-05-11	1	8	0	25	1	229	0	1	0	0
1874	6942	2013-05-11	2	10	0	35	0	41	0	0	0	1
1875	4279	2013-05-11	0	3	0	0	0	0	0	0	0	0
1876	5460	2013-05-11	2	3	0	0	0	31	0	0	0	0
1877	6951	2013-05-11	0	0	0	0	0	0	0	0	0	0
1878	6228	2013-05-11	11	25	48	8	49	145	0	4	0	3
1879	6168	2013-05-11	0	2	5	0	0	9	0	1	0	0
1880	5709	2013-05-11	10	19	0	18	9	44	0	0	0	2
1881	6025	2013-05-11	0	1	0	0	0	0	0	0	0	0
1882	6628	2013-05-11	7	8	0	0	0	3	0	1	0	0
1883	6848	2013-05-11	0	5	0	0	1	6	0	0	0	0
1884	6819	2013-05-11	0	1	0	29	0	1	0	0	0	0
1885	6209	2013-05-11	0	0	0	0	0	0	0	0	0	0
1886	4362	2013-05-11	0	2	0	0	0	83	0	1	0	0
1887	6896	2013-05-11	0	4	0	0	0	11	0	1	0	0
1888	6871	2013-05-11	0	2	0	0	0	1	0	0	0	0
1889	6785	2013-05-11	1	4	0	0	0	3	0	0	0	0
1890	6742	2013-05-11	3	13	0	4	0	40	0	1	0	1
1891	6767	2013-05-11	9	24	35	52	6	107	0	1	0	3
1892	6899	2013-05-11	0	3	0	0	0	1	0	0	0	0
1893	6897	2013-05-11	0	4	0	0	0	7	0	0	0	0
1894	6759	2013-05-11	1	6	0	0	0	6	0	0	0	0
1895	6947	2013-05-11	0	2	0	0	0	7	0	0	0	0
1896	6921	2013-05-11	3	14	0	17	2	40	0	0	0	2
1897	6624	2013-05-11	0	3	0	0	0	4	0	0	0	0
1898	6812	2013-05-11	24	65	30	108	24	342	0	1	0	5
1899	6610	2013-05-11	0	0	0	0	0	0	0	0	0	0
1900	6383	2013-05-11	1	6	0	0	0	4	0	0	0	0
1901	4840	2013-05-11	13	20	2	160	1	39	0	1	0	3
1902	5471	2013-05-11	0	1	0	0	0	0	0	0	0	0
1903	6371	2013-05-11	2	2	0	0	0	0	0	0	0	0
1904	6748	2013-05-11	0	17	0	66	4	71	0	0	1	4
1905	6174	2013-05-11	0	3	0	0	0	3	0	0	0	0
1906	6936	2013-05-11	0	4	0	0	0	5	0	0	0	0
1907	6756	2013-05-11	0	29	1	44	0	280	0	0	0	3
1908	6408	2013-05-11	0	4	0	0	0	4	0	0	0	0
1909	6069	2013-05-11	22	23	0	39	4	6	3	3	2	2
1910	6336	2013-05-11	0	2	0	0	1	2	0	0	0	0
1911	6167	2013-05-11	0	2	0	0	0	4	0	0	0	0
1912	6915	2013-05-11	0	4	0	0	0	6	0	0	0	0
1913	6495	2013-05-11	5	10	0	38	0	127	0	1	0	2
1914	6883	2013-05-11	0	2	0	2	0	7	0	0	0	0
1915	6910	2013-05-11	0	7	0	0	0	8	0	0	0	0
1916	5982	2013-05-11	0	0	0	0	0	0	0	0	0	0
1917	6379	2013-05-11	0	2	0	0	0	2	0	0	0	0
1918	6858	2013-05-11	1	20	0	19	0	43	0	0	0	5
1919	6799	2013-05-11	2	10	5	0	0	7	0	0	0	0
1920	6274	2013-05-11	0	1	0	0	0	1	0	0	0	0
1921	6885	2013-05-11	6	27	0	26	6	192	0	1	0	4
1922	6777	2013-05-11	1	3	0	0	0	4	0	0	0	0
1923	6870	2013-05-11	0	4	0	0	0	6	0	0	0	0
1924	6775	2013-05-11	0	3	0	0	0	6	0	0	0	0
1925	6918	2013-05-11	0	4	0	0	0	3	0	0	0	0
1926	6864	2013-05-11	1	19	0	53	5	61	0	0	0	2
1927	6800	2013-05-11	19	26	11	477	14	65	0	0	0	1
1928	6929	2013-05-11	1	30	11	81	7	450	0	4	0	1
1929	6903	2013-05-11	0	7	0	0	0	8	0	0	0	0
1930	6963	2013-05-11	6	6	0	31	3	273	0	0	0	0
1931	6744	2013-05-11	14	38	10	134	19	257	0	2	0	5
1932	6916	2013-05-11	4	36	29	184	11	600	0	1	0	5
1933	6920	2013-05-11	3	9	0	19	1	37	0	0	0	1
1934	6854	2013-05-11	0	1	0	0	0	10	0	0	0	0
1935	6930	2013-05-11	0	5	0	0	0	4	0	0	0	0
1936	6895	2013-05-11	0	9	0	21	0	31	0	0	0	4
1937	6866	2013-05-11	0	6	0	0	0	6	0	0	0	0
1938	6876	2013-05-11	0	6	0	0	0	9	0	1	0	0
1939	6613	2013-05-11	0	12	3	19	3	55	0	1	0	2
1940	6906	2013-05-11	0	2	0	0	0	0	0	0	0	0
1941	6912	2013-05-11	0	2	0	0	0	2	0	0	0	0
1942	6204	2013-05-11	1	13	0	5	0	11	0	1	0	1
1943	6765	2013-05-11	193	226	62	536	23	365	0	2	0	2
1944	6908	2013-05-11	74	154	1	1274	45	526	0	2	0	4
1945	6836	2013-05-11	13	17	0	17	1	10	0	0	0	1
1946	6922	2013-05-11	1	18	0	10	2	65	0	0	0	2
1947	5486	2013-05-11	11	20	19	84	4	19	0	0	0	1
1948	6413	2013-05-11	3	11	0	234	7	210	0	1	0	1
1949	6877	2013-05-11	3	10	0	31	2	69	0	1	0	0
1950	6548	2013-05-11	20	21	4	71	34	270	0	0	0	0
1951	6771	2013-05-11	4	11	5	0	0	8	0	0	0	0
1952	6950	2013-05-11	0	2	0	0	0	2	0	0	0	0
1953	6962	2013-05-11	9	9	11	177	14	14	0	0	0	0
1954	6952	2013-05-11	0	2	0	0	0	6	0	0	0	0
1955	6823	2013-05-11	1	8	0	0	0	7	0	1	0	0
1956	5971	2013-05-11	0	3	0	0	0	7	0	0	0	0
1957	6505	2013-05-11	0	3	0	0	0	3	0	0	0	0
1958	6856	2013-05-11	3	20	0	43	3	311	1	2	0	3
1959	6865	2013-05-11	2	6	0	0	0	8	0	1	0	0
1960	6794	2013-05-11	2	10	0	26	4	58	0	0	0	3
1961	6945	2013-05-11	0	0	0	0	0	1	0	0	0	0
1962	6838	2013-05-11	9	22	0	47	0	143	0	0	0	2
1963	6779	2013-05-11	2	20	0	72	1	59	0	3	1	3
1964	6875	2013-05-11	0	6	0	0	0	6	0	0	0	0
1965	6934	2013-05-11	0	3	0	0	0	9	0	0	0	0
1966	3782	2013-05-11	0	0	0	0	0	1	0	0	0	0
1967	6781	2013-05-11	11	36	15	67	12	295	0	0	0	1
1968	6752	2013-05-11	0	5	0	0	0	3	0	0	0	0
1969	4287	2013-05-11	0	1	0	0	1	2	0	0	0	0
1970	6786	2013-05-11	3	18	0	22	2	61	0	0	0	1
1971	6564	2013-05-11	2	3	0	0	0	3	0	0	0	0
1972	6121	2013-05-11	7	13	0	33	5	27	0	0	1	5
1973	6891	2013-05-11	1	3	0	0	0	1	0	0	0	0
1974	6523	2013-05-11	9	20	12	20	3	88	0	0	0	3
1975	6860	2013-05-11	2	3	0	0	0	5	0	0	0	0
1976	5683	2013-05-11	16	19	0	113	3	100	0	0	0	1
1977	6286	2013-05-11	1	3	0	0	0	3	0	0	0	0
1978	6853	2013-05-11	10	27	4	100	8	136	0	0	0	3
1979	6802	2013-05-11	7	16	0	6	2	76	0	0	0	2
1980	6872	2013-05-11	0	8	0	0	0	9	0	0	0	0
1981	5763	2013-05-11	82	84	0	56	5	152	15	15	9	10
1982	6239	2013-05-11	0	0	0	0	0	0	0	0	0	0
1983	6809	2013-05-11	7	21	0	84	6	57	0	0	0	2
1984	6769	2013-05-11	0	4	0	0	0	3	0	0	0	0
1985	6739	2013-05-11	10	17	721	710	29	250	0	0	0	0
1986	6787	2013-05-11	1	5	0	0	0	6	0	0	0	0
1987	6515	2013-05-11	0	9	0	54	0	114	0	1	0	3
1988	6002	2013-05-11	1	3	0	0	0	8	0	0	0	0
1989	6754	2013-05-11	0	4	0	0	0	3	0	0	0	0
1990	5506	2013-05-11	1	4	0	0	0	0	0	0	0	0
1991	6862	2013-05-11	7	8	0	0	1	3	0	1	0	0
1992	6661	2013-05-11	0	7	0	0	0	4	0	0	0	0
1993	5482	2013-05-11	0	1	0	0	0	0	0	0	0	0
1994	6306	2013-05-11	0	1	0	6	0	3	0	0	0	0
1995	6440	2013-05-11	0	1	0	0	0	3	0	0	0	0
1996	6698	2013-05-11	1	8	0	0	0	13	0	0	0	0
1997	6966	2013-05-11	14	15	1	216	42	272	0	0	0	0
1998	6693	2013-05-11	1	4	0	0	0	5	0	0	0	0
1999	6749	2013-05-11	2	10	6	72	4	237	0	0	0	0
2000	6943	2013-05-11	0	5	0	0	0	4	0	0	0	0
2001	6337	2013-05-11	0	2	0	0	0	1	0	0	0	0
2002	6318	2013-05-11	8	9	0	0	0	3	0	1	0	0
2003	6900	2013-05-11	0	4	0	0	0	3	0	0	0	0
2004	6746	2013-05-11	2	15	0	42	0	216	0	0	0	0
2005	6433	2013-05-11	0	5	0	0	0	5	0	0	0	0
2006	6509	2013-05-11	0	11	0	39	2	277	0	0	0	1
2007	6529	2013-05-11	1	7	0	0	0	9	0	0	0	0
2008	6948	2013-05-11	0	7	0	0	0	7	0	0	0	0
2009	5686	2013-05-11	2	4	0	0	0	1	0	0	0	0
2010	6317	2013-05-11	0	2	0	0	0	0	0	0	0	0
2011	5932	2013-05-11	0	0	0	0	0	0	0	0	0	0
2012	6133	2013-05-11	1	12	0	0	1	10	0	1	0	0
2013	6716	2013-05-11	0	4	0	0	0	5	0	0	0	0
2014	6500	2013-05-11	4	18	0	170	21	145	0	1	0	3
2015	6917	2013-05-11	0	4	0	0	0	3	0	0	0	0
2016	6079	2013-05-11	7	26	0	163	5	229	0	1	0	2
2017	6816	2013-05-11	0	8	0	0	0	7	0	0	0	0
2018	6550	2013-05-11	1	5	0	0	0	3	0	0	0	0
2019	6656	2013-05-11	0	3	0	0	0	2	0	1	0	0
2020	6657	2013-05-11	0	1	0	0	0	2	0	0	0	0
2021	6680	2013-05-11	10	41	2	79	10	367	0	2	0	7
2022	6937	2013-05-11	0	4	0	0	0	1	0	0	0	0
2023	6321	2013-05-11	0	3	0	0	0	2	0	0	0	0
2024	6327	2013-05-11	0	0	0	0	0	0	0	0	0	0
2025	6535	2013-05-11	1	6	0	0	1	6	0	0	0	0
2026	6684	2013-05-11	4	24	0	17	1	189	0	1	1	2
2027	6534	2013-05-11	0	4	0	0	0	2	0	0	0	0
2028	6683	2013-05-11	12	30	2	32	7	353	0	0	0	5
2029	6938	2013-05-11	1	4	0	0	0	3	0	0	0	0
2030	6941	2013-05-11	0	7	0	0	0	2	0	0	0	0
2031	6664	2013-05-11	4	9	4	393	6	175	0	0	0	1
2032	6672	2013-05-11	0	9	0	0	0	1	0	0	0	0
2033	5668	2013-05-11	0	2	0	1	0	41	0	0	0	0
2034	6868	2013-05-11	1	13	0	0	0	6	0	0	0	0
2035	6648	2013-05-11	0	0	0	0	0	0	0	0	0	0
2036	6423	2013-05-11	0	3	0	0	0	3	0	0	0	0
2037	6466	2013-05-11	39	73	0	48	3	210	0	1	0	2
2038	5938	2013-05-11	5	13	0	91	4	111	0	1	1	2
2039	6281	2013-05-11	2	16	0	0	1	3	0	0	0	0
2040	6718	2013-05-11	0	6	0	0	0	1	0	0	0	0
2041	6276	2013-05-11	0	7	0	0	0	5	0	0	0	0
2042	6420	2013-05-11	0	6	0	0	0	3	0	0	0	0
2043	6677	2013-05-11	0	3	0	0	0	3	0	0	0	0
2044	6670	2013-05-11	0	9	0	0	0	7	0	0	0	0
2045	6725	2013-05-11	0	5	0	0	0	5	0	0	0	0
2046	5979	2013-05-11	0	4	0	0	0	4	0	0	0	0
2047	6741	2013-05-11	0	2	0	0	0	3	0	0	0	0
2048	6437	2013-05-11	11	22	178	1292	29	260	0	0	0	2
2049	6658	2013-05-11	0	4	0	0	0	4	0	0	0	0
2050	6171	2013-05-11	0	2	0	0	0	2	0	0	0	0
2051	6857	2013-05-11	11	48	2	262	32	416	1	1	0	4
2052	6685	2013-05-11	0	2	0	0	0	3	0	0	0	0
2053	6615	2013-05-11	3	6	0	0	2	6	0	0	0	0
2054	6518	2013-05-11	1	3	0	0	1	4	0	0	0	0
2055	6429	2013-05-11	0	6	0	0	0	6	0	0	0	0
2056	6924	2013-05-11	0	7	0	0	2	9	0	1	0	0
2057	6462	2013-05-11	25	40	5	543	17	199	0	0	0	1
2058	6913	2013-05-11	1	6	0	0	0	2	0	0	0	0
2059	6522	2013-05-11	2	3	0	0	0	3	0	0	0	0
2060	3764	2013-05-11	0	5	0	6	0	183	0	0	0	0
2061	6324	2013-05-11	9	24	1	174	11	189	0	1	0	2
2062	6778	2013-05-11	4	27	0	96	9	227	0	1	0	2
2063	6907	2013-05-11	0	3	0	0	1	3	0	0	0	0
2064	6928	2013-05-11	7	36	1	127	3	183	0	1	0	2
2065	6179	2013-05-11	0	2	0	0	0	1	0	0	0	0
2066	6863	2013-05-11	0	6	0	0	0	5	0	0	0	0
2067	6732	2013-05-11	0	4	0	0	0	4	0	0	0	0
2068	6633	2013-05-11	0	3	0	0	0	5	0	0	0	0
2069	6965	2013-05-11	0	0	0	34	29	274	0	0	0	0
2070	6737	2013-05-11	0	3	0	0	0	2	0	0	0	0
2071	3536	2013-05-11	0	0	0	1	0	1	0	0	0	0
2072	6964	2013-05-11	0	0	0	0	0	0	0	0	0	0
2073	6927	2013-05-11	7	25	1	51	15	173	0	2	0	4
2074	6719	2013-05-11	0	4	0	0	0	5	0	0	0	0
2075	6531	2013-05-11	0	0	0	0	0	0	0	0	0	0
2076	6641	2013-05-11	0	1	0	4	0	7	0	0	0	2
2077	6955	2013-05-11	0	1	0	36	8	273	0	0	0	0
2078	6715	2013-05-11	1	2	0	0	0	5	0	0	0	0
2079	6811	2013-05-11	19	28	14	326	13	248	0	0	0	0
2080	6563	2013-05-11	8	37	0	206	16	326	0	2	0	3
2081	6557	2013-05-11	6	21	0	31	7	52	0	0	0	4
2082	5782	2013-05-11	163	165	0	205	70	266	15	15	9	10
2083	6714	2013-05-11	0	4	0	0	0	0	0	1	0	0
2084	6830	2013-05-11	7	25	0	47	0	57	0	0	0	4
2085	6833	2013-05-11	0	2	0	0	0	4	0	0	0	0
2086	6791	2013-05-11	0	15	0	19	3	135	0	1	0	2
2087	6914	2013-05-11	21	32	16	121	6	163	0	1	0	2
2088	6881	2013-05-11	8	19	10	40	4	233	0	1	0	2
2089	6422	2013-05-11	1	3	0	0	0	5	0	0	0	0
2090	6890	2013-05-11	0	3	0	0	0	5	0	0	0	0
2091	6961	2013-05-11	7	7	0	91	15	271	0	0	0	0
2092	6733	2013-05-11	0	2	0	0	0	5	0	0	0	0
2093	4673	2013-05-11	1	1	0	14	7	274	0	0	0	0
2094	6517	2013-05-11	0	2	0	0	0	4	0	0	0	0
2095	6904	2013-05-11	0	5	0	0	2	5	0	0	0	0
2096	6882	2013-05-11	0	7	0	0	0	7	0	0	0	0
2097	6682	2013-05-11	0	7	0	0	0	9	0	0	0	0
2098	6706	2013-05-11	0	4	0	0	0	6	0	1	0	0
2099	6711	2013-05-11	4	26	6	58	3	219	0	1	0	5
2100	6578	2013-05-11	1	5	0	0	0	3	0	0	0	0
2101	6312	2013-05-11	1	1	0	0	0	0	0	0	0	0
2102	6879	2013-05-11	1	9	0	0	0	6	0	0	0	0
2103	6888	2013-05-11	0	6	0	0	0	2	0	0	0	0
2104	6798	2013-05-11	0	22	0	48	5	84	0	1	0	3
2105	5801	2013-05-11	1	1	0	0	0	0	0	0	0	0
2106	6339	2013-05-11	0	1	0	0	0	14	0	0	0	0
2107	6740	2013-05-11	0	5	0	0	0	5	0	0	0	0
2108	6694	2013-05-11	12	20	13	132	10	201	0	0	0	1
2109	6260	2013-05-11	1	6	0	0	0	4	0	0	0	0
2110	6889	2013-05-11	0	3	0	0	0	5	0	0	0	0
2111	5996	2013-05-11	1	2	0	0	0	0	0	0	0	0
2112	6348	2013-05-11	1	7	0	0	0	3	0	0	0	0
2113	5997	2013-05-11	0	2	0	0	0	0	0	0	0	0
2114	6861	2013-05-11	0	5	0	0	0	5	0	0	0	0
2115	6438	2013-05-11	0	5	0	0	1	67	0	1	0	2
2116	6789	2013-05-11	2	15	0	46	2	42	0	1	0	2
2117	6347	2013-05-11	0	2	0	0	0	1	0	0	0	0
2118	6822	2013-05-11	0	6	0	0	0	6	0	0	0	0
2119	6675	2013-05-11	0	3	0	0	0	13	0	0	0	0
2120	6269	2013-05-11	0	0	0	0	0	1	0	0	0	0
2121	6270	2013-05-11	0	1	0	0	0	2	0	0	0	0
2122	6834	2013-05-11	0	31	5	26	0	368	0	3	0	2
2123	6662	2013-05-11	0	2	0	0	0	5	0	0	0	0
2124	6153	2013-05-11	0	2	0	0	0	0	0	0	0	0
2125	6081	2013-05-11	1	11	0	46	0	23	0	1	0	1
2126	6850	2013-05-11	9	19	4	42	2	113	0	0	0	0
2127	6008	2013-05-11	0	2	0	0	0	4	0	0	0	0
2128	6010	2013-05-11	0	2	0	0	0	3	0	0	0	0
2129	6479	2013-05-11	0	0	0	0	0	0	0	0	0	0
2130	6901	2013-05-11	0	3	0	0	0	5	0	0	0	0
2131	6030	2013-05-11	10	18	0	44	4	113	0	1	0	3
2132	6745	2013-05-11	0	3	0	0	0	10	0	0	0	0
2133	6887	2013-05-11	1	9	0	0	0	6	0	0	0	0
2134	6620	2013-05-11	0	0	0	0	0	2	0	0	0	0
2135	6405	2013-05-11	4	27	0	24	1	191	0	2	0	4
2136	6886	2013-05-11	0	3	0	0	0	6	0	0	0	0
2137	6374	2013-05-11	0	1	0	0	0	0	0	0	0	0
2138	5754	2013-05-11	1	5	0	0	0	10	0	0	0	0
2139	6695	2013-05-11	0	8	0	0	0	15	0	0	0	0
2140	6968	2013-05-11	0	0	0	0	0	0	0	0	0	0
2141	6474	2013-05-11	4	4	19	108	9	275	0	0	0	0
2142	5905	2013-05-11	0	1	0	0	0	0	0	0	0	0
2143	4698	2013-05-11	0	4	0	0	0	0	0	0	0	0
2144	6663	2013-05-11	4	11	0	0	0	6	0	0	0	0
2145	6671	2013-05-11	1	7	0	0	0	5	0	0	0	0
2146	6707	2013-05-11	0	3	0	0	0	12	0	0	0	0
2147	6488	2013-05-11	0	5	0	0	0	4	0	0	0	0
2148	6674	2013-05-11	0	3	0	0	0	0	0	0	0	0
2149	6104	2013-05-11	0	11	0	0	0	4	0	0	0	0
2150	6681	2013-05-11	0	4	0	0	0	4	0	0	0	0
2151	6970	2013-05-11	0	0	0	0	0	0	0	0	0	0
2152	6476	2013-05-11	20	20	16	97	55	326	1	1	4	4
2153	6971	2013-05-11	0	0	0	0	0	0	0	0	0	0
2154	5954	2013-05-11	0	3	0	0	0	2	0	0	0	0
2155	6655	2013-05-11	13	20	0	47	1	185	0	1	0	2
2156	6686	2013-05-11	4	21	3	81	7	184	0	1	0	2
2157	6402	2013-05-11	3	11	0	17	1	30	0	1	0	1
2158	6884	2013-05-11	0	4	0	0	0	3	0	0	0	0
2159	6837	2013-05-11	3	26	1	121	15	349	0	2	0	4
2160	6290	2013-05-11	0	3	0	0	0	14	0	0	0	0
2161	5973	2013-05-11	1	1	0	0	0	0	0	0	0	0
2162	5676	2013-05-11	14	29	257	129	17	138	0	1	0	1
2163	6780	2013-05-11	11	22	0	94	9	44	0	1	0	2
2164	6616	2013-05-11	0	4	0	0	0	4	0	0	0	0
2165	4712	2013-05-11	0	3	0	6	0	77	0	0	0	0
2166	6933	2013-05-11	0	1	0	0	0	0	0	0	0	0
2167	6846	2013-05-11	0	6	0	0	0	4	0	0	0	0
2168	6825	2013-05-11	6	25	2	69	5	131	0	1	0	3
2169	6294	2013-05-11	0	1	0	0	0	1	0	0	0	0
2170	6555	2013-05-11	0	5	0	0	0	6	0	0	0	0
2171	6826	2013-05-11	1	6	0	125	9	41	0	1	0	3
2172	4440	2013-05-11	10	25	104	6	3	160	0	1	0	6
2173	6792	2013-05-11	1	14	0	75	3	95	0	0	0	2
2174	6788	2013-05-11	2	5	0	0	0	2	0	0	0	0
2175	6768	2013-05-11	0	9	0	0	0	4	0	0	0	0
2176	6958	2013-05-11	0	0	0	0	0	0	0	0	0	0
2177	6807	2013-05-11	0	4	0	0	0	6	0	0	0	0
2178	6805	2013-05-11	0	4	0	0	0	4	0	0	0	0
2179	6967	2013-05-11	1	1	4	82	8	274	0	0	0	0
2180	6394	2013-05-11	0	2	0	0	0	1	0	0	0	0
2181	6572	2013-05-11	0	1	0	0	0	4	0	0	0	0
2182	6478	2013-05-11	0	1	0	26	1	4	0	0	0	0
2183	6484	2013-05-11	0	0	0	59	4	272	0	0	0	0
2184	6747	2013-05-11	0	6	0	0	1	5	0	0	0	0
2185	6367	2013-05-11	16	16	0	115	6	16	3	3	4	4
2186	6709	2013-05-11	1	7	0	0	0	12	0	0	0	0
2187	6238	2013-05-11	0	2	0	0	0	0	0	0	0	0
2188	6855	2013-05-11	9	19	19	121	5	92	0	0	0	1
2189	6710	2013-05-11	1	13	0	0	0	8	0	0	0	0
2190	6796	2013-05-11	0	1	0	0	0	1	0	0	0	0
2191	6894	2013-05-11	0	0	0	0	0	0	0	0	0	0
2192	6512	2013-05-11	4	31	0	156	10	211	0	0	0	3
2193	3822	2013-05-11	0	1	0	0	0	0	0	0	0	0
2194	6738	2013-05-11	0	2	0	0	0	14	0	0	0	0
2195	6957	2013-06-22	2	2	0	16	1	274	0	0	0	0
2196	6026	2013-06-22	0	1	0	0	0	0	0	0	0	0
2197	5540	2013-06-22	0	3	0	0	0	1	0	0	0	0
2198	6758	2013-06-22	9	22	2	39	2	215	0	0	0	5
2199	6859	2013-06-22	1	9	0	12	3	70	0	0	0	3
2200	6852	2013-06-22	1	12	0	0	0	4	0	0	0	0
2201	6585	2013-06-22	1	8	0	0	1	6	0	0	0	0
2202	5857	2013-06-22	14	32	291	311	24	180	0	1	0	1
2203	6349	2013-06-22	0	3	0	0	0	3	0	0	0	0
2204	6782	2013-06-22	0	13	1	25	3	16	1	1	0	1
2205	6931	2013-06-22	1	11	0	25	4	87	0	0	0	3
2206	6508	2013-06-22	0	2	0	0	1	4	0	0	0	0
2207	6439	2013-06-22	2	10	4	35	6	172	0	0	0	0
2208	6905	2013-06-22	5	17	0	99	5	255	1	1	1	2
2209	6608	2013-06-22	7	8	0	0	0	3	0	1	0	0
2210	6565	2013-06-22	0	5	0	0	0	5	0	0	0	0
2211	6760	2013-06-22	1	19	0	33	2	217	0	1	0	3
2212	6660	2013-06-22	0	3	0	0	0	2	0	0	0	0
2213	6793	2013-06-22	0	3	0	0	0	9	0	0	0	0
2214	5336	2013-06-22	0	1	0	0	1	1	0	0	0	0
2215	6545	2013-06-22	0	1	0	0	0	0	0	0	0	0
2216	6712	2013-06-22	13	27	0	44	1	112	0	1	0	4
2217	6898	2013-06-22	0	3	0	0	0	2	0	0	0	0
2218	6828	2013-06-22	1	5	0	33	9	213	0	1	0	1
2219	6954	2013-06-22	6	6	4	70	9	273	0	0	0	0
2220	6665	2013-06-22	2	10	0	0	0	6	0	0	0	0
2221	6575	2013-06-22	0	3	0	0	0	8	0	0	0	0
2222	6090	2013-06-22	0	3	0	0	0	5	0	0	0	0
2223	5981	2013-06-22	0	3	0	0	0	3	0	0	0	0
2224	5988	2013-06-22	0	1	0	0	0	14	0	0	0	0
2225	6566	2013-06-22	0	8	0	0	0	5	0	0	0	0
2226	6667	2013-06-22	0	2	0	0	0	3	0	0	0	0
2227	6386	2013-06-22	2	4	0	0	0	12	0	0	0	0
2228	6880	2013-06-22	0	13	2	29	0	173	0	1	0	2
2229	6689	2013-06-22	0	1	0	0	0	0	0	1	0	0
2230	6814	2013-06-22	0	1	0	0	0	5	0	0	0	2
2231	6720	2013-06-22	9	16	0	53	1	91	0	0	0	2
2232	6063	2013-06-22	0	0	0	0	0	0	0	0	0	0
2233	5948	2013-06-22	0	16	0	41	0	22	0	0	0	1
2234	6148	2013-06-22	11	27	0	91	3	106	0	0	0	2
2235	4445	2013-06-22	1	1	0	0	0	0	0	0	0	0
2236	6095	2013-06-22	0	1	0	0	0	0	0	0	0	0
2237	6702	2013-06-22	0	4	2	28	0	70	0	1	0	2
2238	6302	2013-06-22	4	8	0	0	2	2	0	0	0	0
2239	6199	2013-06-22	0	2	0	0	0	1	0	0	0	0
2240	6692	2013-06-22	6	24	0	343	7	78	0	0	2	5
2241	6721	2013-06-22	2	2	0	20	0	10	0	0	0	1
2242	6703	2013-06-22	0	4	0	0	0	2	0	0	0	0
2243	5644	2013-06-22	0	1	0	3	0	7	0	0	0	1
2244	5930	2013-06-22	0	1	0	0	0	0	0	0	0	0
2245	6704	2013-06-22	0	6	0	0	0	10	0	0	0	0
2246	5347	2013-06-22	0	2	0	0	0	0	0	0	0	0
2247	4634	2013-06-22	3	5	0	0	0	1	0	0	0	0
2248	6801	2013-06-22	0	2	0	0	0	0	0	0	0	0
2249	6717	2013-06-22	2	11	0	38	1	54	0	1	0	3
2250	6690	2013-06-22	18	41	11	281	14	204	0	1	0	1
2251	6525	2013-06-22	0	2	0	0	0	1	0	0	0	0
2252	6701	2013-06-22	0	3	0	0	1	19	0	0	0	0
2253	6697	2013-06-22	0	2	0	0	0	1	0	0	0	0
2254	6810	2013-06-22	0	4	0	0	0	3	0	0	0	0
2255	6696	2013-06-22	0	6	5	0	0	4	0	1	0	0
2256	6700	2013-06-22	15	16	0	30	1	9	3	4	3	3
2257	6727	2013-06-22	0	6	37	165	2	115	0	0	1	2
2258	6375	2013-06-22	0	1	0	4	0	31	0	0	0	0
2259	6699	2013-06-22	19	23	121	977	7	164	0	0	0	2
2260	6688	2013-06-22	25	51	33	270	19	386	0	1	0	4
2261	6552	2013-06-22	1	4	0	0	1	4	0	0	0	0
2262	3377	2013-06-22	0	0	0	0	0	0	0	0	0	1
2263	6678	2013-06-22	3	15	16	32	3	114	0	0	0	3
2264	6235	2013-06-22	0	3	0	0	0	1	0	0	0	0
2265	5691	2013-06-22	0	2	0	0	0	1	0	0	0	0
2266	6469	2013-06-22	0	22	0	29	5	170	0	0	0	0
2267	6451	2013-06-22	2	2	0	1	0	12	0	0	0	0
2268	6031	2013-06-22	4	20	1	9	3	125	0	0	0	3
2269	6911	2013-06-22	0	7	0	0	0	9	0	0	0	0
2270	6893	2013-06-22	0	5	0	0	0	4	0	0	0	0
2271	6919	2013-06-22	10	20	1	67	12	69	0	1	0	1
2272	4603	2013-06-22	2	4	0	56	0	50	0	1	0	1
2273	6949	2013-06-22	0	5	0	0	1	3	0	0	0	0
2274	6687	2013-06-22	0	1	0	0	0	4	0	0	0	0
2275	6353	2013-06-22	31	41	1136	294	10	42	0	0	1	5
2276	6909	2013-06-22	6	17	0	587	10	125	0	1	0	6
2277	6847	2013-06-22	0	4	0	0	0	4	0	1	0	0
2278	6723	2013-06-22	0	14	2	6	0	158	0	1	0	1
2279	6839	2013-06-22	14	25	0	381	10	160	1	1	0	1
2280	6603	2013-06-22	1	4	0	0	1	6	0	0	0	0
2281	6892	2013-06-22	1	3	0	0	0	5	0	0	0	0
2282	6164	2013-06-22	0	3	0	0	1	3	0	0	0	0
2283	6734	2013-06-22	6	25	2	31	14	345	0	2	0	2
2284	5776	2013-06-22	9	16	0	18	0	174	0	1	0	1
2285	6790	2013-06-22	10	52	3	142	12	276	0	1	0	2
2286	6362	2013-06-22	0	3	0	0	0	3	0	0	0	0
2287	6953	2013-06-22	0	6	0	0	0	4	0	0	0	0
2288	6446	2013-06-22	8	12	0	403	3	94	0	1	0	1
2289	6827	2013-06-22	0	17	1	59	2	122	0	0	0	2
2290	6762	2013-06-22	11	47	11	152	18	456	0	0	0	6
2291	4499	2013-06-22	0	5	0	0	0	2	0	0	0	0
2292	4255	2013-06-22	0	1	0	0	0	1	0	0	0	0
2293	6541	2013-06-22	2	12	5	0	0	6	0	1	0	0
2294	6407	2013-06-22	18	25	0	40	16	65	0	1	0	4
2295	6477	2013-06-22	8	9	4	77	11	275	0	0	0	0
2296	6730	2013-06-22	0	8	0	0	0	4	0	0	0	0
2297	6398	2013-06-22	0	1	0	0	0	0	0	0	0	0
2298	6489	2013-06-22	0	0	0	1	0	0	0	0	0	0
2299	6874	2013-06-22	0	3	0	0	0	7	0	0	0	0
2300	5959	2013-06-22	2	3	0	0	0	3	0	0	0	0
2301	4505	2013-06-22	1	6	0	39	3	70	0	1	0	2
2302	6972	2013-06-22	11	11	2	151	61	319	0	0	0	0
2303	6724	2013-06-22	0	3	0	0	0	4	0	0	0	0
2304	6577	2013-06-22	0	0	0	0	0	0	0	0	0	0
2305	6757	2013-06-22	0	4	0	0	0	5	0	0	0	0
2306	6266	2013-06-22	0	0	0	0	2	2	0	0	0	0
2307	6956	2013-06-22	0	0	0	150	7	274	0	0	0	0
2308	6705	2013-06-22	2	12	6	0	0	4	0	1	0	0
2309	6751	2013-06-22	1	9	0	0	0	4	0	0	0	0
2310	6691	2013-06-22	16	27	0	110	14	82	0	1	0	2
2311	6112	2013-06-22	1	2	0	0	0	0	0	0	0	0
2312	6035	2013-06-22	6	39	0	59	15	465	0	3	0	4
2313	6676	2013-06-22	2	8	0	0	0	5	0	0	0	0
2314	5551	2013-06-22	0	1	0	0	0	0	0	0	0	0
2315	6842	2013-06-22	0	6	0	0	0	7	0	0	0	0
2316	6444	2013-06-22	2	7	200	828	2	16	0	0	0	0
2317	6619	2013-06-22	0	4	0	0	0	8	0	0	0	0
2318	6843	2013-06-22	1	7	0	0	0	6	0	0	0	0
2319	6773	2013-06-22	4	43	0	53	6	334	0	1	0	7
2320	6831	2013-06-22	1	12	0	22	1	45	0	2	0	2
2321	6806	2013-06-22	5	20	0	70	4	68	0	0	0	2
2322	6845	2013-06-22	0	2	0	0	0	4	0	0	0	0
2323	6820	2013-06-22	15	37	1	94	5	151	0	0	0	4
2324	6849	2013-06-22	1	4	0	0	0	4	0	0	0	0
2325	6431	2013-06-22	1	12	2	19	4	196	0	0	0	1
2326	6844	2013-06-22	0	5	0	0	0	5	0	0	0	0
2327	6840	2013-06-22	0	3	0	0	0	6	0	0	0	0
2328	6841	2013-06-22	5	18	4	0	1	8	0	0	0	0
2329	6824	2013-06-22	0	8	0	0	0	8	0	0	0	0
2330	4522	2013-06-22	4	15	0	45	1	41	0	1	0	4
2331	6835	2013-06-22	1	5	0	0	1	5	0	0	0	0
2332	6254	2013-06-22	0	2	0	0	0	6	0	0	0	0
2333	6902	2013-06-22	1	7	0	0	0	6	0	0	0	0
2334	6832	2013-06-22	10	40	5	49	7	402	0	1	0	1
2335	6753	2013-06-22	3	30	2	40	11	379	0	1	0	2
2336	6653	2013-06-22	1	8	0	0	0	4	0	0	0	0
2337	6654	2013-06-22	2	7	0	0	0	5	0	0	0	0
2338	6387	2013-06-22	0	4	0	0	0	5	0	0	0	0
2339	6803	2013-06-22	3	11	0	24	1	70	0	0	0	2
2340	6708	2013-06-22	1	5	0	0	0	4	0	0	0	0
2341	6202	2013-06-22	0	3	0	0	0	3	0	0	0	0
2342	6426	2013-06-22	5	9	0	3	3	163	0	1	0	2
2343	6923	2013-06-22	1	8	0	35	0	28	0	2	0	3
2344	6797	2013-06-22	0	5	0	0	0	6	0	0	0	0
2345	3658	2013-06-22	2	8	0	45	0	19	0	0	0	3
2346	6795	2013-06-22	0	4	0	0	0	6	0	0	0	0
2347	6601	2013-06-22	0	4	0	0	0	8	0	0	0	0
2348	6783	2013-06-22	0	2	0	0	0	7	0	0	0	0
2349	6960	2013-06-22	3	4	1	70	11	273	0	0	0	0
2350	6549	2013-06-22	5	6	2	113	4	272	0	0	0	0
2351	6123	2013-06-22	0	1	0	0	0	0	0	0	0	0
2352	6946	2013-06-22	0	3	0	0	0	2	0	0	0	0
2353	6939	2013-06-22	0	8	0	0	0	14	0	0	0	0
2354	6944	2013-06-22	1	4	0	0	0	10	0	0	0	0
2355	6935	2013-06-22	0	5	0	0	1	4	0	1	0	0
2356	6940	2013-06-22	0	6	0	0	0	4	0	0	0	0
2357	6959	2013-06-22	15	15	0	529	30	275	0	0	0	0
2358	4537	2013-06-22	0	1	0	1	0	57	0	0	0	0
2359	6878	2013-06-22	0	2	0	0	0	2	0	1	0	0
2360	6813	2013-06-22	0	2	0	0	0	3	0	0	0	0
2361	6815	2013-06-22	0	2	0	0	0	4	0	0	0	0
2362	6755	2013-06-22	0	11	0	16	1	53	0	0	0	1
2363	6743	2013-06-22	3	14	0	41	0	203	0	2	0	2
2364	6491	2013-06-22	0	1	0	0	0	4	0	0	0	0
2365	6729	2013-06-22	1	10	0	0	0	9	0	0	0	0
2366	6761	2013-06-22	0	3	0	0	0	3	0	0	0	0
2367	6097	2013-06-22	0	5	0	0	0	13	0	0	0	0
2368	6821	2013-06-22	0	14	0	28	16	227	0	1	0	2
2369	6453	2013-06-22	0	3	0	0	0	2	0	0	0	0
2370	6659	2013-06-22	9	32	0	99	25	247	0	1	0	5
2371	5821	2013-06-22	0	2	0	0	0	3	0	0	0	0
2372	6331	2013-06-22	0	1	0	0	0	0	0	0	0	0
2373	6576	2013-06-22	0	4	0	0	0	4	0	0	0	0
2374	6496	2013-06-22	0	4	0	0	0	4	0	0	0	0
2375	4548	2013-06-22	3	7	8	28	1	158	0	1	0	2
2376	6728	2013-06-22	1	5	0	0	0	4	0	0	0	0
2377	6750	2013-06-22	0	6	0	0	0	4	0	0	0	0
2378	6804	2013-06-22	0	1	0	0	0	0	0	0	0	0
2379	6808	2013-06-22	1	12	0	8	1	39	0	1	0	3
2380	6818	2013-06-22	0	3	0	0	0	4	0	0	0	0
2381	6722	2013-06-22	17	26	0	356	12	67	0	0	0	0
2382	6817	2013-06-22	0	5	5	0	0	2	0	0	0	0
2383	6713	2013-06-22	23	34	11	213	3	162	0	1	0	4
2384	6766	2013-06-22	0	3	0	0	0	5	0	0	0	0
2385	5800	2013-06-22	0	2	0	0	0	1	0	0	0	0
2386	6506	2013-06-22	1	3	0	0	1	6	0	0	0	0
2387	6763	2013-06-22	0	6	0	0	0	4	0	0	0	0
2388	6498	2013-06-22	0	3	0	0	0	3	0	0	0	0
2389	6264	2013-06-22	0	6	0	0	0	4	0	0	0	0
2390	6679	2013-06-22	4	33	0	26	0	310	0	1	0	6
2391	6770	2013-06-22	0	3	0	0	0	9	0	0	0	0
2392	6159	2013-06-22	0	1	0	0	0	0	0	0	0	0
2393	6764	2013-06-22	8	35	15	96	7	439	0	1	0	3
2394	6776	2013-06-22	0	4	0	0	0	4	0	0	0	0
2395	6726	2013-06-22	0	4	1	22	0	29	0	0	0	0
2396	5943	2013-06-22	10	11	0	0	2	3	1	1	0	0
2397	6735	2013-06-22	0	5	0	0	0	5	0	0	0	0
2398	6829	2013-06-22	3	25	25	138	6	222	0	0	0	5
2399	5946	2013-06-22	0	3	5	0	0	3	0	0	0	0
2400	6593	2013-06-22	0	6	0	0	0	19	0	0	0	0
2401	6869	2013-06-22	0	4	0	0	0	2	0	0	0	0
2402	4561	2013-06-22	0	0	0	0	0	275	0	0	0	0
2403	6482	2013-06-22	0	0	0	0	0	0	0	0	0	0
2404	6969	2013-06-22	3	4	0	32	10	277	0	0	0	0
2405	6784	2013-06-22	1	18	0	45	2	223	0	2	0	3
2406	6673	2013-06-22	16	21	0	110	5	92	0	0	0	0
2407	6926	2013-06-22	5	18	2	113	7	224	0	1	0	3
2408	6669	2013-06-22	10	38	1	115	9	361	0	1	0	4
2409	6013	2013-06-22	0	2	0	0	0	0	0	0	0	0
2410	6925	2013-06-22	3	9	0	29	4	61	0	1	0	4
2411	6604	2013-06-22	0	5	0	0	0	15	0	0	0	0
2412	6731	2013-06-22	0	6	0	0	0	11	0	0	0	0
2413	6736	2013-06-22	0	10	0	0	0	4	0	0	0	0
2414	6932	2013-06-22	0	5	0	0	0	4	0	0	0	0
2415	6475	2013-06-22	9	9	0	174	62	337	1	1	4	4
2416	6772	2013-06-22	5	14	28	156	9	129	0	0	0	0
2417	6378	2013-06-22	2	5	0	0	0	4	0	0	0	0
2418	6427	2013-06-22	1	8	0	40	6	147	0	1	0	1
2419	6851	2013-06-22	6	25	0	2	0	229	0	1	0	1
2420	6089	2013-06-22	1	12	5	0	0	8	0	1	0	0
2421	5687	2013-06-22	1	8	0	25	1	229	0	1	0	0
2422	6942	2013-06-22	2	10	0	35	0	41	0	0	0	1
2423	4279	2013-06-22	0	3	0	0	0	0	0	0	0	0
2424	5460	2013-06-22	2	3	0	0	0	31	0	0	0	0
2425	6951	2013-06-22	0	0	0	0	0	0	0	0	0	0
2426	6228	2013-06-22	11	25	48	8	49	145	0	4	0	3
2427	6168	2013-06-22	0	2	5	0	0	9	0	1	0	0
2428	5709	2013-06-22	10	19	0	18	9	44	0	0	0	2
2429	6025	2013-06-22	0	1	0	0	0	0	0	0	0	0
2430	6628	2013-06-22	7	8	0	0	0	3	0	1	0	0
2431	6848	2013-06-22	0	5	0	0	1	6	0	0	0	0
2432	6819	2013-06-22	0	1	0	29	0	1	0	0	0	0
2433	6209	2013-06-22	0	0	0	0	0	0	0	0	0	0
2434	4362	2013-06-22	0	2	0	0	0	83	0	1	0	0
2435	6896	2013-06-22	0	4	0	0	0	11	0	1	0	0
2436	6871	2013-06-22	0	2	0	0	0	1	0	0	0	0
2437	6785	2013-06-22	1	4	0	0	0	3	0	0	0	0
2438	6742	2013-06-22	3	13	0	4	0	40	0	1	0	1
2439	6767	2013-06-22	9	24	35	52	6	107	0	1	0	3
2440	6899	2013-06-22	0	3	0	0	0	1	0	0	0	0
2441	6897	2013-06-22	0	4	0	0	0	7	0	0	0	0
2442	6759	2013-06-22	1	6	0	0	0	6	0	0	0	0
2443	6947	2013-06-22	0	2	0	0	0	7	0	0	0	0
2444	6921	2013-06-22	3	14	0	17	2	40	0	0	0	2
2445	6624	2013-06-22	0	3	0	0	0	4	0	0	0	0
2446	6812	2013-06-22	24	65	30	108	24	342	0	1	0	5
2447	6610	2013-06-22	0	0	0	0	0	0	0	0	0	0
2448	6383	2013-06-22	1	6	0	0	0	4	0	0	0	0
2449	4840	2013-06-22	13	20	2	160	1	39	0	1	0	3
2450	5471	2013-06-22	0	1	0	0	0	0	0	0	0	0
2451	6371	2013-06-22	2	2	0	0	0	0	0	0	0	0
2452	6748	2013-06-22	0	17	0	66	4	71	0	0	1	4
2453	6174	2013-06-22	0	3	0	0	0	3	0	0	0	0
2454	6936	2013-06-22	0	4	0	0	0	5	0	0	0	0
2455	6756	2013-06-22	0	29	1	44	0	280	0	0	0	3
2456	6408	2013-06-22	0	4	0	0	0	4	0	0	0	0
2457	6069	2013-06-22	22	23	0	39	4	6	3	3	2	2
2458	6336	2013-06-22	0	2	0	0	1	2	0	0	0	0
2459	6167	2013-06-22	0	2	0	0	0	4	0	0	0	0
2460	6915	2013-06-22	0	4	0	0	0	6	0	0	0	0
2461	6495	2013-06-22	5	10	0	38	0	127	0	1	0	2
2462	6883	2013-06-22	0	2	0	2	0	7	0	0	0	0
2463	6910	2013-06-22	0	7	0	0	0	8	0	0	0	0
2464	5982	2013-06-22	0	0	0	0	0	0	0	0	0	0
2465	6379	2013-06-22	0	2	0	0	0	2	0	0	0	0
2466	6858	2013-06-22	1	20	0	19	0	43	0	0	0	5
2467	6799	2013-06-22	2	10	5	0	0	7	0	0	0	0
2468	6274	2013-06-22	0	1	0	0	0	1	0	0	0	0
2469	6885	2013-06-22	6	27	0	26	6	192	0	1	0	4
2470	6777	2013-06-22	1	3	0	0	0	4	0	0	0	0
2471	6870	2013-06-22	0	4	0	0	0	6	0	0	0	0
2472	6775	2013-06-22	0	3	0	0	0	6	0	0	0	0
2473	6918	2013-06-22	0	4	0	0	0	3	0	0	0	0
2474	6864	2013-06-22	1	19	0	53	5	61	0	0	0	2
2475	6800	2013-06-22	19	26	11	477	14	65	0	0	0	1
2476	6929	2013-06-22	1	30	11	81	7	450	0	4	0	1
2477	6903	2013-06-22	0	7	0	0	0	8	0	0	0	0
2478	6963	2013-06-22	6	6	0	31	3	273	0	0	0	0
2479	6744	2013-06-22	14	38	10	134	19	257	0	2	0	5
2480	6916	2013-06-22	4	36	29	184	11	600	0	1	0	5
2481	6920	2013-06-22	3	9	0	19	1	37	0	0	0	1
2482	6854	2013-06-22	0	1	0	0	0	10	0	0	0	0
2483	6930	2013-06-22	0	5	0	0	0	4	0	0	0	0
2484	6895	2013-06-22	0	9	0	21	0	31	0	0	0	4
2485	6866	2013-06-22	0	6	0	0	0	6	0	0	0	0
2486	6876	2013-06-22	0	6	0	0	0	9	0	1	0	0
2487	6613	2013-06-22	0	12	3	19	3	55	0	1	0	2
2488	6906	2013-06-22	0	2	0	0	0	0	0	0	0	0
2489	6912	2013-06-22	0	2	0	0	0	2	0	0	0	0
2490	6204	2013-06-22	1	13	0	5	0	11	0	1	0	1
2491	6765	2013-06-22	193	226	62	536	23	365	0	2	0	2
2492	6908	2013-06-22	74	154	1	1274	45	526	0	2	0	4
2493	6836	2013-06-22	13	17	0	17	1	10	0	0	0	1
2494	6922	2013-06-22	1	18	0	10	2	65	0	0	0	2
2495	5486	2013-06-22	11	20	19	84	4	19	0	0	0	1
2496	6413	2013-06-22	3	11	0	234	7	210	0	1	0	1
2497	6877	2013-06-22	3	10	0	31	2	69	0	1	0	0
2498	6548	2013-06-22	20	21	4	71	34	270	0	0	0	0
2499	6771	2013-06-22	4	11	5	0	0	8	0	0	0	0
2500	6950	2013-06-22	0	2	0	0	0	2	0	0	0	0
2501	6962	2013-06-22	9	9	11	177	14	14	0	0	0	0
2502	6952	2013-06-22	0	2	0	0	0	6	0	0	0	0
2503	6823	2013-06-22	1	8	0	0	0	7	0	1	0	0
2504	5971	2013-06-22	0	3	0	0	0	7	0	0	0	0
2505	6505	2013-06-22	0	3	0	0	0	3	0	0	0	0
2506	6856	2013-06-22	3	20	0	43	3	311	1	2	0	3
2507	6865	2013-06-22	2	6	0	0	0	8	0	1	0	0
2508	6794	2013-06-22	2	10	0	26	4	58	0	0	0	3
2509	6945	2013-06-22	0	0	0	0	0	1	0	0	0	0
2510	6838	2013-06-22	9	22	0	47	0	143	0	0	0	2
2511	6779	2013-06-22	2	20	0	72	1	59	0	3	1	3
2512	6875	2013-06-22	0	6	0	0	0	6	0	0	0	0
2513	6934	2013-06-22	0	3	0	0	0	9	0	0	0	0
2514	3782	2013-06-22	0	0	0	0	0	1	0	0	0	0
2515	6781	2013-06-22	11	36	15	67	12	295	0	0	0	1
2516	6752	2013-06-22	0	5	0	0	0	3	0	0	0	0
2517	4287	2013-06-22	0	1	0	0	1	2	0	0	0	0
2518	6786	2013-06-22	3	18	0	22	2	61	0	0	0	1
2519	6564	2013-06-22	2	3	0	0	0	3	0	0	0	0
2520	6121	2013-06-22	7	13	0	33	5	27	0	0	1	5
2521	6891	2013-06-22	1	3	0	0	0	1	0	0	0	0
2522	6523	2013-06-22	9	20	12	20	3	88	0	0	0	3
2523	6860	2013-06-22	2	3	0	0	0	5	0	0	0	0
2524	5683	2013-06-22	16	19	0	113	3	100	0	0	0	1
2525	6286	2013-06-22	1	3	0	0	0	3	0	0	0	0
2526	6853	2013-06-22	10	27	4	100	8	136	0	0	0	3
2527	6802	2013-06-22	7	16	0	6	2	76	0	0	0	2
2528	6872	2013-06-22	0	8	0	0	0	9	0	0	0	0
2529	5763	2013-06-22	82	84	0	56	5	152	15	15	9	10
2530	6239	2013-06-22	0	0	0	0	0	0	0	0	0	0
2531	6809	2013-06-22	7	21	0	84	6	57	0	0	0	2
2532	6769	2013-06-22	0	4	0	0	0	3	0	0	0	0
2533	6739	2013-06-22	10	17	721	710	29	250	0	0	0	0
2534	6787	2013-06-22	1	5	0	0	0	6	0	0	0	0
2535	6515	2013-06-22	0	9	0	54	0	114	0	1	0	3
2536	6002	2013-06-22	1	3	0	0	0	8	0	0	0	0
2537	6754	2013-06-22	0	4	0	0	0	3	0	0	0	0
2538	5506	2013-06-22	1	4	0	0	0	0	0	0	0	0
2539	6862	2013-06-22	7	8	0	0	1	3	0	1	0	0
2540	6661	2013-06-22	0	7	0	0	0	4	0	0	0	0
2541	5482	2013-06-22	0	1	0	0	0	0	0	0	0	0
2542	6306	2013-06-22	0	1	0	6	0	3	0	0	0	0
2543	6440	2013-06-22	0	1	0	0	0	3	0	0	0	0
2544	6698	2013-06-22	1	8	0	0	0	13	0	0	0	0
2545	6966	2013-06-22	14	15	1	216	42	272	0	0	0	0
2546	6693	2013-06-22	1	4	0	0	0	5	0	0	0	0
2547	6749	2013-06-22	2	10	6	72	4	237	0	0	0	0
2548	6943	2013-06-22	0	5	0	0	0	4	0	0	0	0
2549	6337	2013-06-22	0	2	0	0	0	1	0	0	0	0
2550	6318	2013-06-22	8	9	0	0	0	3	0	1	0	0
2551	6900	2013-06-22	0	4	0	0	0	3	0	0	0	0
2552	6746	2013-06-22	2	15	0	42	0	216	0	0	0	0
2553	6433	2013-06-22	0	5	0	0	0	5	0	0	0	0
2554	6509	2013-06-22	0	11	0	39	2	277	0	0	0	1
2555	6529	2013-06-22	1	7	0	0	0	9	0	0	0	0
2556	6948	2013-06-22	0	7	0	0	0	7	0	0	0	0
2557	5686	2013-06-22	2	4	0	0	0	1	0	0	0	0
2558	6317	2013-06-22	0	2	0	0	0	0	0	0	0	0
2559	5932	2013-06-22	0	0	0	0	0	0	0	0	0	0
2560	6133	2013-06-22	1	12	0	0	1	10	0	1	0	0
2561	6716	2013-06-22	0	4	0	0	0	5	0	0	0	0
2562	6500	2013-06-22	4	18	0	170	21	145	0	1	0	3
2563	6917	2013-06-22	0	4	0	0	0	3	0	0	0	0
2564	6079	2013-06-22	7	26	0	163	5	229	0	1	0	2
2565	6816	2013-06-22	0	8	0	0	0	7	0	0	0	0
2566	6550	2013-06-22	1	5	0	0	0	3	0	0	0	0
2567	6656	2013-06-22	0	3	0	0	0	2	0	1	0	0
2568	6657	2013-06-22	0	1	0	0	0	2	0	0	0	0
2569	6680	2013-06-22	10	41	2	79	10	367	0	2	0	7
2570	6937	2013-06-22	0	4	0	0	0	1	0	0	0	0
2571	6321	2013-06-22	0	3	0	0	0	2	0	0	0	0
2572	6327	2013-06-22	0	0	0	0	0	0	0	0	0	0
2573	6535	2013-06-22	1	6	0	0	1	6	0	0	0	0
2574	6684	2013-06-22	4	24	0	17	1	189	0	1	1	2
2575	6534	2013-06-22	0	4	0	0	0	2	0	0	0	0
2576	6683	2013-06-22	12	30	2	32	7	353	0	0	0	5
2577	6938	2013-06-22	1	4	0	0	0	3	0	0	0	0
2578	6941	2013-06-22	0	7	0	0	0	2	0	0	0	0
2579	6664	2013-06-22	4	9	4	393	6	175	0	0	0	1
2580	6672	2013-06-22	0	9	0	0	0	1	0	0	0	0
2581	5668	2013-06-22	0	2	0	1	0	41	0	0	0	0
2582	6868	2013-06-22	1	13	0	0	0	6	0	0	0	0
2583	6648	2013-06-22	0	0	0	0	0	0	0	0	0	0
2584	6423	2013-06-22	0	3	0	0	0	3	0	0	0	0
2585	6466	2013-06-22	39	73	0	48	3	210	0	1	0	2
2586	5938	2013-06-22	5	13	0	91	4	111	0	1	1	2
2587	6281	2013-06-22	2	16	0	0	1	3	0	0	0	0
2588	6718	2013-06-22	0	6	0	0	0	1	0	0	0	0
2589	6276	2013-06-22	0	7	0	0	0	5	0	0	0	0
2590	6420	2013-06-22	0	6	0	0	0	3	0	0	0	0
2591	6677	2013-06-22	0	3	0	0	0	3	0	0	0	0
2592	6670	2013-06-22	0	9	0	0	0	7	0	0	0	0
2593	6725	2013-06-22	0	5	0	0	0	5	0	0	0	0
2594	5979	2013-06-22	0	4	0	0	0	4	0	0	0	0
2595	6741	2013-06-22	0	2	0	0	0	3	0	0	0	0
2596	6437	2013-06-22	11	22	178	1292	29	260	0	0	0	2
2597	6658	2013-06-22	0	4	0	0	0	4	0	0	0	0
2598	6171	2013-06-22	0	2	0	0	0	2	0	0	0	0
2599	6857	2013-06-22	11	48	2	262	32	416	1	1	0	4
2600	6685	2013-06-22	0	2	0	0	0	3	0	0	0	0
2601	6615	2013-06-22	3	6	0	0	2	6	0	0	0	0
2602	6518	2013-06-22	1	3	0	0	1	4	0	0	0	0
2603	6429	2013-06-22	0	6	0	0	0	6	0	0	0	0
2604	6924	2013-06-22	0	7	0	0	2	9	0	1	0	0
2605	6462	2013-06-22	25	40	5	543	17	199	0	0	0	1
2606	6913	2013-06-22	1	6	0	0	0	2	0	0	0	0
2607	6522	2013-06-22	2	3	0	0	0	3	0	0	0	0
2608	3764	2013-06-22	0	5	0	6	0	183	0	0	0	0
2609	6324	2013-06-22	9	24	1	174	11	189	0	1	0	2
2610	6778	2013-06-22	4	27	0	96	9	227	0	1	0	2
2611	6907	2013-06-22	0	3	0	0	1	3	0	0	0	0
2612	6928	2013-06-22	7	36	1	127	3	183	0	1	0	2
2613	6179	2013-06-22	0	2	0	0	0	1	0	0	0	0
2614	6863	2013-06-22	0	6	0	0	0	5	0	0	0	0
2615	6732	2013-06-22	0	4	0	0	0	4	0	0	0	0
2616	6633	2013-06-22	0	3	0	0	0	5	0	0	0	0
2617	6965	2013-06-22	0	0	0	34	29	274	0	0	0	0
2618	6737	2013-06-22	0	3	0	0	0	2	0	0	0	0
2619	3536	2013-06-22	0	0	0	1	0	1	0	0	0	0
2620	6964	2013-06-22	0	0	0	0	0	0	0	0	0	0
2621	6927	2013-06-22	7	25	1	51	15	173	0	2	0	4
2622	6719	2013-06-22	0	4	0	0	0	5	0	0	0	0
2623	6531	2013-06-22	0	0	0	0	0	0	0	0	0	0
2624	6641	2013-06-22	0	1	0	4	0	7	0	0	0	2
2625	6955	2013-06-22	0	1	0	36	8	273	0	0	0	0
2626	6715	2013-06-22	1	2	0	0	0	5	0	0	0	0
2627	6811	2013-06-22	19	28	14	326	13	248	0	0	0	0
2628	6563	2013-06-22	8	37	0	206	16	326	0	2	0	3
2629	6557	2013-06-22	6	21	0	31	7	52	0	0	0	4
2630	5782	2013-06-22	163	165	0	205	70	266	15	15	9	10
2631	6714	2013-06-22	0	4	0	0	0	0	0	1	0	0
2632	6830	2013-06-22	7	25	0	47	0	57	0	0	0	4
2633	6833	2013-06-22	0	2	0	0	0	4	0	0	0	0
2634	6791	2013-06-22	0	15	0	19	3	135	0	1	0	2
2635	6914	2013-06-22	21	32	16	121	6	163	0	1	0	2
2636	6881	2013-06-22	8	19	10	40	4	233	0	1	0	2
2637	6422	2013-06-22	1	3	0	0	0	5	0	0	0	0
2638	6890	2013-06-22	0	3	0	0	0	5	0	0	0	0
2639	6961	2013-06-22	7	7	0	91	15	271	0	0	0	0
2640	6733	2013-06-22	0	2	0	0	0	5	0	0	0	0
2641	4673	2013-06-22	1	1	0	14	7	274	0	0	0	0
2642	6517	2013-06-22	0	2	0	0	0	4	0	0	0	0
2643	6904	2013-06-22	0	5	0	0	2	5	0	0	0	0
2644	6882	2013-06-22	0	7	0	0	0	7	0	0	0	0
2645	6682	2013-06-22	0	7	0	0	0	9	0	0	0	0
2646	6706	2013-06-22	0	4	0	0	0	6	0	1	0	0
2647	6711	2013-06-22	4	26	6	58	3	219	0	1	0	5
2648	6578	2013-06-22	1	5	0	0	0	3	0	0	0	0
2649	6312	2013-06-22	1	1	0	0	0	0	0	0	0	0
2650	6879	2013-06-22	1	9	0	0	0	6	0	0	0	0
2651	6888	2013-06-22	0	6	0	0	0	2	0	0	0	0
2652	6798	2013-06-22	0	22	0	48	5	84	0	1	0	3
2653	5801	2013-06-22	1	1	0	0	0	0	0	0	0	0
2654	6339	2013-06-22	0	1	0	0	0	14	0	0	0	0
2655	6740	2013-06-22	0	5	0	0	0	5	0	0	0	0
2656	6694	2013-06-22	12	20	13	132	10	201	0	0	0	1
2657	6260	2013-06-22	1	6	0	0	0	4	0	0	0	0
2658	6889	2013-06-22	0	3	0	0	0	5	0	0	0	0
2659	5996	2013-06-22	1	2	0	0	0	0	0	0	0	0
2660	6348	2013-06-22	1	7	0	0	0	3	0	0	0	0
2661	5997	2013-06-22	0	2	0	0	0	0	0	0	0	0
2662	6861	2013-06-22	0	5	0	0	0	5	0	0	0	0
2663	6438	2013-06-22	0	5	0	0	1	67	0	1	0	2
2664	6789	2013-06-22	2	15	0	46	2	42	0	1	0	2
2665	6347	2013-06-22	0	2	0	0	0	1	0	0	0	0
2666	6822	2013-06-22	0	6	0	0	0	6	0	0	0	0
2667	6675	2013-06-22	0	3	0	0	0	13	0	0	0	0
2668	6269	2013-06-22	0	0	0	0	0	1	0	0	0	0
2669	6270	2013-06-22	0	1	0	0	0	2	0	0	0	0
2670	6834	2013-06-22	0	31	5	26	0	368	0	3	0	2
2671	6662	2013-06-22	0	2	0	0	0	5	0	0	0	0
2672	6153	2013-06-22	0	2	0	0	0	0	0	0	0	0
2673	6081	2013-06-22	1	11	0	46	0	23	0	1	0	1
2674	6850	2013-06-22	9	19	4	42	2	113	0	0	0	0
2675	6008	2013-06-22	0	2	0	0	0	4	0	0	0	0
2676	6010	2013-06-22	0	2	0	0	0	3	0	0	0	0
2677	6479	2013-06-22	0	0	0	0	0	0	0	0	0	0
2678	6901	2013-06-22	0	3	0	0	0	5	0	0	0	0
2679	6030	2013-06-22	10	18	0	44	4	113	0	1	0	3
2680	6745	2013-06-22	0	3	0	0	0	10	0	0	0	0
2681	6887	2013-06-22	1	9	0	0	0	6	0	0	0	0
2682	6620	2013-06-22	0	0	0	0	0	2	0	0	0	0
2683	6405	2013-06-22	4	27	0	24	1	191	0	2	0	4
2684	6886	2013-06-22	0	3	0	0	0	6	0	0	0	0
2685	6374	2013-06-22	0	1	0	0	0	0	0	0	0	0
2686	5754	2013-06-22	1	5	0	0	0	10	0	0	0	0
2687	6695	2013-06-22	0	8	0	0	0	15	0	0	0	0
2688	6968	2013-06-22	0	0	0	0	0	0	0	0	0	0
2689	6474	2013-06-22	4	4	19	108	9	275	0	0	0	0
2690	5905	2013-06-22	0	1	0	0	0	0	0	0	0	0
2691	4698	2013-06-22	0	4	0	0	0	0	0	0	0	0
2692	6663	2013-06-22	4	11	0	0	0	6	0	0	0	0
2693	6671	2013-06-22	1	7	0	0	0	5	0	0	0	0
2694	6707	2013-06-22	0	3	0	0	0	12	0	0	0	0
2695	6488	2013-06-22	0	5	0	0	0	4	0	0	0	0
2696	6674	2013-06-22	0	3	0	0	0	0	0	0	0	0
2697	6104	2013-06-22	0	11	0	0	0	4	0	0	0	0
2698	6681	2013-06-22	0	4	0	0	0	4	0	0	0	0
2699	6970	2013-06-22	0	0	0	0	0	0	0	0	0	0
2700	6476	2013-06-22	20	20	16	97	55	326	1	1	4	4
2701	6971	2013-06-22	0	0	0	0	0	0	0	0	0	0
2702	5954	2013-06-22	0	3	0	0	0	2	0	0	0	0
2703	6655	2013-06-22	13	20	0	47	1	185	0	1	0	2
2704	6686	2013-06-22	4	21	3	81	7	184	0	1	0	2
2705	6402	2013-06-22	3	11	0	17	1	30	0	1	0	1
2706	6884	2013-06-22	0	4	0	0	0	3	0	0	0	0
2707	6837	2013-06-22	3	26	1	121	15	349	0	2	0	4
2708	6290	2013-06-22	0	3	0	0	0	14	0	0	0	0
2709	5973	2013-06-22	1	1	0	0	0	0	0	0	0	0
2710	5676	2013-06-22	14	29	257	129	17	138	0	1	0	1
2711	6780	2013-06-22	11	22	0	94	9	44	0	1	0	2
2712	6616	2013-06-22	0	4	0	0	0	4	0	0	0	0
2713	4712	2013-06-22	0	3	0	6	0	77	0	0	0	0
2714	6933	2013-06-22	0	1	0	0	0	0	0	0	0	0
2715	6846	2013-06-22	0	6	0	0	0	4	0	0	0	0
2716	6825	2013-06-22	6	25	2	69	5	131	0	1	0	3
2717	6294	2013-06-22	0	1	0	0	0	1	0	0	0	0
2718	6555	2013-06-22	0	5	0	0	0	6	0	0	0	0
2719	6826	2013-06-22	1	6	0	125	9	41	0	1	0	3
2720	4440	2013-06-22	10	25	104	6	3	160	0	1	0	6
2721	6792	2013-06-22	1	14	0	75	3	95	0	0	0	2
2722	6788	2013-06-22	2	5	0	0	0	2	0	0	0	0
2723	6768	2013-06-22	0	9	0	0	0	4	0	0	0	0
2724	6958	2013-06-22	0	0	0	0	0	0	0	0	0	0
2725	6807	2013-06-22	0	4	0	0	0	6	0	0	0	0
2726	6805	2013-06-22	0	4	0	0	0	4	0	0	0	0
2727	6967	2013-06-22	1	1	4	82	8	274	0	0	0	0
2728	6394	2013-06-22	0	2	0	0	0	1	0	0	0	0
2729	6572	2013-06-22	0	1	0	0	0	4	0	0	0	0
2730	6478	2013-06-22	0	1	0	26	1	4	0	0	0	0
2731	6484	2013-06-22	0	0	0	59	4	272	0	0	0	0
2732	6747	2013-06-22	0	6	0	0	1	5	0	0	0	0
2733	6367	2013-06-22	16	16	0	115	6	16	3	3	4	4
2734	6709	2013-06-22	1	7	0	0	0	12	0	0	0	0
2735	6238	2013-06-22	0	2	0	0	0	0	0	0	0	0
2736	6855	2013-06-22	9	19	19	121	5	92	0	0	0	1
2737	6710	2013-06-22	1	13	0	0	0	8	0	0	0	0
2738	6796	2013-06-22	0	1	0	0	0	1	0	0	0	0
2739	6894	2013-06-22	0	0	0	0	0	0	0	0	0	0
2740	6512	2013-06-22	4	31	0	156	10	211	0	0	0	3
2741	3822	2013-06-22	0	1	0	0	0	0	0	0	0	0
2742	6738	2013-06-22	0	2	0	0	0	14	0	0	0	0
\.


--
-- Name: gd_mv_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: furiston
--

SELECT pg_catalog.setval('gd_mv_records_id_seq', 2742, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: gd_mv_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY gd_mv
    ADD CONSTRAINT gd_mv_pkey PRIMARY KEY (mv_id);


--
-- Name: gd_mv_records_pkey; Type: CONSTRAINT; Schema: public; Owner: furiston; Tablespace: 
--

ALTER TABLE ONLY gd_mv_records
    ADD CONSTRAINT gd_mv_records_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: gd_mv_city; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX gd_mv_city ON gd_mv USING btree (city);


--
-- Name: gd_mv_city_like; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX gd_mv_city_like ON gd_mv USING btree (city varchar_pattern_ops);


--
-- Name: gd_mv_records_date; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX gd_mv_records_date ON gd_mv_records USING btree (date);


--
-- Name: gd_mv_records_mv_id; Type: INDEX; Schema: public; Owner: furiston; Tablespace: 
--

CREATE INDEX gd_mv_records_mv_id ON gd_mv_records USING btree (mv_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gd_mv_records_mv_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY gd_mv_records
    ADD CONSTRAINT gd_mv_records_mv_id_fkey FOREIGN KEY (mv_id) REFERENCES gd_mv(mv_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_7ceef80f; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_7ceef80f FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_dfbab7d; Type: FK CONSTRAINT; Schema: public; Owner: furiston
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_dfbab7d FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

