PGDMP                           w           BMW_SUPPLIERS    11.2 (Debian 11.2-1.pgdg90+1)    11.2 5               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    32785    BMW_SUPPLIERS    DATABASE        CREATE DATABASE "BMW_SUPPLIERS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE "BMW_SUPPLIERS";
             postgres    false            �            1259    32849    ALTERNATE_NAME    TABLE     �   CREATE TABLE public."ALTERNATE_NAME" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "SUPPLIER_ID" bigint
);
 $   DROP TABLE public."ALTERNATE_NAME";
       public         postgres    false            �            1259    32847    ALTERNATE_NAME_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."ALTERNATE_NAME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."ALTERNATE_NAME_ID_seq";
       public       postgres    false    209            �           0    0    ALTERNATE_NAME_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ALTERNATE_NAME_ID_seq" OWNED BY public."ALTERNATE_NAME"."ID";
            public       postgres    false    208            �            1259    32823    BRANCH    TABLE     �   CREATE TABLE public."BRANCH" (
    "ID" bigint NOT NULL,
    "NUMBER" character varying(255),
    "NAME" character varying(255),
    "POST_CODE" character varying(255),
    "STREET_ID" bigint,
    "SUPPLIER_ID" bigint
);
    DROP TABLE public."BRANCH";
       public         postgres    false            �            1259    32821    BRANCH_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."BRANCH_ID_seq";
       public       postgres    false    205            �           0    0    BRANCH_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."BRANCH_ID_seq" OWNED BY public."BRANCH"."ID";
            public       postgres    false    204            �            1259    32807    CITY    TABLE     u   CREATE TABLE public."CITY" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "COUNTRY_ID" bigint
);
    DROP TABLE public."CITY";
       public         postgres    false            �            1259    32805    CITY_ID_seq    SEQUENCE     v   CREATE SEQUENCE public."CITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."CITY_ID_seq";
       public       postgres    false    201            �           0    0    CITY_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."CITY_ID_seq" OWNED BY public."CITY"."ID";
            public       postgres    false    200            �            1259    32796    COUNTRY    TABLE     �   CREATE TABLE public."COUNTRY" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "ISO2" character varying(255),
    "ISO3" character varying(255),
    "REGION_ID" bigint
);
    DROP TABLE public."COUNTRY";
       public         postgres    false            �            1259    32794    COUNTRY_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."COUNTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."COUNTRY_ID_seq";
       public       postgres    false    199            �           0    0    COUNTRY_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."COUNTRY_ID_seq" OWNED BY public."COUNTRY"."ID";
            public       postgres    false    198            �            1259    32788    REGION    TABLE     ^   CREATE TABLE public."REGION" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255)
);
    DROP TABLE public."REGION";
       public         postgres    false            �            1259    32786    REGION_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."REGION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."REGION_ID_seq";
       public       postgres    false    197            �           0    0    REGION_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."REGION_ID_seq" OWNED BY public."REGION"."ID";
            public       postgres    false    196            �            1259    32815    STREET    TABLE     t   CREATE TABLE public."STREET" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "CITY_ID" bigint
);
    DROP TABLE public."STREET";
       public         postgres    false            �            1259    32813    STREET_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."STREET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."STREET_ID_seq";
       public       postgres    false    203            �           0    0    STREET_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."STREET_ID_seq" OWNED BY public."STREET"."ID";
            public       postgres    false    202            �            1259    32836    SUPPLIER    TABLE     �   CREATE TABLE public."SUPPLIER" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "NUMBER" character varying(255),
    "TYPE_ID" bigint
);
    DROP TABLE public."SUPPLIER";
       public         postgres    false            �            1259    32834    SUPPLIER_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."SUPPLIER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."SUPPLIER_ID_seq";
       public       postgres    false    207            �           0    0    SUPPLIER_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."SUPPLIER_ID_seq" OWNED BY public."SUPPLIER"."ID";
            public       postgres    false    206            �            1259    32857    TYPE    TABLE     \   CREATE TABLE public."TYPE" (
    "ID" bigint NOT NULL,
    "NAME" character varying(255)
);
    DROP TABLE public."TYPE";
       public         postgres    false            �            1259    32855    TYPE_ID_seq    SEQUENCE     v   CREATE SEQUENCE public."TYPE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."TYPE_ID_seq";
       public       postgres    false    211            �           0    0    TYPE_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."TYPE_ID_seq" OWNED BY public."TYPE"."ID";
            public       postgres    false    210            �
           2604    32852    ALTERNATE_NAME ID    DEFAULT     |   ALTER TABLE ONLY public."ALTERNATE_NAME" ALTER COLUMN "ID" SET DEFAULT nextval('public."ALTERNATE_NAME_ID_seq"'::regclass);
 D   ALTER TABLE public."ALTERNATE_NAME" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    32826 	   BRANCH ID    DEFAULT     l   ALTER TABLE ONLY public."BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('public."BRANCH_ID_seq"'::regclass);
 <   ALTER TABLE public."BRANCH" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    32810    CITY ID    DEFAULT     h   ALTER TABLE ONLY public."CITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."CITY_ID_seq"'::regclass);
 :   ALTER TABLE public."CITY" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    32799 
   COUNTRY ID    DEFAULT     n   ALTER TABLE ONLY public."COUNTRY" ALTER COLUMN "ID" SET DEFAULT nextval('public."COUNTRY_ID_seq"'::regclass);
 =   ALTER TABLE public."COUNTRY" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    32791 	   REGION ID    DEFAULT     l   ALTER TABLE ONLY public."REGION" ALTER COLUMN "ID" SET DEFAULT nextval('public."REGION_ID_seq"'::regclass);
 <   ALTER TABLE public."REGION" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    32818 	   STREET ID    DEFAULT     l   ALTER TABLE ONLY public."STREET" ALTER COLUMN "ID" SET DEFAULT nextval('public."STREET_ID_seq"'::regclass);
 <   ALTER TABLE public."STREET" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    32839    SUPPLIER ID    DEFAULT     p   ALTER TABLE ONLY public."SUPPLIER" ALTER COLUMN "ID" SET DEFAULT nextval('public."SUPPLIER_ID_seq"'::regclass);
 >   ALTER TABLE public."SUPPLIER" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    32860    TYPE ID    DEFAULT     h   ALTER TABLE ONLY public."TYPE" ALTER COLUMN "ID" SET DEFAULT nextval('public."TYPE_ID_seq"'::regclass);
 :   ALTER TABLE public."TYPE" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2606    32854 "   ALTERNATE_NAME ALTERNATE_NAME_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ALTERNATE_NAME"
    ADD CONSTRAINT "ALTERNATE_NAME_pkey" PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public."ALTERNATE_NAME" DROP CONSTRAINT "ALTERNATE_NAME_pkey";
       public         postgres    false    209            �
           2606    32831    BRANCH BRANCH_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."BRANCH"
    ADD CONSTRAINT "BRANCH_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."BRANCH" DROP CONSTRAINT "BRANCH_pkey";
       public         postgres    false    205            �
           2606    32812    CITY CITY_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."CITY"
    ADD CONSTRAINT "CITY_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."CITY" DROP CONSTRAINT "CITY_pkey";
       public         postgres    false    201            �
           2606    32804    COUNTRY COUNTRY_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."COUNTRY"
    ADD CONSTRAINT "COUNTRY_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."COUNTRY" DROP CONSTRAINT "COUNTRY_pkey";
       public         postgres    false    199            �
           2606    32846    SUPPLIER NUMBER 
   CONSTRAINT     R   ALTER TABLE ONLY public."SUPPLIER"
    ADD CONSTRAINT "NUMBER" UNIQUE ("NUMBER");
 =   ALTER TABLE ONLY public."SUPPLIER" DROP CONSTRAINT "NUMBER";
       public         postgres    false    207            �
           2606    32793    REGION REGION_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."REGION"
    ADD CONSTRAINT "REGION_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."REGION" DROP CONSTRAINT "REGION_pkey";
       public         postgres    false    197            �
           2606    32820    STREET STREET_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."STREET"
    ADD CONSTRAINT "STREET_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."STREET" DROP CONSTRAINT "STREET_pkey";
       public         postgres    false    203            �
           2606    32844    SUPPLIER SUPPLIER_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."SUPPLIER"
    ADD CONSTRAINT "SUPPLIER_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."SUPPLIER" DROP CONSTRAINT "SUPPLIER_pkey";
       public         postgres    false    207            �
           2606    32862    TYPE TYPE_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."TYPE"
    ADD CONSTRAINT "TYPE_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."TYPE" DROP CONSTRAINT "TYPE_pkey";
       public         postgres    false    211            �
           2606    32833    BRANCH UQ_NR_ZA 
   CONSTRAINT     a   ALTER TABLE ONLY public."BRANCH"
    ADD CONSTRAINT "UQ_NR_ZA" UNIQUE ("NUMBER", "SUPPLIER_ID");
 =   ALTER TABLE ONLY public."BRANCH" DROP CONSTRAINT "UQ_NR_ZA";
       public         postgres    false    205    205                       2606    32888 )   ALTERNATE_NAME fk_ALTERNATE_NAME_SUPPLIER    FK CONSTRAINT     �   ALTER TABLE ONLY public."ALTERNATE_NAME"
    ADD CONSTRAINT "fk_ALTERNATE_NAME_SUPPLIER" FOREIGN KEY ("SUPPLIER_ID") REFERENCES public."SUPPLIER"("ID");
 W   ALTER TABLE ONLY public."ALTERNATE_NAME" DROP CONSTRAINT "fk_ALTERNATE_NAME_SUPPLIER";
       public       postgres    false    2808    209    207                        2606    32878    BRANCH fk_BRANCH_STREET    FK CONSTRAINT     �   ALTER TABLE ONLY public."BRANCH"
    ADD CONSTRAINT "fk_BRANCH_STREET" FOREIGN KEY ("STREET_ID") REFERENCES public."STREET"("ID");
 E   ALTER TABLE ONLY public."BRANCH" DROP CONSTRAINT "fk_BRANCH_STREET";
       public       postgres    false    2800    203    205                       2606    32893    BRANCH fk_BRANCH_SUPPLIER    FK CONSTRAINT     �   ALTER TABLE ONLY public."BRANCH"
    ADD CONSTRAINT "fk_BRANCH_SUPPLIER" FOREIGN KEY ("SUPPLIER_ID") REFERENCES public."SUPPLIER"("ID");
 G   ALTER TABLE ONLY public."BRANCH" DROP CONSTRAINT "fk_BRANCH_SUPPLIER";
       public       postgres    false    207    205    2808            �
           2606    32868    CITY fk_CITY_COUNTRY    FK CONSTRAINT     �   ALTER TABLE ONLY public."CITY"
    ADD CONSTRAINT "fk_CITY_COUNTRY" FOREIGN KEY ("COUNTRY_ID") REFERENCES public."COUNTRY"("ID");
 B   ALTER TABLE ONLY public."CITY" DROP CONSTRAINT "fk_CITY_COUNTRY";
       public       postgres    false    199    2796    201            �
           2606    32863    COUNTRY fk_COUNTRY_REGION    FK CONSTRAINT     �   ALTER TABLE ONLY public."COUNTRY"
    ADD CONSTRAINT "fk_COUNTRY_REGION" FOREIGN KEY ("REGION_ID") REFERENCES public."REGION"("ID");
 G   ALTER TABLE ONLY public."COUNTRY" DROP CONSTRAINT "fk_COUNTRY_REGION";
       public       postgres    false    2794    197    199            �
           2606    32873    STREET fk_STREET_CITY    FK CONSTRAINT     }   ALTER TABLE ONLY public."STREET"
    ADD CONSTRAINT "fk_STREET_CITY" FOREIGN KEY ("CITY_ID") REFERENCES public."CITY"("ID");
 C   ALTER TABLE ONLY public."STREET" DROP CONSTRAINT "fk_STREET_CITY";
       public       postgres    false    2798    203    201                       2606    32883    SUPPLIER fk_SUPPLIER_TYPE    FK CONSTRAINT     �   ALTER TABLE ONLY public."SUPPLIER"
    ADD CONSTRAINT "fk_SUPPLIER_TYPE" FOREIGN KEY ("TYPE_ID") REFERENCES public."TYPE"("ID");
 G   ALTER TABLE ONLY public."SUPPLIER" DROP CONSTRAINT "fk_SUPPLIER_TYPE";
       public       postgres    false    2812    211    207           