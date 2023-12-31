PGDMP  6                    {            kfvpaoce "   11.19 (Ubuntu 11.19-1.pgdg20.04+1)    16.0 \    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    15069667    kfvpaoce    DATABASE     t   CREATE DATABASE kfvpaoce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE kfvpaoce;
                kfvpaoce    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            	            3079    17135 	   btree_gin 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
    DROP EXTENSION btree_gin;
                   false    27                        3079    17676 
   btree_gist 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;
    DROP EXTENSION btree_gist;
                   false    27                        3079    16661    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false    27                        3079    17573    cube 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;
    DROP EXTENSION cube;
                   false    27                        3079    16384    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false    27            
            3079    17130    dict_int 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;
    DROP EXTENSION dict_int;
                   false    27                        3079    18299 	   dict_xsyn 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;
    DROP EXTENSION dict_xsyn;
                   false    27                        3079    17660    earthdistance 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;
    DROP EXTENSION earthdistance;
                   false    7    27                        3079    16650    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false    27                        3079    17007    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false    27                        3079    16889    intarray 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;
    DROP EXTENSION intarray;
                   false    27                        3079    16444    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false    27                        3079    18311    pg_stat_statements 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
 #   DROP EXTENSION pg_stat_statements;
                   false    27                        3079    16812    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false    27                        3079    16775    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false    27                        3079    17571 
   pgrowlocks 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;
    DROP EXTENSION pgrowlocks;
                   false    27                        3079    16619    pgstattuple 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;
    DROP EXTENSION pgstattuple;
                   false    27                        3079    16629 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false    27                        3079    18304    unaccent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;
    DROP EXTENSION unaccent;
                   false    27                        3079    16764 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false    27                        3079    16430    xml2 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;
    DROP EXTENSION xml2;
                   false    27            �           1255    15069718    notify_messenger_messages()    FUNCTION     �   CREATE FUNCTION public.notify_messenger_messages() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
            BEGIN
                PERFORM pg_notify('messenger_messages', NEW.queue_name::text);
                RETURN NEW;
            END;
        $$;
 2   DROP FUNCTION public.notify_messenger_messages();
       public          kfvpaoce    false    27            �            1259    15917020    article    TABLE     �   CREATE TABLE public.article (
    id integer NOT NULL,
    auteur_id integer NOT NULL,
    titre character varying(255) NOT NULL,
    contenu text NOT NULL,
    date_crea timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.article;
       public            kfvpaoce    false    27            �            1259    15917018    article_id_seq    SEQUENCE     w   CREATE SEQUENCE public.article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.article_id_seq;
       public          kfvpaoce    false    27            �            1259    15069680    attribut    TABLE     �   CREATE TABLE public.attribut (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.attribut;
       public            kfvpaoce    false    27            �            1259    15069674    attribut_id_seq    SEQUENCE     x   CREATE SEQUENCE public.attribut_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.attribut_id_seq;
       public          kfvpaoce    false    27            �            1259    15927821    commentaire    TABLE     �   CREATE TABLE public.commentaire (
    id integer NOT NULL,
    utilisateur_id integer NOT NULL,
    article_id integer NOT NULL,
    contenu text NOT NULL
);
    DROP TABLE public.commentaire;
       public            kfvpaoce    false    27            �            1259    15927819    commentaire_id_seq    SEQUENCE     {   CREATE SEQUENCE public.commentaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.commentaire_id_seq;
       public          kfvpaoce    false    27            �            1259    15074222 
   competence    TABLE     �   CREATE TABLE public.competence (
    id integer NOT NULL,
    personage_id integer,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.competence;
       public            kfvpaoce    false    27            �            1259    15074218    competence_id_seq    SEQUENCE     z   CREATE SEQUENCE public.competence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.competence_id_seq;
       public          kfvpaoce    false    27            �            1259    15069668    doctrine_migration_versions    TABLE     �   CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);
 /   DROP TABLE public.doctrine_migration_versions;
       public            kfvpaoce    false    27            �            1259    15069705    messenger_messages    TABLE     s  CREATE TABLE public.messenger_messages (
    id bigint NOT NULL,
    body text NOT NULL,
    headers text NOT NULL,
    queue_name character varying(190) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    available_at timestamp(0) without time zone NOT NULL,
    delivered_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
 &   DROP TABLE public.messenger_messages;
       public            kfvpaoce    false    27            �            1259    15069703    messenger_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messenger_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.messenger_messages_id_seq;
       public          kfvpaoce    false    230    27            /           0    0    messenger_messages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.messenger_messages_id_seq OWNED BY public.messenger_messages.id;
          public          kfvpaoce    false    229            �            1259    15081655    normale    TABLE     �   CREATE TABLE public.normale (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.normale;
       public            kfvpaoce    false    27            �            1259    15081649    normale_id_seq    SEQUENCE     w   CREATE SEQUENCE public.normale_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.normale_id_seq;
       public          kfvpaoce    false    27            �            1259    15069688 
   personnage    TABLE     �   CREATE TABLE public.personnage (
    id integer NOT NULL,
    attribut_id integer NOT NULL,
    voie_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    etoile integer NOT NULL
);
    DROP TABLE public.personnage;
       public            kfvpaoce    false    27            �            1259    15069676    personnage_id_seq    SEQUENCE     z   CREATE SEQUENCE public.personnage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personnage_id_seq;
       public          kfvpaoce    false    27            �            1259    15081664    talent    TABLE     �   CREATE TABLE public.talent (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.talent;
       public            kfvpaoce    false    27            �            1259    15081651    talent_id_seq    SEQUENCE     v   CREATE SEQUENCE public.talent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.talent_id_seq;
       public          kfvpaoce    false    27            �            1259    15081673 	   technique    TABLE     �   CREATE TABLE public.technique (
    id integer NOT NULL,
    personnage_id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.technique;
       public            kfvpaoce    false    27            �            1259    15081653    technique_id_seq    SEQUENCE     y   CREATE SEQUENCE public.technique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.technique_id_seq;
       public          kfvpaoce    false    27            �            1259    15074231    ultime    TABLE     �   CREATE TABLE public.ultime (
    id integer NOT NULL,
    personnage_id integer,
    nom character varying(255) NOT NULL,
    description character varying(2500) NOT NULL
);
    DROP TABLE public.ultime;
       public            kfvpaoce    false    27            �            1259    15074220    ultime_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ultime_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ultime_id_seq;
       public          kfvpaoce    false    27            �            1259    15913245    user    TABLE     1  CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL,
    mail character varying(255) NOT NULL,
    date_inscri timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
    DROP TABLE public."user";
       public            kfvpaoce    false    27            �            1259    15913243    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          kfvpaoce    false    27            �            1259    15069695    voie    TABLE     �   CREATE TABLE public.voie (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.voie;
       public            kfvpaoce    false    27            �            1259    15069678    voie_id_seq    SEQUENCE     t   CREATE SEQUENCE public.voie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.voie_id_seq;
       public          kfvpaoce    false    27            y           2604    15069708    messenger_messages id    DEFAULT     ~   ALTER TABLE ONLY public.messenger_messages ALTER COLUMN id SET DEFAULT nextval('public.messenger_messages_id_seq'::regclass);
 D   ALTER TABLE public.messenger_messages ALTER COLUMN id DROP DEFAULT;
       public          kfvpaoce    false    229    230    230            �           2606    15917027    article article_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public            kfvpaoce    false    244                       2606    15069687    attribut attribut_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.attribut
    ADD CONSTRAINT attribut_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.attribut DROP CONSTRAINT attribut_pkey;
       public            kfvpaoce    false    226            �           2606    15927828    commentaire commentaire_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT commentaire_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT commentaire_pkey;
       public            kfvpaoce    false    246            �           2606    15074229    competence competence_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.competence
    ADD CONSTRAINT competence_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.competence DROP CONSTRAINT competence_pkey;
       public            kfvpaoce    false    233            }           2606    15069673 <   doctrine_migration_versions doctrine_migration_versions_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);
 f   ALTER TABLE ONLY public.doctrine_migration_versions DROP CONSTRAINT doctrine_migration_versions_pkey;
       public            kfvpaoce    false    222            �           2606    15069714 *   messenger_messages messenger_messages_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.messenger_messages
    ADD CONSTRAINT messenger_messages_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.messenger_messages DROP CONSTRAINT messenger_messages_pkey;
       public            kfvpaoce    false    230            �           2606    15081662    normale normale_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.normale
    ADD CONSTRAINT normale_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.normale DROP CONSTRAINT normale_pkey;
       public            kfvpaoce    false    238            �           2606    15069692    personnage personnage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT personnage_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.personnage DROP CONSTRAINT personnage_pkey;
       public            kfvpaoce    false    227            �           2606    15081671    talent talent_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.talent
    ADD CONSTRAINT talent_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.talent DROP CONSTRAINT talent_pkey;
       public            kfvpaoce    false    239            �           2606    15081680    technique technique_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.technique
    ADD CONSTRAINT technique_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.technique DROP CONSTRAINT technique_pkey;
       public            kfvpaoce    false    240            �           2606    15074238    ultime ultime_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ultime
    ADD CONSTRAINT ultime_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ultime DROP CONSTRAINT ultime_pkey;
       public            kfvpaoce    false    234            �           2606    15913253    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            kfvpaoce    false    242            �           2606    15069702    voie voie_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.voie
    ADD CONSTRAINT voie_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.voie DROP CONSTRAINT voie_pkey;
       public            kfvpaoce    false    228            �           1259    15917028    idx_23a0e6660bb6fe6    INDEX     L   CREATE INDEX idx_23a0e6660bb6fe6 ON public.article USING btree (auteur_id);
 '   DROP INDEX public.idx_23a0e6660bb6fe6;
       public            kfvpaoce    false    244            �           1259    15927830    idx_67f068bc7294869c    INDEX     R   CREATE INDEX idx_67f068bc7294869c ON public.commentaire USING btree (article_id);
 (   DROP INDEX public.idx_67f068bc7294869c;
       public            kfvpaoce    false    246            �           1259    15927829    idx_67f068bcfb88e14f    INDEX     V   CREATE INDEX idx_67f068bcfb88e14f ON public.commentaire USING btree (utilisateur_id);
 (   DROP INDEX public.idx_67f068bcfb88e14f;
       public            kfvpaoce    false    246            �           1259    15069693    idx_6aea486d51383af3    INDEX     R   CREATE INDEX idx_6aea486d51383af3 ON public.personnage USING btree (attribut_id);
 (   DROP INDEX public.idx_6aea486d51383af3;
       public            kfvpaoce    false    227            �           1259    15069694    idx_6aea486deaac89cf    INDEX     N   CREATE INDEX idx_6aea486deaac89cf ON public.personnage USING btree (voie_id);
 (   DROP INDEX public.idx_6aea486deaac89cf;
       public            kfvpaoce    false    227            �           1259    15069717    idx_75ea56e016ba31db    INDEX     [   CREATE INDEX idx_75ea56e016ba31db ON public.messenger_messages USING btree (delivered_at);
 (   DROP INDEX public.idx_75ea56e016ba31db;
       public            kfvpaoce    false    230            �           1259    15069716    idx_75ea56e0e3bd61ce    INDEX     [   CREATE INDEX idx_75ea56e0e3bd61ce ON public.messenger_messages USING btree (available_at);
 (   DROP INDEX public.idx_75ea56e0e3bd61ce;
       public            kfvpaoce    false    230            �           1259    15069715    idx_75ea56e0fb7336f0    INDEX     Y   CREATE INDEX idx_75ea56e0fb7336f0 ON public.messenger_messages USING btree (queue_name);
 (   DROP INDEX public.idx_75ea56e0fb7336f0;
       public            kfvpaoce    false    230            �           1259    15081672    uniq_16d902f55e315342    INDEX     X   CREATE UNIQUE INDEX uniq_16d902f55e315342 ON public.talent USING btree (personnage_id);
 )   DROP INDEX public.uniq_16d902f55e315342;
       public            kfvpaoce    false    239            �           1259    15081663    uniq_489cd9535e315342    INDEX     Y   CREATE UNIQUE INDEX uniq_489cd9535e315342 ON public.normale USING btree (personnage_id);
 )   DROP INDEX public.uniq_489cd9535e315342;
       public            kfvpaoce    false    238            �           1259    15913254    uniq_8d93d649f85e0677    INDEX     S   CREATE UNIQUE INDEX uniq_8d93d649f85e0677 ON public."user" USING btree (username);
 )   DROP INDEX public.uniq_8d93d649f85e0677;
       public            kfvpaoce    false    242            �           1259    15074230    uniq_94d4687fea8e3e4a    INDEX     [   CREATE UNIQUE INDEX uniq_94d4687fea8e3e4a ON public.competence USING btree (personage_id);
 )   DROP INDEX public.uniq_94d4687fea8e3e4a;
       public            kfvpaoce    false    233            �           1259    15081681    uniq_d73b98415e315342    INDEX     [   CREATE UNIQUE INDEX uniq_d73b98415e315342 ON public.technique USING btree (personnage_id);
 )   DROP INDEX public.uniq_d73b98415e315342;
       public            kfvpaoce    false    240            �           1259    15074239    uniq_f83fe0c45e315342    INDEX     X   CREATE UNIQUE INDEX uniq_f83fe0c45e315342 ON public.ultime USING btree (personnage_id);
 )   DROP INDEX public.uniq_f83fe0c45e315342;
       public            kfvpaoce    false    234            �           2620    15069719 !   messenger_messages notify_trigger    TRIGGER     �   CREATE TRIGGER notify_trigger AFTER INSERT OR UPDATE ON public.messenger_messages FOR EACH ROW EXECUTE PROCEDURE public.notify_messenger_messages();
 :   DROP TRIGGER notify_trigger ON public.messenger_messages;
       public          kfvpaoce    false    230    966            �           2606    15081687    talent fk_16d902f55e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.talent
    ADD CONSTRAINT fk_16d902f55e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 D   ALTER TABLE ONLY public.talent DROP CONSTRAINT fk_16d902f55e315342;
       public          kfvpaoce    false    227    3971    239            �           2606    15917029    article fk_23a0e6660bb6fe6    FK CONSTRAINT     |   ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_23a0e6660bb6fe6 FOREIGN KEY (auteur_id) REFERENCES public."user"(id);
 D   ALTER TABLE ONLY public.article DROP CONSTRAINT fk_23a0e6660bb6fe6;
       public          kfvpaoce    false    244    242    3996            �           2606    15081682    normale fk_489cd9535e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.normale
    ADD CONSTRAINT fk_489cd9535e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 E   ALTER TABLE ONLY public.normale DROP CONSTRAINT fk_489cd9535e315342;
       public          kfvpaoce    false    238    227    3971            �           2606    15927836    commentaire fk_67f068bc7294869c    FK CONSTRAINT     �   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT fk_67f068bc7294869c FOREIGN KEY (article_id) REFERENCES public.article(id);
 I   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT fk_67f068bc7294869c;
       public          kfvpaoce    false    3998    246    244            �           2606    15927831    commentaire fk_67f068bcfb88e14f    FK CONSTRAINT     �   ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT fk_67f068bcfb88e14f FOREIGN KEY (utilisateur_id) REFERENCES public."user"(id);
 I   ALTER TABLE ONLY public.commentaire DROP CONSTRAINT fk_67f068bcfb88e14f;
       public          kfvpaoce    false    246    242    3996            �           2606    15069720    personnage fk_6aea486d51383af3    FK CONSTRAINT     �   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT fk_6aea486d51383af3 FOREIGN KEY (attribut_id) REFERENCES public.attribut(id);
 H   ALTER TABLE ONLY public.personnage DROP CONSTRAINT fk_6aea486d51383af3;
       public          kfvpaoce    false    226    3967    227            �           2606    15069725    personnage fk_6aea486deaac89cf    FK CONSTRAINT     |   ALTER TABLE ONLY public.personnage
    ADD CONSTRAINT fk_6aea486deaac89cf FOREIGN KEY (voie_id) REFERENCES public.voie(id);
 H   ALTER TABLE ONLY public.personnage DROP CONSTRAINT fk_6aea486deaac89cf;
       public          kfvpaoce    false    228    3973    227            �           2606    15074240    competence fk_94d4687fea8e3e4a    FK CONSTRAINT     �   ALTER TABLE ONLY public.competence
    ADD CONSTRAINT fk_94d4687fea8e3e4a FOREIGN KEY (personage_id) REFERENCES public.personnage(id);
 H   ALTER TABLE ONLY public.competence DROP CONSTRAINT fk_94d4687fea8e3e4a;
       public          kfvpaoce    false    227    3971    233            �           2606    15081692    technique fk_d73b98415e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.technique
    ADD CONSTRAINT fk_d73b98415e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 G   ALTER TABLE ONLY public.technique DROP CONSTRAINT fk_d73b98415e315342;
       public          kfvpaoce    false    227    240    3971            �           2606    15074245    ultime fk_f83fe0c45e315342    FK CONSTRAINT     �   ALTER TABLE ONLY public.ultime
    ADD CONSTRAINT fk_f83fe0c45e315342 FOREIGN KEY (personnage_id) REFERENCES public.personnage(id);
 D   ALTER TABLE ONLY public.ultime DROP CONSTRAINT fk_f83fe0c45e315342;
       public          kfvpaoce    false    227    3971    234           