PGDMP  $    $                {            PomPomExpress    16.1 (Debian 16.1-1.pgdg120+1)    16.0 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    29683    PomPomExpress    DATABASE     z   CREATE DATABASE "PomPomExpress" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "PomPomExpress";
                PomPoms    false                        3079    29684 	   btree_gin 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
    DROP EXTENSION btree_gin;
                   false                       0    0    EXTENSION btree_gin    COMMENT     R   COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';
                        false    2                        3079    30120 
   btree_gist 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;
    DROP EXTENSION btree_gist;
                   false                        0    0    EXTENSION btree_gist    COMMENT     T   COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';
                        false    3                        3079    30770    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false            !           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    4                        3079    30875    cube 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;
    DROP EXTENSION cube;
                   false            "           0    0    EXTENSION cube    COMMENT     E   COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';
                        false    5                        3079    30964    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false            #           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    6                        3079    31010    dict_int 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;
    DROP EXTENSION dict_int;
                   false            $           0    0    EXTENSION dict_int    COMMENT     Q   COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';
                        false    7                        3079    31015 	   dict_xsyn 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;
    DROP EXTENSION dict_xsyn;
                   false            %           0    0    EXTENSION dict_xsyn    COMMENT     e   COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';
                        false    8            	            3079    31020    earthdistance 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;
    DROP EXTENSION earthdistance;
                   false    5            &           0    0    EXTENSION earthdistance    COMMENT     f   COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';
                        false    9            
            3079    31036    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false            '           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    10                        3079    31048    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false            (           0    0    EXTENSION hstore    COMMENT     S   COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';
                        false    11                        3079    31176    intarray 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;
    DROP EXTENSION intarray;
                   false            )           0    0    EXTENSION intarray    COMMENT     g   COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';
                        false    12                        3079    31298    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false            *           0    0    EXTENSION ltree    COMMENT     Q   COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';
                        false    13                        3079    31483    pg_stat_statements 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
 #   DROP EXTENSION pg_stat_statements;
                   false            +           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    14                        3079    31514    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false            ,           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    15                        3079    31595    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            -           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    16                        3079    31632 
   pgrowlocks 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;
    DROP EXTENSION pgrowlocks;
                   false            .           0    0    EXTENSION pgrowlocks    COMMENT     I   COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';
                        false    17                        3079    31634    pgstattuple 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;
    DROP EXTENSION pgstattuple;
                   false            /           0    0    EXTENSION pgstattuple    COMMENT     C   COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';
                        false    18                        3079    31644 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false            0           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    19                        3079    31665    unaccent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;
    DROP EXTENSION unaccent;
                   false            1           0    0    EXTENSION unaccent    COMMENT     P   COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';
                        false    20                        3079    31672 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false            2           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    21                        3079    31683    xml2 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;
    DROP EXTENSION xml2;
                   false            3           0    0    EXTENSION xml2    COMMENT     8   COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';
                        false    22            �           1255    31697    notify_messenger_messages()    FUNCTION     �   CREATE FUNCTION public.notify_messenger_messages() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
            BEGIN
                PERFORM pg_notify('messenger_messages', NEW.queue_name::text);
                RETURN NEW;
            END;
        $$;
 2   DROP FUNCTION public.notify_messenger_messages();
       public          PomPom    false            �            1259    31698    article    TABLE     �   CREATE TABLE public.article (
    id integer NOT NULL,
    auteur_id integer NOT NULL,
    titre character varying(255) NOT NULL,
    contenu text NOT NULL,
    date_crea timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.article;
       public         heap    PomPoms    false            �            1259    31703    article_id_seq    SEQUENCE     w   CREATE SEQUENCE public.article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.article_id_seq;
       public          PomPom    false            �            1259    31704    attribut    TABLE     �   CREATE TABLE public.attribut (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.attribut;
       public         heap    PomPoms    false            �            1259    31709    attribut_id_seq    SEQUENCE     x   CREATE SEQUENCE public.attribut_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.attribut_id_seq;
       public          PomPom    false            �            1259    31710    commentaire    TABLE     �   CREATE TABLE public.commentaire (
    id integer NOT NULL,
    utilisateur_id integer NOT NULL,
    article_id integer NOT NULL,
    contenu text NOT NULL
);
    DROP TABLE public.commentaire;
       public         heap    PomPoms    false            �            1259    31715    commentaire_id_seq    SEQUENCE     {   CREATE SEQUENCE public.commentaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.commentaire_id_seq;
       public          PomPom    false            �            1259    31716 
   competence    TABLE     �   CREATE TABLE public.competence (
    id integer NOT NULL,
    personage_id integer,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.competence;
       public         heap    PomPoms    false            �            1259    31721    competence_id_seq    SEQUENCE     z   CREATE SEQUENCE public.competence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.competence_id_seq;
       public          PomPom    false            �            1259    31722    doctrine_migration_versions    TABLE     �   CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);
 /   DROP TABLE public.doctrine_migration_versions;
       public         heap    PomPoms    false            �            1259    31726    messenger_messages    TABLE     s  CREATE TABLE public.messenger_messages (
    id bigint NOT NULL,
    body text NOT NULL,
    headers text NOT NULL,
    queue_name character varying(190) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    available_at timestamp(0) without time zone NOT NULL,
    delivered_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
 &   DROP TABLE public.messenger_messages;
       public         heap    PomPoms    false            �            1259    31732    messenger_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messenger_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.messenger_messages_id_seq;
       public          PomPoms    false    251            4           0    0    messenger_messages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.messenger_messages_id_seq OWNED BY public.messenger_messages.id;
          public          PomPoms    false    252            �            1259    31733    normale    TABLE     �   CREATE TABLE public.normale (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.normale;
       public         heap    PomPoms    false            �            1259    31738    normale_id_seq    SEQUENCE     w   CREATE SEQUENCE public.normale_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.normale_id_seq;
       public          PomPom    false            �            1259    31739 
   personnage    TABLE     �   CREATE TABLE public.personnage (
    id integer NOT NULL,
    attribut_id integer NOT NULL,
    voie_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    etoile integer NOT NULL
);
    DROP TABLE public.personnage;
       public         heap    PomPoms    false                        1259    31742    personnage_id_seq    SEQUENCE     z   CREATE SEQUENCE public.personnage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personnage_id_seq;
       public          PomPom    false                       1259    31743    talent    TABLE     �   CREATE TABLE public.talent (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.talent;
       public         heap    PomPoms    false                       1259    31748    talent_id_seq    SEQUENCE     v   CREATE SEQUENCE public.talent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.talent_id_seq;
       public          PomPom    false                       1259    31749 	   technique    TABLE     �   CREATE TABLE public.technique (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.technique;
       public         heap    PomPoms    false                       1259    31754    technique_id_seq    SEQUENCE     y   CREATE SEQUENCE public.technique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.technique_id_seq;
       public          PomPom    false                       1259    31755    ultime    TABLE     �   CREATE TABLE public.ultime (
    id integer NOT NULL,
    personnage_id integer,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.ultime;
       public         heap    PomPoms    false                       1259    31760    ultime_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ultime_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ultime_id_seq;
       public          PomPom    false                       1259    31761    user    TABLE     1  CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL,
    mail character varying(255) NOT NULL,
    date_inscri timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
    DROP TABLE public."user";
       public         heap    PomPoms    false                       1259    31767    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          PomPom    false            	           1259    31768    voie    TABLE     �   CREATE TABLE public.voie (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.voie;
       public         heap    PomPoms    false            
           1259    31773    voie_id_seq    SEQUENCE     t   CREATE SEQUENCE public.voie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.voie_id_seq;
       public          PomPom    false            9           2604    31774    messenger_messages id    DEFAULT     ~   ALTER TABLE ONLY public.messenger_messages ALTER COLUMN id SET DEFAULT nextval('public.messenger_messages_id_seq'::regclass);
 D   ALTER TABLE public.messenger_messages ALTER COLUMN id DROP DEFAULT;
       public          PomPoms    false    252    251                       0    31698    article 
   TABLE DATA           K   COPY public.article (id, auteur_id, titre, contenu, date_crea) FROM stdin;
    public          PomPoms    false    242   ԏ                 0    31704    attribut 
   TABLE DATA           8   COPY public.attribut (id, nom, description) FROM stdin;
    public          PomPoms    false    244   U�                 0    31710    commentaire 
   TABLE DATA           N   COPY public.commentaire (id, utilisateur_id, article_id, contenu) FROM stdin;
    public          PomPoms    false    246   ��                 0    31716 
   competence 
   TABLE DATA           H   COPY public.competence (id, personage_id, nom, description) FROM stdin;
    public          PomPoms    false    248   :�                 0    31722    doctrine_migration_versions 
   TABLE DATA           [   COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
    public          PomPoms    false    250   5�       	          0    31726    messenger_messages 
   TABLE DATA           s   COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
    public          PomPoms    false    251   ��                 0    31733    normale 
   TABLE DATA           F   COPY public.normale (id, personnage_id, nom, description) FROM stdin;
    public          PomPoms    false    253   �                 0    31739 
   personnage 
   TABLE DATA           K   COPY public.personnage (id, attribut_id, voie_id, nom, etoile) FROM stdin;
    public          PomPoms    false    255   /�                 0    31743    talent 
   TABLE DATA           E   COPY public.talent (id, personnage_id, nom, description) FROM stdin;
    public          PomPoms    false    257   ��                 0    31749 	   technique 
   TABLE DATA           H   COPY public.technique (id, personnage_id, nom, description) FROM stdin;
    public          PomPoms    false    259   ��                 0    31755    ultime 
   TABLE DATA           E   COPY public.ultime (id, personnage_id, nom, description) FROM stdin;
    public          PomPoms    false    261   R�                 0    31761    user 
   TABLE DATA           R   COPY public."user" (id, username, roles, password, mail, date_inscri) FROM stdin;
    public          PomPoms    false    263   ��                 0    31768    voie 
   TABLE DATA           4   COPY public.voie (id, nom, description) FROM stdin;
    public          PomPoms    false    265   (�       5           0    0    article_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.article_id_seq', 1, true);
          public          PomPom    false    243            6           0    0    attribut_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.attribut_id_seq', 7, true);
          public          PomPom    false    245            7           0    0    commentaire_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.commentaire_id_seq', 6, true);
          public          PomPom    false    247            8           0    0    competence_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.competence_id_seq', 7, true);
          public          PomPom    false    249            9           0    0    messenger_messages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);
          public          PomPoms    false    252            :           0    0    normale_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.normale_id_seq', 8, true);
          public          PomPom    false    254            ;           0    0    personnage_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.personnage_id_seq', 40, true);
          public          PomPom    false    256            <           0    0    talent_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.talent_id_seq', 7, true);
          public          PomPom    false    258            =           0    0    technique_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.technique_id_seq', 8, true);
          public          PomPom    false    260            >           0    0    ultime_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ultime_id_seq', 7, true);
          public          PomPom    false    262            ?           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          PomPom    false    264            @           0    0    voie_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.voie_id_seq', 7, true);
          public          PomPom    false    266            =           2606    31776    article article_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public            PomPoms    false    242            @           2606    31778    attribut attribut_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.attribut
    ADD CONSTRAINT attribut_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.attribut DROP CONSTRAINT attribut_pkey;
       public            PomPoms    false    244            B           2606    31780    commentaire commentaire_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT commentaire_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT commentaire_pkey;
       public            PomPoms    false    246            F           2606    31782    competence competence_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.competence
    ADD CONSTRAINT competence_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.competence DROP CONSTRAINT competence_pkey;
       public            PomPoms    false    248            I           2606    31784 <   doctrine_migration_versions doctrine_migration_versions_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);
 f   ALTER TABLE ONLY public.doctrine_migration_versions DROP CONSTRAINT doctrine_migration_versions_pkey;
       public            PomPoms    false    250            N           2606    31786 *   messenger_messages messenger_messages_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.messenger_messages
    ADD CONSTRAINT messenger_messages_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.messenger_messages DROP CONSTRAINT messenger_messages_pkey;
       public            PomPoms    false    251            P           2606    31788    normale normale_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.normale
    ADD CONSTRAINT normale_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.normale DROP CONSTRAINT normale_pkey;
       public            PomPoms    false    253            U           2606    31790    personnage personnage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT personnage_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.personnage DROP CONSTRAINT personnage_pkey;
       public            PomPoms    false    255            W           2606    31792    talent talent_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.talent
    ADD CONSTRAINT talent_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.talent DROP CONSTRAINT talent_pkey;
       public            PomPoms    false    257            Z           2606    31794    technique technique_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.technique
    ADD CONSTRAINT technique_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.technique DROP CONSTRAINT technique_pkey;
       public            PomPoms    false    259            ]           2606    31796    ultime ultime_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ultime
    ADD CONSTRAINT ultime_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ultime DROP CONSTRAINT ultime_pkey;
       public            PomPoms    false    261            a           2606    31798    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            PomPoms    false    263            c           2606    31800    voie voie_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.voie
    ADD CONSTRAINT voie_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.voie DROP CONSTRAINT voie_pkey;
       public            PomPoms    false    265            >           1259    31801    idx_23a0e6660bb6fe6    INDEX     L   CREATE INDEX idx_23a0e6660bb6fe6 ON public.article USING btree (auteur_id);
 '   DROP INDEX public.idx_23a0e6660bb6fe6;
       public            PomPoms    false    242            C           1259    31802    idx_67f068bc7294869c    INDEX     R   CREATE INDEX idx_67f068bc7294869c ON public.commentaire USING btree (article_id);
 (   DROP INDEX public.idx_67f068bc7294869c;
       public            PomPoms    false    246            D           1259    31803    idx_67f068bcfb88e14f    INDEX     V   CREATE INDEX idx_67f068bcfb88e14f ON public.commentaire USING btree (utilisateur_id);
 (   DROP INDEX public.idx_67f068bcfb88e14f;
       public            PomPoms    false    246            R           1259    31804    idx_6aea486d51383af3    INDEX     R   CREATE INDEX idx_6aea486d51383af3 ON public.personnage USING btree (attribut_id);
 (   DROP INDEX public.idx_6aea486d51383af3;
       public            PomPoms    false    255            S           1259    31805    idx_6aea486deaac89cf    INDEX     N   CREATE INDEX idx_6aea486deaac89cf ON public.personnage USING btree (voie_id);
 (   DROP INDEX public.idx_6aea486deaac89cf;
       public            PomPoms    false    255            J           1259    31806    idx_75ea56e016ba31db    INDEX     [   CREATE INDEX idx_75ea56e016ba31db ON public.messenger_messages USING btree (delivered_at);
 (   DROP INDEX public.idx_75ea56e016ba31db;
       public            PomPoms    false    251            K           1259    31807    idx_75ea56e0e3bd61ce    INDEX     [   CREATE INDEX idx_75ea56e0e3bd61ce ON public.messenger_messages USING btree (available_at);
 (   DROP INDEX public.idx_75ea56e0e3bd61ce;
       public            PomPoms    false    251            L           1259    31808    idx_75ea56e0fb7336f0    INDEX     Y   CREATE INDEX idx_75ea56e0fb7336f0 ON public.messenger_messages USING btree (queue_name);
 (   DROP INDEX public.idx_75ea56e0fb7336f0;
       public            PomPoms    false    251            X           1259    31809    uniq_16d902f55e315342    INDEX     X   CREATE UNIQUE INDEX uniq_16d902f55e315342 ON public.talent USING btree (personnage_id);
 )   DROP INDEX public.uniq_16d902f55e315342;
       public            PomPoms    false    257            Q           1259    31810    uniq_489cd9535e315342    INDEX     Y   CREATE UNIQUE INDEX uniq_489cd9535e315342 ON public.normale USING btree (personnage_id);
 )   DROP INDEX public.uniq_489cd9535e315342;
       public            PomPoms    false    253            _           1259    31811    uniq_8d93d649f85e0677    INDEX     S   CREATE UNIQUE INDEX uniq_8d93d649f85e0677 ON public."user" USING btree (username);
 )   DROP INDEX public.uniq_8d93d649f85e0677;
       public            PomPoms    false    263            G           1259    31812    uniq_94d4687fea8e3e4a    INDEX     [   CREATE UNIQUE INDEX uniq_94d4687fea8e3e4a ON public.competence USING btree (personage_id);
 )   DROP INDEX public.uniq_94d4687fea8e3e4a;
       public            PomPoms    false    248            [           1259    31813    uniq_d73b98415e315342    INDEX     [   CREATE UNIQUE INDEX uniq_d73b98415e315342 ON public.technique USING btree (personnage_id);
 )   DROP INDEX public.uniq_d73b98415e315342;
       public            PomPoms    false    259            ^           1259    31814    uniq_f83fe0c45e315342    INDEX     X   CREATE UNIQUE INDEX uniq_f83fe0c45e315342 ON public.ultime USING btree (personnage_id);
 )   DROP INDEX public.uniq_f83fe0c45e315342;
       public            PomPoms    false    261            n           2620    31815 !   messenger_messages notify_trigger    TRIGGER     �   CREATE TRIGGER notify_trigger AFTER INSERT OR UPDATE ON public.messenger_messages FOR EACH ROW EXECUTE FUNCTION public.notify_messenger_messages();
 :   DROP TRIGGER notify_trigger ON public.messenger_messages;
       public          PomPoms    false    251    899            k           2606    31816    talent fk_16d902f55e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.talent
    ADD CONSTRAINT fk_16d902f55e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 D   ALTER TABLE ONLY public.talent DROP CONSTRAINT fk_16d902f55e315342;
       public          PomPoms    false    257    255    4437            d           2606    31821    article fk_23a0e6660bb6fe6    FK CONSTRAINT     |   ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_23a0e6660bb6fe6 FOREIGN KEY (auteur_id) REFERENCES public."user"(id);
 D   ALTER TABLE ONLY public.article DROP CONSTRAINT fk_23a0e6660bb6fe6;
       public          PomPoms    false    4449    263    242            h           2606    31826    normale fk_489cd9535e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.normale
    ADD CONSTRAINT fk_489cd9535e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 E   ALTER TABLE ONLY public.normale DROP CONSTRAINT fk_489cd9535e315342;
       public          PomPoms    false    255    253    4437            e           2606    31831    commentaire fk_67f068bc7294869c    FK CONSTRAINT     �   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT fk_67f068bc7294869c FOREIGN KEY (article_id) REFERENCES public.article(id);
 I   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT fk_67f068bc7294869c;
       public          PomPoms    false    4413    246    242            f           2606    31836    commentaire fk_67f068bcfb88e14f    FK CONSTRAINT     �   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT fk_67f068bcfb88e14f FOREIGN KEY (utilisateur_id) REFERENCES public."user"(id);
 I   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT fk_67f068bcfb88e14f;
       public          PomPoms    false    246    263    4449            i           2606    31841    personnage fk_6aea486d51383af3    FK CONSTRAINT     �   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT fk_6aea486d51383af3 FOREIGN KEY (attribut_id) REFERENCES public.attribut(id);
 H   ALTER TABLE ONLY public.personnage DROP CONSTRAINT fk_6aea486d51383af3;
       public          PomPoms    false    244    4416    255            j           2606    31846    personnage fk_6aea486deaac89cf    FK CONSTRAINT     |   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT fk_6aea486deaac89cf FOREIGN KEY (voie_id) REFERENCES public.voie(id);
 H   ALTER TABLE ONLY public.personnage DROP CONSTRAINT fk_6aea486deaac89cf;
       public          PomPoms    false    4451    255    265            g           2606    31851    competence fk_94d4687fea8e3e4a    FK CONSTRAINT     �   ALTER TABLE ONLY public.competence
    ADD CONSTRAINT fk_94d4687fea8e3e4a FOREIGN KEY (personage_id) REFERENCES public.personnage(id);
 H   ALTER TABLE ONLY public.competence DROP CONSTRAINT fk_94d4687fea8e3e4a;
       public          PomPoms    false    4437    255    248            l           2606    31856    technique fk_d73b98415e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.technique
    ADD CONSTRAINT fk_d73b98415e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 G   ALTER TABLE ONLY public.technique DROP CONSTRAINT fk_d73b98415e315342;
       public          PomPoms    false    255    259    4437            m           2606    31861    ultime fk_f83fe0c45e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.ultime
    ADD CONSTRAINT fk_f83fe0c45e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 D   ALTER TABLE ONLY public.ultime DROP CONSTRAINT fk_f83fe0c45e315342;
       public          PomPoms    false    4437    261    255            �           826    31871    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     _   ALTER DEFAULT PRIVILEGES FOR ROLE "PomPom" GRANT ALL ON TABLES TO "PomPoms" WITH GRANT OPTION;
                   PomPom    false                q   x�-���0Dk{��R�N�� �8ᄌ�c��sd1\ �����on��L\Y�Q����`V�m�(J���=>[G�/iT�����S�M�,���	.L�}����9{�Xk�$�         X  x��R�N�@��b;7�o��H) AT4��vV���=�����(�c��(��T;ڱgfwo_�*,�";ڂА�(@N���̐�f�`���v��d�{|�L:0�G���`[.	m �PQ��U�8���T�)\Jo�8
�D�$��m�K݇,U�v�G%�F��>PwQ�Y�7��˿=5�7�.:39Z7�}F>����٤�P��^}����V81�)r�L=�y��ɢ��C�ut�>R�3Rc���L��d�jHQ�	�� 6��2^�5��p��O#gM���1w}�%�ŏ~�{���wu����8/|��؋��
оwCf�sM�c�����x         m   x��A
�0��s�w�B]x7�܄��NI&%�Q��J����e�w���jBUS�ȁ�]��?	u�ao����J�MZ��p`'��DIo�H�In���R>�gyM"��u$c         �  x��V�nG</�b.m� DR���b�A�%!H�\��^j�ه�AX>�j �� '��O�zf�����$qw�����z��8�&+�(T�k��A���J���2�j��z���U%���ʉO-�9���W$r5�$���T�'|g p�WB�%�#�����{\�B:'q($�^���Ik�5W���gÓ����ew��J�4�j?�i(�8��p��A�G�K'���d��EA9� 	�dn�Ţ]�=Pz�jD��h�ZH���2w��Ģ��Rkծ�n�{!��R�k�jeP΋�l��*�ZR`22*
�]���`�r��������7�OD�yȖ(�IAbPn.>A�v�Q���U���9�-�/�^Qŵs��I�Qv؛d���v])� ���xϾ9RE�o�����B�U�R�� �
��[�0�u�='���� �0P�b}�J^ܑZV9�� p����D�b {ػ�.�[	��Ө,Uh������@�Rٓ>И��LIL�\*#TY�녒.��n��L&g�8Э6�y>T�;�;��m�Z�+SW�r A��н��� N�گH�ao�M��5ӭe�qƛ嚇G��8�+7�S���"��5�r1:��0�(��I�A�0��w���;z&�;o��3��/�����@(���s�l� ���o�����/N���wP�ݮ;�,Q�Eb+�
�!��0.1�!k؛e����Z�t|v�&^�x%�Q�G�-y���N'=�sJ♰1[��	�_z�=�U��Y���,�I� ~���Y�u<�<"��J���S��wβ@B.�B�k�kE�>?06x���әss��-r(�O���}B\k�:�`qO�/"6�����M�1���c[2<�1�N;�oDn�9y���DM�;?��NS�)ų�&H��w�]f�M܀��^����r��Y��i?�d2�`8�c!.�I�0{�J|2���h����n�Q��B��χ�Z����w��YF"��ׁ�}�[�Cf6�7d0#�c�x�
�`�aEqScĥN[e�!�3�qE� �ާ�]縖? %�Y������i�v����lؤ�?Cq,֥���zΖ�����]2\�5�Q�ivz�l��s-a�a��8]ǖ��~�s;~�t��Q��T�ks�G��{|��TP��_o���ia5�8����>�M�{x�����g�ቈ�ݷ�\�,��,�E�V|�ߛ���e#s��<<] �]�����Ӱ���E&Np         �   x��бn�0�Y�
���㉤$�Y�v�RA�%��?*��)�t� ��������}��>����X�����`Ѕ��Ҿ΂�>	=�dɗ�D�AQ�N��5��O	Ո�O�a�$��!��	�����K�2F��op����:�	�h6�!pB�δ�'�U�D�F�Z-�������C؀Q      	      x������ � �           x����n1���S̥�*�4M9RE��@
�^&��t����OD9��8�/�oҾ�mAHq�&
���Y����m�V�@���W�^��.�T� '��c��LcFP����x��C��Q\ӏ��_��K63�!.d,#�:nuTG�Ք3�)�)��w)�qY����]�UC
��z
�ZR�	�4�	�2�6ɺ�@NꝨ5fy�����SM-��tunKs�i���[�|T�m�0���v��mU��tNթZ�*iۓ�(�kBs�ѧ�:�����[(�9�a�w���\_�U��b#�4�8��\��M�yHsev���3u�F�&��B�Vo<kv$U�=ʜ��0�3�#�`�ע��@<xA��(&<a_Z�5Hw�O4�3�h�]~[4.#����v�mqw/�v��ȣ�
9/�p���#~z0�z	Zor�pHƽ����{���A{���Z?t'gQ^����5�\��yir�=�����^�v����N��v�uy�j�~����         �  x�mR�n�0=�_�cwb[��c�bͶl� ]��2�`EJe�X��#���>=��G�(���q��I��4԰�'|-)�s<E��Zh2��$t\Q���,xwF����i@PE�-|J���c���~���a����������L��\&��)S��`��J�j�V5l�=s)� �3�O$�a�
���W��-��	Ó`٩���l��ae����ۃ;���C����FAS���H��+M��:p���W
�9�M�����>/{ע���wh������;�U$k�`�N�/�`�r
6i�|0U��Kơ9���bO�d�1�#�����5;)X���)LAb���s".4�wX��oA�l�A��#������{��Ոu�1"�IA��k%X����s[�܌$�*�	%V3e�Z~��rp5���þ�v����Ǣ(� ln�          �  x��W�n7=�|/�$�`�md���p�@[6 N7gD��lsH:���-�|���U���4r���&Y|U����4;�^;U��S�P"��h�*{V��1h���V������Ϣ���F̈́�ʜ}�Y��Ս�!�1�=�|�8�O����^��d���{�.���?�jmt�������"�e4������Ykܬ�QBU��O�l��>���ʃc���N`�-jBuxx ��u����ȯh�O�5@�	>��Ņ�BY�ZE&�u�)7R;��+����kX�h��G�T����R��pcڍ��r���2��1�$lrz���6��΄�	#�e-s�-�r�jC��d��2��;�n��P� �]�B�St-ߑ��۲Dl ɋ��E)��'o�+�_�1��z�I[��*�!_j�E�7��5�"��	56{9#G���h8
{���Oq%cP���,� }��-Z�6�R�X�]3�I�ԫ�X̄�`�k�@$�'�CE�ϥ���!"�S�@NV�)�"i�����{�U�!���ȃ�"2~5��mLq��^p>*�lS�ԕ�wՔ `��z�'b���z�-�ǴĢ��+\D�\R�a�p>9Ύ�Wrm�\�6Җ��6�Ο�����7�e�y�5�l}��֞"��6�@������JQ���gB�)U��2�p��i.<�1�K�E�F�<�䆕ʾ �����je�Z�z�����j����=����'��Ė9����D�-un����8���ж��h�)�=����T쾛�ER�¸(4�k�ҾŃ�L�,jgkG	��OX�=��͗ �ʪH�'RPd�L�擓�${VU�J�~P�h��'��V�u��9��E��r�o7� ~1�
�~�r��
�\��r��$������@���Z������-i@Gף��~�`�f4�r»�q隻�;9�%���I�E����x�I�le�ڥA3f�,>Ȝ��j�k�T����xq��J.Pץ�9mA�NW�����=��'�LSO�����I��e�����djp�M�����=d��i�+�{W�w��i��ԟyȷƐ*�G�:�f�QT�����#?��4ZWv����v����� q�Ml��Z�y�|�T����'�l�5�h@
�XC��g�w	W����(�/V���2�W��[ipw��x~�Q8�g#|��^[r�%!�g�.�N�Y7���u��(�#��~�0�b��yR64~�F`F�f��pyٺ/�Ǧљ!�x�	��Ou3��KJ��>��0��u �IO��w+�����?���)M���<����~��Oβ�윔{�4KvIM���"�_���T�!�%֖�|�Bh>mt��TS���)��p��2������j�}�lQ�+��d�a���9tӣ�-)J�D�=?9 ��������=�85����vZ�'�=�]�V�B�o/9W�J3`R�^ �GyD=�4}z�hEC<� 9���LX歹��_f=g�b&&����βO2�8��hq>y�=��o�$���G�h"t(��kHS�l����A�@C�i;�p���c��Uܵ�7��!fMY�+�щh`\wӴg�0���J�_�G�ǲzl"N"Q��>Wi\ʚ�NY��i���tt��Z���"�2�RJX���Q�K梃�yNx�BO���x��'��'�ɿ	��         �  x��VKr�6]S��fJ�J�Ǟl=�$5�x����"lʘ� ���r�,Gs^,����.��$�l���km�M5��:EC��bw^�qW]�qG"���m��)����_��v:�ۤE�<����i(�ĵMAtC���&E1Ϋk��R7��Ⱦ�vܙ�+
�w���p�S�6�����V��(lu�]�ԧ�{���ǯGB��f�~�WՍ4
-�c-�;�&��T�>���Z�X��	���k�E/��跜���f*��į/����;J�p2�՞��T��*W���u��lQ�Pĸ��숹�?�������R2�f��)Nd0���� ��!��۴�̔R����B��:��8�l���qu\]��q�#t�:�t���:� �,ya{�D�:0Z��OX/c&l�Mݐ�+��O��ݐ5�m�g�R�|)��S�<����� {���RDR7�k񳥽>v�{�� n��΃����+ȝ��٭2F9�!�h������Wz:��:�_���-�\�˚:��4�Rv���^�(+�4� �����BnJQw:��a����q�CmMʥYgX+dI$�B0TE���ϰ�����p��eD/�t�z���[�U�9l"�,����T�l-9n�"JQ�[�n�@�5�j� ���e�U�b�+{$�1A���t�.�F�:���r��R6�\&�p _�&�*ܑ��a*	�n�-�?6����>�T��̐V�����QPS�K
y[��^At��c�!OS��QaS��@W���JD��L�3el���y�}�M�����GiLqu�㮇	�ؽ�K���[s/���`��6����x��W[<�N�s(���-T?r?[���V���c���%2������܇"��P=-���	W`�Rl&oN1��Ph?����8{�V�Kj[��J��}�\Ts��R�B�PR8�MVH�u���>|b��n'i9�g�Y�)�8���Gh�&[>���3|au��je(y�kLF1��.���]ug�mi2R���6ͳI`�����0��x�zJ-���B|R��1�#e!��O� ~J�O����ٺ���k�����]�����r��h�a��P}�.9���ey��$�+x�)y:��0_1�����k�X,�j�t         .  x��TKnG]7OQ���4%{)۰aC@h� ��fϰ��Q�7�-��<Y�s�T�phYb��|��^�{�z.��}��^���}�����y�[]+������	�A���n�ޣQ6������O����;~y�mmt�dAY�Mo�&)P����G=L��jp��R)��_˨�� S�gl�>��Zq1�Pi;����(&�k�#uB��U:��5m�=��6PJ�E��\`Ԏ��m����Ql�aF�-1�����T7����j�8�0��:2���b5-��ö�����b��W������{%���C@+3�VEB���.��9�h�o��3�CҜ4��D�(�h��Bctߝ1[2OL�GbB�^�e��95~8#�'����F�����6:�,�L(&K�k�G*Mj4��+����'�$�|Jܐ��x%a�ZQ��5���U�V$�\$�(]۱9{��%��~S����=�XL��'��A/w9�2�t��:���{D��X.�ZL���X���'��tlL���`����;�_rD�얓�y�a%V���[����WR:O��a�r���?�R%�qq�$��䎽��J�q
���B*�@q���K�oPF�WF^��-.-�:Q�~`�vw�����mq�>��ȸ��B\���ޙ�����n�I�4���@��7���A^%����w׶�$�!�0C/�-=ߘ@7r��q\IB���O�rrϠ�w�br).Ś�:$5�Wb����ϡt�Z"��'�{ȭn��t��S�>\���H�Ss�Y��I���Wf\���?I�g1�L�O�^�         �   x�3����M���V
��q�wt���S��T1�T14Vq7I�
��,q��3���J6�,�JuvΩ�*1����3Oqq)-�30�4M��r51��X\R���ZQP�Z\�����id`d�khD
�V�V\1z\\\ ��'�         �  x����j�0F��S�.;C�ס-�BJ!���\{�;D9��qJ7��}�XG�C�Kꛝ�4����U�HcHmd/եg�{v������r�-p���ug�0QP/�AG�R�s)d�$�'"�u^��#E��j�ՕI��b4��gt���ϫ�{T��������$�rX��sd|���_T�C�x��������.\��+��E�l��/�F/���+���c��p뷳�������+ݬ�[<�yq�(-N����q���r�r�Jh��:����WG���+݈n�#y�y�˧Б�tM����f��'Ǔ��cd��K;������'Q�m۴�nc��o��U�n;� ����z�Y��Nm0J�a�z��QnJsPσd��f�"�[�
�C���u�(q�{     