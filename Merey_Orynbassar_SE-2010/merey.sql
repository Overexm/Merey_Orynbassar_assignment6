PGDMP     6                    y            postgres    13.0    13.2 X    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    13709    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            T           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3411                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            U           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    17385    airline    TABLE     ?   CREATE TABLE public.airline (
    airline_id numeric(50,0) NOT NULL,
    airline_name character varying(255),
    flight_class character varying(40),
    service_id numeric(50,0)
);
    DROP TABLE public.airline;
       public         heap    postgres    false            ?            1259    17339    booking    TABLE       CREATE TABLE public.booking (
    booking_id numeric(50,0) NOT NULL,
    booking_cost numeric,
    booking_status character varying(30),
    booking_start_date date,
    booking_return_date date,
    tourist_id numeric(50,0),
    tour_id numeric(50,0),
    service_id numeric(50,0)
);
    DROP TABLE public.booking;
       public         heap    postgres    false            ?            1259    17415    car    TABLE     ?   CREATE TABLE public.car (
    car_id numeric(50,0) NOT NULL,
    car_type character varying(255),
    service_id numeric(50,0)
);
    DROP TABLE public.car;
       public         heap    postgres    false            ?            1259    17362    card    TABLE     j   CREATE TABLE public.card (
    card_id numeric(255,0) NOT NULL,
    card_network character varying(50)
);
    DROP TABLE public.card;
       public         heap    postgres    false            ?            1259    17395    cruise    TABLE     ?   CREATE TABLE public.cruise (
    cruise_id numeric(50,0) NOT NULL,
    name_of_cruises character varying(255),
    room_class character varying(50),
    service_id numeric(50,0)
);
    DROP TABLE public.cruise;
       public         heap    postgres    false            ?            1259    33993 	   furniture    TABLE     q   CREATE TABLE public.furniture (
    f_id integer NOT NULL,
    furn character varying(70),
    amount integer
);
    DROP TABLE public.furniture;
       public         heap    postgres    false            ?            1259    33991    furniture_f_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.furniture_f_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.furniture_f_id_seq;
       public          postgres    false    220            V           0    0    furniture_f_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.furniture_f_id_seq OWNED BY public.furniture.f_id;
          public          postgres    false    219            ?            1259    17445    guide    TABLE     ?   CREATE TABLE public.guide (
    guide_id numeric(50,0) NOT NULL,
    guide_name character varying(75),
    guide_gender character varying(12),
    guide_phone_no character varying(30),
    guide_email character varying(50),
    g_age integer
);
    DROP TABLE public.guide;
       public         heap    postgres    false            ?            1259    17452    guide_service    TABLE     ?   CREATE TABLE public.guide_service (
    excursion_service_id numeric(50,0) NOT NULL,
    excursion_service_name character varying(255),
    guide_id numeric(50,0),
    service_id numeric(50,0)
);
 !   DROP TABLE public.guide_service;
       public         heap    postgres    false            ?            1259    17435    hotel    TABLE       CREATE TABLE public.hotel (
    hotel_id numeric(50,0) NOT NULL,
    hotel_name character varying(255),
    hotel_class character varying(40),
    room_class character varying(40),
    hotel_book_date_from date,
    hotel_book_date_to date,
    service_id numeric(50,0)
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            ?            1259    17284    luggage    TABLE     ?   CREATE TABLE public.luggage (
    luggage_id numeric(50,0) NOT NULL,
    luggage_amount numeric(30,0),
    luggage_weight character varying(30)
);
    DROP TABLE public.luggage;
       public         heap    postgres    false            ?            1259    17367    payment    TABLE     ?   CREATE TABLE public.payment (
    payment_id numeric(50,0) NOT NULL,
    payment_date date,
    payment_amount numeric,
    booking_id numeric(50,0),
    card_id numeric(255,0)
);
    DROP TABLE public.payment;
       public         heap    postgres    false            ?            1259    17306    receiving_member    TABLE     +  CREATE TABLE public.receiving_member (
    member_id numeric(50,0) NOT NULL,
    member_name character varying(75),
    member_birth_date date,
    member_gender character varying(12),
    meber_phone_no character varying(30),
    member_email character varying(50),
    service_id numeric(50,0)
);
 $   DROP TABLE public.receiving_member;
       public         heap    postgres    false            ?            1259    17425 
   rental_car    TABLE        CREATE TABLE public.rental_car (
    rent_id numeric(50,0) NOT NULL,
    rent_date numeric(100,0),
    car_id numeric(50,0)
);
    DROP TABLE public.rental_car;
       public         heap    postgres    false            ?            1259    17467 
   restaurant    TABLE     ?   CREATE TABLE public.restaurant (
    restaurant_id numeric(50,0) NOT NULL,
    restaurant_name character varying(255),
    restaurant_date date,
    r_time time without time zone,
    service_id numeric(50,0)
);
    DROP TABLE public.restaurant;
       public         heap    postgres    false            ?            1259    17301    services    TABLE     ?   CREATE TABLE public.services (
    service_id numeric(50,0) NOT NULL,
    service_name character varying(255),
    passenger_no numeric(100,0)
);
    DROP TABLE public.services;
       public         heap    postgres    false            ?            1259    17326    tour    TABLE     ?   CREATE TABLE public.tour (
    tour_id numeric(50,0) NOT NULL,
    tour_name character varying(255),
    tour_adult_price numeric,
    tour_child_price numeric,
    travel_agency_id numeric(50,0)
);
    DROP TABLE public.tour;
       public         heap    postgres    false            ?            1259    17289    tourist    TABLE     [  CREATE TABLE public.tourist (
    tourist_id numeric(50,0) NOT NULL,
    tourist_name character varying(50) NOT NULL,
    t_birth_date date,
    tourist_gender character varying(12),
    tourist_phone_no character varying(30),
    tourist_nationality character varying(75),
    tourist_email character varying(50),
    luggage_id numeric(50,0)
);
    DROP TABLE public.tourist;
       public         heap    postgres    false            ?            1259    17405    train    TABLE     ?   CREATE TABLE public.train (
    train_id numeric(50,0) NOT NULL,
    train_name character varying(255),
    service_id numeric(50,0)
);
    DROP TABLE public.train;
       public         heap    postgres    false            ?            1259    17318    travel_agency    TABLE     ?   CREATE TABLE public.travel_agency (
    travel_agency_id numeric(50,0) NOT NULL,
    travel_agency_name character varying(255),
    travel_agency_phone_no character varying(30),
    travel_agency_address character varying(255)
);
 !   DROP TABLE public.travel_agency;
       public         heap    postgres    false            z           2604    33996    furniture f_id    DEFAULT     p   ALTER TABLE ONLY public.furniture ALTER COLUMN f_id SET DEFAULT nextval('public.furniture_f_id_seq'::regclass);
 =   ALTER TABLE public.furniture ALTER COLUMN f_id DROP DEFAULT;
       public          postgres    false    220    219    220            C          0    17385    airline 
   TABLE DATA           U   COPY public.airline (airline_id, airline_name, flight_class, service_id) FROM stdin;
    public          postgres    false    210   ?k       @          0    17339    booking 
   TABLE DATA           ?   COPY public.booking (booking_id, booking_cost, booking_status, booking_start_date, booking_return_date, tourist_id, tour_id, service_id) FROM stdin;
    public          postgres    false    207   ?l       F          0    17415    car 
   TABLE DATA           ;   COPY public.car (car_id, car_type, service_id) FROM stdin;
    public          postgres    false    213   ?n       A          0    17362    card 
   TABLE DATA           5   COPY public.card (card_id, card_network) FROM stdin;
    public          postgres    false    208   Bo       D          0    17395    cruise 
   TABLE DATA           T   COPY public.cruise (cruise_id, name_of_cruises, room_class, service_id) FROM stdin;
    public          postgres    false    211   ?o       M          0    33993 	   furniture 
   TABLE DATA           7   COPY public.furniture (f_id, furn, amount) FROM stdin;
    public          postgres    false    220   ?p       I          0    17445    guide 
   TABLE DATA           g   COPY public.guide (guide_id, guide_name, guide_gender, guide_phone_no, guide_email, g_age) FROM stdin;
    public          postgres    false    216   ?p       J          0    17452    guide_service 
   TABLE DATA           k   COPY public.guide_service (excursion_service_id, excursion_service_name, guide_id, service_id) FROM stdin;
    public          postgres    false    217   ~r       H          0    17435    hotel 
   TABLE DATA           ?   COPY public.hotel (hotel_id, hotel_name, hotel_class, room_class, hotel_book_date_from, hotel_book_date_to, service_id) FROM stdin;
    public          postgres    false    215   s       :          0    17284    luggage 
   TABLE DATA           M   COPY public.luggage (luggage_id, luggage_amount, luggage_weight) FROM stdin;
    public          postgres    false    201   Vu       B          0    17367    payment 
   TABLE DATA           `   COPY public.payment (payment_id, payment_date, payment_amount, booking_id, card_id) FROM stdin;
    public          postgres    false    209   ?u       =          0    17306    receiving_member 
   TABLE DATA           ?   COPY public.receiving_member (member_id, member_name, member_birth_date, member_gender, meber_phone_no, member_email, service_id) FROM stdin;
    public          postgres    false    204   .w       G          0    17425 
   rental_car 
   TABLE DATA           @   COPY public.rental_car (rent_id, rent_date, car_id) FROM stdin;
    public          postgres    false    214   ?{       K          0    17467 
   restaurant 
   TABLE DATA           i   COPY public.restaurant (restaurant_id, restaurant_name, restaurant_date, r_time, service_id) FROM stdin;
    public          postgres    false    218   |       <          0    17301    services 
   TABLE DATA           J   COPY public.services (service_id, service_name, passenger_no) FROM stdin;
    public          postgres    false    203   3}       ?          0    17326    tour 
   TABLE DATA           h   COPY public.tour (tour_id, tour_name, tour_adult_price, tour_child_price, travel_agency_id) FROM stdin;
    public          postgres    false    206   ?}       ;          0    17289    tourist 
   TABLE DATA           ?   COPY public.tourist (tourist_id, tourist_name, t_birth_date, tourist_gender, tourist_phone_no, tourist_nationality, tourist_email, luggage_id) FROM stdin;
    public          postgres    false    202   ?~       E          0    17405    train 
   TABLE DATA           A   COPY public.train (train_id, train_name, service_id) FROM stdin;
    public          postgres    false    212   ??       >          0    17318    travel_agency 
   TABLE DATA           |   COPY public.travel_agency (travel_agency_id, travel_agency_name, travel_agency_phone_no, travel_agency_address) FROM stdin;
    public          postgres    false    205   6?       W           0    0    furniture_f_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.furniture_f_id_seq', 1, false);
          public          postgres    false    219            ?           2606    17389    airline airline_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.airline
    ADD CONSTRAINT airline_pkey PRIMARY KEY (airline_id);
 >   ALTER TABLE ONLY public.airline DROP CONSTRAINT airline_pkey;
       public            postgres    false    210            ?           2606    17346    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (booking_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    207            ?           2606    17419    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    213            ?           2606    17366    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (card_id);
 8   ALTER TABLE ONLY public.card DROP CONSTRAINT card_pkey;
       public            postgres    false    208            ?           2606    17399    cruise cruise_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cruise
    ADD CONSTRAINT cruise_pkey PRIMARY KEY (cruise_id);
 <   ALTER TABLE ONLY public.cruise DROP CONSTRAINT cruise_pkey;
       public            postgres    false    211            ?           2606    17456 $   guide_service excursion_service_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.guide_service
    ADD CONSTRAINT excursion_service_pkey PRIMARY KEY (excursion_service_id);
 N   ALTER TABLE ONLY public.guide_service DROP CONSTRAINT excursion_service_pkey;
       public            postgres    false    217            ?           2606    33998    furniture furniture_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.furniture
    ADD CONSTRAINT furniture_pkey PRIMARY KEY (f_id);
 B   ALTER TABLE ONLY public.furniture DROP CONSTRAINT furniture_pkey;
       public            postgres    false    220            ?           2606    17451    guide guide_guide_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.guide
    ADD CONSTRAINT guide_guide_email_key UNIQUE (guide_email);
 E   ALTER TABLE ONLY public.guide DROP CONSTRAINT guide_guide_email_key;
       public            postgres    false    216            ?           2606    17449    guide guide_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.guide
    ADD CONSTRAINT guide_pkey PRIMARY KEY (guide_id);
 :   ALTER TABLE ONLY public.guide DROP CONSTRAINT guide_pkey;
       public            postgres    false    216            ?           2606    17439    hotel hotel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (hotel_id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    215            |           2606    17288    luggage luggage_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.luggage
    ADD CONSTRAINT luggage_pkey PRIMARY KEY (luggage_id);
 >   ALTER TABLE ONLY public.luggage DROP CONSTRAINT luggage_pkey;
       public            postgres    false    201            ?           2606    17374    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    209            ?           2606    17312 2   receiving_member receiving_member_member_email_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.receiving_member
    ADD CONSTRAINT receiving_member_member_email_key UNIQUE (member_email);
 \   ALTER TABLE ONLY public.receiving_member DROP CONSTRAINT receiving_member_member_email_key;
       public            postgres    false    204            ?           2606    17310 &   receiving_member receiving_member_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.receiving_member
    ADD CONSTRAINT receiving_member_pkey PRIMARY KEY (member_id);
 P   ALTER TABLE ONLY public.receiving_member DROP CONSTRAINT receiving_member_pkey;
       public            postgres    false    204            ?           2606    17429    rental_car rental_car_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.rental_car
    ADD CONSTRAINT rental_car_pkey PRIMARY KEY (rent_id);
 D   ALTER TABLE ONLY public.rental_car DROP CONSTRAINT rental_car_pkey;
       public            postgres    false    214            ?           2606    17471    restaurant restaurant_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (restaurant_id);
 D   ALTER TABLE ONLY public.restaurant DROP CONSTRAINT restaurant_pkey;
       public            postgres    false    218            ?           2606    17305    services services_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public            postgres    false    203            ?           2606    17333    tour tour_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_pkey PRIMARY KEY (tour_id);
 8   ALTER TABLE ONLY public.tour DROP CONSTRAINT tour_pkey;
       public            postgres    false    206            ~           2606    17293    tourist tourist_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tourist
    ADD CONSTRAINT tourist_pkey PRIMARY KEY (tourist_id);
 >   ALTER TABLE ONLY public.tourist DROP CONSTRAINT tourist_pkey;
       public            postgres    false    202            ?           2606    17295 !   tourist tourist_tourist_email_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.tourist
    ADD CONSTRAINT tourist_tourist_email_key UNIQUE (tourist_email);
 K   ALTER TABLE ONLY public.tourist DROP CONSTRAINT tourist_tourist_email_key;
       public            postgres    false    202            ?           2606    17409    train train_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.train
    ADD CONSTRAINT train_pkey PRIMARY KEY (train_id);
 :   ALTER TABLE ONLY public.train DROP CONSTRAINT train_pkey;
       public            postgres    false    212            ?           2606    17325     travel_agency travel_agency_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.travel_agency
    ADD CONSTRAINT travel_agency_pkey PRIMARY KEY (travel_agency_id);
 J   ALTER TABLE ONLY public.travel_agency DROP CONSTRAINT travel_agency_pkey;
       public            postgres    false    205            ?           2606    17390    airline airline_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.airline
    ADD CONSTRAINT airline_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 I   ALTER TABLE ONLY public.airline DROP CONSTRAINT airline_service_id_fkey;
       public          postgres    false    210    3202    203            ?           2606    17357    booking booking_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 I   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_service_id_fkey;
       public          postgres    false    207    203    3202            ?           2606    17352    booking booking_tour_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tour(tour_id);
 F   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_tour_id_fkey;
       public          postgres    false    3210    206    207            ?           2606    17347    booking booking_tourist_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_tourist_id_fkey FOREIGN KEY (tourist_id) REFERENCES public.tourist(tourist_id);
 I   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_tourist_id_fkey;
       public          postgres    false    3198    207    202            ?           2606    17420    car car_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 A   ALTER TABLE ONLY public.car DROP CONSTRAINT car_service_id_fkey;
       public          postgres    false    3202    203    213            ?           2606    17400    cruise cruise_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cruise
    ADD CONSTRAINT cruise_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 G   ALTER TABLE ONLY public.cruise DROP CONSTRAINT cruise_service_id_fkey;
       public          postgres    false    211    3202    203            ?           2606    17462 -   guide_service excursion_service_guide_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guide_service
    ADD CONSTRAINT excursion_service_guide_id_fkey FOREIGN KEY (guide_id) REFERENCES public.guide(guide_id);
 W   ALTER TABLE ONLY public.guide_service DROP CONSTRAINT excursion_service_guide_id_fkey;
       public          postgres    false    217    216    3232            ?           2606    17457 /   guide_service excursion_service_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guide_service
    ADD CONSTRAINT excursion_service_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 Y   ALTER TABLE ONLY public.guide_service DROP CONSTRAINT excursion_service_service_id_fkey;
       public          postgres    false    217    203    3202            ?           2606    17440    hotel hotel_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 E   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_service_id_fkey;
       public          postgres    false    203    3202    215            ?           2606    17375    payment payment_booking_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 I   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_booking_id_fkey;
       public          postgres    false    209    3212    207            ?           2606    17380    payment payment_card_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.card(card_id);
 F   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_card_id_fkey;
       public          postgres    false    3214    208    209            ?           2606    17313 1   receiving_member receiving_member_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.receiving_member
    ADD CONSTRAINT receiving_member_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 [   ALTER TABLE ONLY public.receiving_member DROP CONSTRAINT receiving_member_service_id_fkey;
       public          postgres    false    204    3202    203            ?           2606    17430 !   rental_car rental_car_car_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rental_car
    ADD CONSTRAINT rental_car_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 K   ALTER TABLE ONLY public.rental_car DROP CONSTRAINT rental_car_car_id_fkey;
       public          postgres    false    213    3224    214            ?           2606    17472 %   restaurant restaurant_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 O   ALTER TABLE ONLY public.restaurant DROP CONSTRAINT restaurant_service_id_fkey;
       public          postgres    false    218    203    3202            ?           2606    17334    tour tour_travel_agency_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_travel_agency_id_fkey FOREIGN KEY (travel_agency_id) REFERENCES public.travel_agency(travel_agency_id);
 I   ALTER TABLE ONLY public.tour DROP CONSTRAINT tour_travel_agency_id_fkey;
       public          postgres    false    205    3208    206            ?           2606    17296    tourist tourist_luggage_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tourist
    ADD CONSTRAINT tourist_luggage_id_fkey FOREIGN KEY (luggage_id) REFERENCES public.luggage(luggage_id);
 I   ALTER TABLE ONLY public.tourist DROP CONSTRAINT tourist_luggage_id_fkey;
       public          postgres    false    3196    202    201            ?           2606    17410    train train_service_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.train
    ADD CONSTRAINT train_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);
 E   ALTER TABLE ONLY public.train DROP CONSTRAINT train_service_id_fkey;
       public          postgres    false    212    203    3202            C   ?   x?}??j?0???~?Q;IK???Ch?l?v?"B?'8???_:?Rګ????$???Q???<`?.t?$t?? ?%AM#???.܀
?<~?$???????o.?ƹ?\c
????zY?????w?>???LP???:???M???@?A?y?'????<C?`?/????ؕCV?????\????
F??,??=9*?lq?K?Wlp}lqs???с@      @   ?  x???Mn1???)z?)DR?Ϻ5? m?&????G?4??U@???Ǒ??8*??r????????4h8D)??BBF?F5?GX????H?)???d9??:TR????=8w????Õr???????????u2??h 9K ???_???P?;?Rb?-XNX???kw?\??????6y|??;|<?K>??FTXnV?Nz?2?H?J??@???C?;1??YPFA]D???FmYְn???ߤ??в(?l?2?1??EjSV?>d1????pJ???8???xD+?eylM;#??>*?*ֱ??M?aJ??ܰ??L??H?èKZV????w?a????z??{?3?B?????y??A>W?????Φ?hY?g?D=??f??vB .?? D+?Ǻ-
?,(46?-?Q????rj?uI?Mj/?Ȗכ h^?9?#Gle?/'W??>????+???~f??XG?      F   d   x?=?K?0??{?A????q??Hn?
???Ѯ?????¶??????6???c??+F?Xj$L??????b?tR?D??s??tX<?"C&?\S??F? ?M      A   ?   x?3??,N?2?PƜ???%?EΉE)\&????E?ɉy
?E???\???f=?b??z?BtBm4D??????X??QtY@ͲD52?z?S???Jc,*??j???????eh?`? ?1z\\\ 7?g+      D   ?   x?M??j?@E??W?Je?&Y?S&???]t3?J"pf?&????Wi??νbX??NR??FM??3XD????p?hh??7_9?1??[??У????	?dx?i W????? ??L????/?:$??ڃ??Ÿf??Sz	T??+?8?F4?&?m?oX????h?I}??)?=,}????,G??A?j]???????;D??M?      M   (   x?3?,?OK?4?2?LJM?4?2?,IL?I???????? ~       I   ?  x?]?1s?0??կ??B???ĩ?d&vy??5?N? ??om?77W????~o??p?<??"z????)?\??K??(ai??O???:?C??b'?k?D?r?2m?D?8?`???b?e?u?Z*???=???h?%?<???C???S@?&z??:???>_??TB?V:+??M3??h?????I8?l1z?????JǺ?,?]?
??m?-?????4G????o?2V?? ot?1?????U??t?b?ߌ??TR?\&Ji?U?m????X??m?v+?J?lo;????????V?"ɪ??^????m@???U??b?>:?yF߬tͷ?N??H.J????g<"ckMt
?/??m?m??&??N?R*煚?3?????c??m?      J   ?   x?u?1?0g?}@PX?e;c
t??p?.??;???.<J%??я?[`b?ab??%?L.?Ȭ+?6???P??hh?@?Bl???ٖ??4gQ?dO?1Q????2????ڗ?9?}?y؁F???ߝ??4?      H   0  x?uTKr?0]???(Q??n?ę?q*????kq?ȤG?$???^NRH?%׵V|<>  ???n
qk-d?̿=???7"Ѹ?r?b??"M|^;????m???S$???Bg??j??iȑ??G??ڈ????"6???b?-6?<??a?J????U?n?9??qQ9C????&?!6?C???)-??A?{Z?̜?s̸??Ƀ{?麞?????&H?I??Yn???n?x:+??r8yH???76?E?iq?????](?)^# B???ɶ?&???:( ?\[??/&׹?? W?=? ?ȟ}??????b?:{֔???C?H!??:??6?Y6 ????R?%?t??_?;u????'?!P?<??????????Y??7N՞S?????yTR}???*????7?@?\??]S?k??ݎw??iyܓa?젬B)??7D??.?-??QO??????n???}T???!???:w?<8??,tQ??Ű_ϰ9>??t?m
?D=d;d'g{]??????P@|??\??xz?I?˧?\???S3ia}B>T?? ?_??J?      :   ?   x?=??1C?P?V???g?
rH鿎 ?ٓ?H a,??y{XX?I=5LҰnK??&Z?E?s#i'?']??qB0Z6???g	?i??????T??????:???&???P?RL??L???ÿ/w?gk*.      B   5  x?m?ۍ?0???? ?z?r?ב%??VȌE,W??U?G?Sw??O?"??j'&BK?O,?V=?(?}H/???|?I??x?+?ǻtHM?(:<8??y?B\h
???-ba.b]?T~{Y?Ms???B??H???!ې?3C1?.f??g???6s???@?c?v?*/G?r1F???0oP{?Y??4?o?d^?B&?/??ix\?L2Й???0?`BW?y??Lt_?????ގ??^L?ę`0M?'?3????S{??x?id????:h??s??,;??Y???Yn?? |?9??      =   ?  x?MU?r?8]??`	\HBvd??c?2?????lȠXH?8_?W'???e??=/?K+{M?*k?vN#\KR?? =)???2?˜RQPN????ӝ?h??/??O'=h??۵SsĨ????/z?(???*?.D]ը???X6??z?K*?S??֧??Q \׬(iA?Ά?*Â?u?
	??0???Q9\7??.?G{? i?У?*\?'???)R???.??yx1???T?????e??i???_?Sv??x??cot??}?/??+????$?{?S?????8C?2?%???l?<?~9?0?*??ע??o/??ˠ]?ȁtb'W??1?s\ ???C{?}sZ_t?I??X?[?J?NY???d???pF@=?JP?e~???sNc???><??Lp???V??^?@0?+9p+Ȼ??du-sZ?ץ$hl??N3????k;?/;G??qu?
????V?"^K?N?LV2??y%p??y'?f<4????P8?????? ??He????J2Ad?IY?%d???!?:6?d?????*?xB0????o?oG??.h??*,?Ѣ&?B]?f???iZe?u?U&@?q??U??ۣq}|~?????!?? Y?%tJV????????g?U??A$D????K????o)!1????g??s?ct?@?3?>5A???:???|$?????k???}0???^Do?*?3NH?)+?,+Ԏ?ƶ&e??E,Н?f??=?K?ݦ??*V??J&i?y]p*%??A?#P??gG?Zy?T+??^6?xL ?|?H?? ?%z??	?Z??nK?`?	??q????????VTɶ??$??	$Pp0?9?d,??E+?0l??2!%???J?3???z^6??!??@d??p!)(?4ju?v|n???%??????/X+?	?d??Ĭ?9??+)????	???̇?G'????t?=??m_\ Dn?A???kR??A_?n???qh???0[3?KDh}???I?xk??qt?*P??s??!}?????6xn:u???????$??a?gX????E?+?X?["?m?3*?C^r???3^?3???e?c	?ß?^2???-v?2f?#?as)?%????y?:???k????f'T^ ??}?Z??Xs??6{??6????o5e?U4?U?I_?F??k?~]?CEI?9$I?????      G   :   x??? 1?޸?UH&W/鿎?c?d???Z2CSEik?d?/?:???-?vv?>?*??      K     x?=??N?0??ާ?0?n??ܐ(*?"???U?Hl?q}{?!???J?fwfH?Cｋ?{L????b?Fi?+ڷ?i?Q?O6?a?????d?h}Zi֦QT?lD?
??????O?????.???TxH.?>?6??|????j????/????bE^DM[??2?S???M?4?_V??T-??+a/??at?!\?9?>Y?,ABL??I1?`??@f?????pkm?????+@??&gG<k+?U?C??)?B?v??y??P?]?bԨ>? ?4?\?      <   ?   x?}?M
?@?ᵞbNP????2??JI	z?sT??*?|???????F" ̦,*????6?f??M]?Ŵ??<??i?<#?????Sr??=???r????cv??{?=????????xm??`l?M???l?z?l?????l[      ?   ?   x?%?A? ????O?C7???h?XDѥ?[6Z?:??S?x??A9Z????G?b?????I???t?9?E<??n?TB3?RDX??i[?\{?J???&X?MqYb?$w??erP?0?8???o???ڳM?4?????????3,??13Y??c?P?@w?Q?	??%I???3      ;   ?  x?m?Os?????S?????@?p??e???J?U?L?F????'?n??G@???W?MR????9??K?nr??VNu?ф湈hь?םj5IنS?M?8??T????ǻ??yVum*;?q?X۴???p???:|7Mo 3Q?W`"7<c[I?(?J?<????|?{??^?a??^M͞??McO?	??:3??'g?\)}?,'??*Ӎ?ҭ?<J?4&??TO?Fw?Pug??jOx Ȯ??q??{??uo??)?8?X???tè?扌?'??v???ӦO??ڃ雛?v$	R????K?Ş??ò(????[Γ(??]q?T3??(Fg??>??????/???!???g|?"&?%f\n???D\???"?N????]a?<??*|??[???Կ??*?LDq._??*;?:+?+6?D???S%l?k?+_[<??_X,a?䖦Y?J?ȭ?U?i?I????p0????g???ɭm[Ӈ??>?V???<w?ʫΌ?-OSX*e???a
b??6M^7?~?J??0???V?T??:?l???A?"?r!?????V?X?!?*???????d?q*Mxo??"?w|?4ͷ?)?4!wo???ˢ,??"??G?]?2????w??F?
83????[W??P????~ֺ?+N?/{?~????/3?i?????FM?uj??օ?!??34P??]?7vr??:?????6_g?g???2??4????{]/?5Í?'B? )?Q????S????	??g&?N?f[)E$???t?V?????E??8?")``?
??u??>{?d???v ?w"0???Ʃ??k?N]?$ӛ???Q??l~PM??(.?K??????60z"	?5????~E?????]?,`1??.}???1H{
????F?d????I?P?=i+T?????6??Q????S?*<?:? ?ٖ%yĽ;_?????P4N?Ԩ??\F>?.??????5~x塑\?1`?i<?mU?T
??ڗ?PA?$@8 Q}	?g.???e9x??B?|?%[??H???i|/??`??i??Q9?y??Z??????Y'?{0[??/?6A?B???6??t?>????P=Tva??{?????!?}???C?T???b2{???0???Ũ?=??t??<??fo????$?N(x5U??#??qf??4vPj8?c?? 3????u?7?OG??̤x<x?????A?ÿ4ֻ?Tgkk,???O?\?? ??3VF?i'=T6?	}Y?Hyoa?H??{??T~}???N_\??Tc??J4x?2?3?3???tv????f?ns??B1?Wn?k?b=???7??<?ɣZ?<??u?Ȯ?Ml,#??t?C׽N??{*N???????vY??|Y_?@??[?O1F$|?܁裚ܩ??9???bs?[???"Cr??/a$6??,H??K?s?޴f???????碙??P*?7Ӂ0p?????{???R??1?????W?????ߋ?9??x?;?Oȟ? ;;?pw0???k?????ha??:.??tuأJg?𒀋W???F?t??U?@2	?????֫?Bia;h8Q??????vثw?*?>yOb.???,??WL&?%?|?a"U=[ʊ?E?Su??B??[\;???u? J??^n?%Ad?I?????X?^??'?T?????qh??j??ai?%?Ek??
?x??W??;ɓ)??-..^ȥ?5?\?qo?D??]?(P???b?y?????????????r.??????? ?d      E   ?   x??A?0 ???+?Ƃ
???4???FWiR[?mE~???1pR+>Q?Ub?ػ??]?!?7{Xc	???i?&?q;??ze????.k??L?\?(J?`?	??΢?c?S?ߔ]غ?g(??@?-O????m?????.8      >   a   x?3???+I-?K,???K?QpL)K?+)-J-V)J,K??41?07??4???5?44??04?T??????+Qp)?Sp*?ϫ?Q??T04013?????? ?D?     