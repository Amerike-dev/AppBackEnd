PGDMP         0    
        
    z         	   AmerikeDB    15.1    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24593 	   AmerikeDB    DATABASE        CREATE DATABASE "AmerikeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "AmerikeDB";
                postgres    false            �            1259    24602    assets    TABLE     �   CREATE TABLE public.assets (
    id integer NOT NULL,
    name "char" NOT NULL,
    category integer NOT NULL,
    career integer NOT NULL
);
    DROP TABLE public.assets;
       public         heap    postgres    false            �            1259    24622    career    TABLE     R   CREATE TABLE public.career (
    id integer NOT NULL,
    name "char" NOT NULL
);
    DROP TABLE public.career;
       public         heap    postgres    false            �            1259    24599 	   set_aside    TABLE       CREATE TABLE public.set_aside (
    id integer NOT NULL,
    id_asset integer NOT NULL,
    id_user integer NOT NULL,
    year integer NOT NULL,
    week integer NOT NULL,
    day integer NOT NULL,
    schedule_start integer NOT NULL,
    schedule_end integer NOT NULL
);
    DROP TABLE public.set_aside;
       public         heap    postgres    false            �            1259    24612    user    TABLE     8   CREATE TABLE public."user" (
    id integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            
          0    24602    assets 
   TABLE DATA           <   COPY public.assets (id, name, category, career) FROM stdin;
    public          postgres    false    215   �                 0    24622    career 
   TABLE DATA           *   COPY public.career (id, name) FROM stdin;
    public          postgres    false    217   �       	          0    24599 	   set_aside 
   TABLE DATA           i   COPY public.set_aside (id, id_asset, id_user, year, week, day, schedule_start, schedule_end) FROM stdin;
    public          postgres    false    214   �                 0    24612    user 
   TABLE DATA           $   COPY public."user" (id) FROM stdin;
    public          postgres    false    216          s           2606    24606    assets assets_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.assets DROP CONSTRAINT assets_pkey;
       public            postgres    false    215            w           2606    24626    career career_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.career
    ADD CONSTRAINT career_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.career DROP CONSTRAINT career_pkey;
       public            postgres    false    217            q           2606    24633    set_aside id 
   CONSTRAINT     J   ALTER TABLE ONLY public.set_aside
    ADD CONSTRAINT id PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.set_aside DROP CONSTRAINT id;
       public            postgres    false    214            u           2606    24616    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            x           2606    24607    set_aside id_assets    FK CONSTRAINT     ~   ALTER TABLE ONLY public.set_aside
    ADD CONSTRAINT id_assets FOREIGN KEY (id_asset) REFERENCES public.assets(id) NOT VALID;
 =   ALTER TABLE ONLY public.set_aside DROP CONSTRAINT id_assets;
       public          postgres    false    214    3187    215            z           2606    24627    assets id_career    FK CONSTRAINT     y   ALTER TABLE ONLY public.assets
    ADD CONSTRAINT id_career FOREIGN KEY (career) REFERENCES public.career(id) NOT VALID;
 :   ALTER TABLE ONLY public.assets DROP CONSTRAINT id_career;
       public          postgres    false    3191    217    215            y           2606    24617    set_aside id_user    FK CONSTRAINT     {   ALTER TABLE ONLY public.set_aside
    ADD CONSTRAINT id_user FOREIGN KEY (id_user) REFERENCES public."user"(id) NOT VALID;
 ;   ALTER TABLE ONLY public.set_aside DROP CONSTRAINT id_user;
       public          postgres    false    216    3189    214            
      x������ � �            x������ � �      	      x������ � �            x������ � �     