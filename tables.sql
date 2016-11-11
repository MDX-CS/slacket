CREATE TABLE cantata_day (
    bwv integer NOT NULL,
    day text NOT NULL
);

CREATE TABLE cantatas (
    bwv smallint NOT NULL,
    name text NOT NULL,
    box smallint,
    cd smallint,
    notes text
);

COPY cantata_day (bwv, day) FROM stdin;
143	Am Neujahrstag
41	Am Neujahrstag
171	Am Neujahrstag
16	Am Feste der Beschneidung Christi
108	Am Sonntag Cantate
166	Am Sonntag Cantate
58	Am Sonntag nach dem Fest der Beschneidung
153	Am Sonntag nach Neujahr
248	Am Neujahrstag
248	Am Sonntag nach Neujahr
65	Am Feste Epiphanias
123	Am Feste Epiphanias
248	Am Feste Epiphanias
154	Am 1. Sonntag nach Epiphanias
32	Am 1. Sonntag nach Epiphanias
124	Am 1. Sonntag nach Epiphanias
155	Am 2. Sonntag nach Epiphanias
13	Am 2. Sonntag nach Epiphanias
3	Am 2. Sonntag nach Epiphanias
72	Am 3. Sonntag nach Epiphanias
111	Am 3. Sonntag nach Epiphanias
156	Am 3. Sonntag nach Epiphanias
73	Am 3. Sonntag nach Epiphanias
81	Am 4. Sonntag nach Epiphanias
14	Am 4. Sonntag nach Epiphanias
92	Am Sonntag Septuagesimae
144	Am Sonntag Septuagesimae
84	Am Sonntag Septuagesimae
18	Am Sonntag Sexagesimae
181	Am Sonntag Sexagesimae
126	Am Sonntag Sexagesimae
159	Am Sonntag Estomihi
22	Am Sonntag Estomihi
23	Am Sonntag Estomihi
127	Am Sonntag Estomihi
54	Am Sonntag Oculi
182	Am Palmensonntag
4	Am 1. Ostertag
31	Am 1. Ostertag
249	Am 1. Ostertag
6	Am 2. Ostertag
66	Am 2. Ostertag
135	Am 3. Ostertag
134	Am 3. Ostertag
158	Am 3. Ostertag
158	Am Feste Mariae Reinigung
42	Am Sonntag Quasimodogeniti
67	Am Sonntag Quasimodogeniti
85	Am Sonntag Misericordias Domini
104	Am Sonntag Misericordias Domini
112	Am Sonntag Misericordias Domini
103	Am Sonntag Jubilate
146	Am Sonntag Jubilate
12	Am Sonntag Jubilate
86	Am Sonntag Rogate
87	Am Sonntag Rogate
37	Am Feste der Himmelfahrt Christi
128	Am Feste der Himmelfahrt Christi
43	Am Feste der Himmelfahrt Christi
11	Am Feste der Himmelfahrt Christi
44	Am Sonntag Exaudi
183	Am Sonntag Exaudi
172	Am 1. Pfingsttag
59	Am 1. Pfingsttag
74	Am 1. Pfingsttag
34	Am 1. Pfingsttag
173	Am 2. Pfingsttag
174	Am 2. Pfingsttag
68	Am 2. Pfingsttag
184	Am 3. Pfingsttag
175	Am 3. Pfingsttag
194	Am Sonntag Trinitatis
176	Am Sonntag Trinitatis
165	Am Sonntag Trinitatis
129	Am Sonntag Trinitatis
20	Am 1. Sonntag nach Trinitatis
39	Am 1. Sonntag nach Trinitatis
75	Am 1. Sonntag nach Trinitatis
76	Am 2. Sonntag nach Trinitatis
2	Am 2. Sonntag nach Trinitatis
135	Am 3. Sonntag nach Trinitatis
21	Am 3. Sonntag nach Trinitatis
185	Am 4. Sonntag nach Trinitatis
177	Am 4. Sonntag nach Trinitatis
24	Am 4. Sonntag nach Trinitatis
93	Am 5. Sonntag nach Trinitatis
88	Am 5. Sonntag nach Trinitatis
170	Am 6. Sonntag nach Trinitatis
9	Am 6. Sonntag nach Trinitatis
107	Am 7. Sonntag nach Trinitatis
186	Am 7. Sonntag nach Trinitatis
187	Am 7. Sonntag nach Trinitatis
45	Am 8. Sonntag nach Trinitatis
178	Am 8. Sonntag nach Trinitatis
136	Am 8. Sonntag nach Trinitatis
168	Am 9. Sonntag nach Trinitatis
94	Am 9. Sonntag nach Trinitatis
105	Am 9. Sonntag nach Trinitatis
102	Am 10. Sonntag nach Trinitatis
101	Am 10. Sonntag nach Trinitatis
46	Am 10. Sonntag nach Trinitatis
113	Am 11. Sonntag nach Trinitatis
199	Am 11. Sonntag nach Trinitatis
179	Am 11. Sonntag nach Trinitatis
35	Am 12. Sonntag nach Trinitatis
137	Am 12. Sonntag nach Trinitatis
33	Am 13. Sonntag nach Trinitatis
164	Am 13. Sonntag nach Trinitatis
77	Am 13. Sonntag nach Trinitatis
17	Am 14. Sonntag nach Trinitatis
78	Am 14. Sonntag nach Trinitatis
25	Am 14. Sonntag nach Trinitatis
99	Am 15. Sonntag nach Trinitatis
138	Am 15. Sonntag nach Trinitatis
100	Am 15. Sonntag nach Trinitatis
51	Am 15. Sonntag nach Trinitatis
27	Am 16. Sonntag nach Trinitatis
8	Am 16. Sonntag nach Trinitatis
95	Am 16. Sonntag nach Trinitatis
114	Am 17. Sonntag nach Trinitatis
148	Am 17. Sonntag nach Trinitatis
47	Am 17. Sonntag nach Trinitatis
169	Am 18. Sonntag nach Trinitatis
96	Am 18. Sonntag nach Trinitatis
56	Am 19. Sonntag nach Trinitatis
5	Am 19. Sonntag nach Trinitatis
48	Am 19. Sonntag nach Trinitatis
162	Am 20. Sonntag nach Trinitatis
180	Am 20. Sonntag nach Trinitatis
49	Am 20. Sonntag nach Trinitatis
98	Am 21. Sonntag nach Trinitatis
188	Am 21. Sonntag nach Trinitatis
38	Am 21. Sonntag nach Trinitatis
109	Am 21. Sonntag nach Trinitatis
115	Am 22. Sonntag nach Trinitatis
55	Am 22. Sonntag nach Trinitatis
89	Am 22. Sonntag nach Trinitatis
163	Am 23. Sonntag nach Trinitatis
139	Am 23. Sonntag nach Trinitatis
52	Am 23. Sonntag nach Trinitatis
60	Am 24. Sonntag nach Trinitatis
26	Am 24. Sonntag nach Trinitatis
90	Am 25. Sonntag nach Trinitatis
116	Am 25. Sonntag nach Trinitatis
70	Am 26. Sonntag nach Trinitatis
140	Am 27. Sonntag nach Trinitatis
61	Am 1. Advent
62	Am 1. Advent
36	Am 1. Advent
132	Am 4. Advent
110	Am 1. Weihnachtstag
91	Am 1. Weihnachtstag
63	Am 1. Weihnachtstag
248	Am 1. Weihnachtstag
191	Am 1. Weihnachtstag
57	Am 2. Weihnachtstag
121	Am 2. Weihnachtstag
40	Am 2. Weihnachtstag
248	Am 2. Weihnachtstag
248	Am 3. Weihnachtstag
133	Am 3. Weihnachtstag
151	Am 3. Weihnachtstag
64	Am 3. Weihnachtstag
122	Am Sonntag nach Weihnachten
152	Am Sonntag nach Weihnachten
28	Am Sonntag nach Weihnachten
82	Am Feste Mariae Reinigung
83	Am Feste Mariae Reinigung
125	Am Feste Mariae Reinigung
157	Am Feste Mariae Reinigung
200	Am Feste Mariae Reinigung
1	Zu Mariae Verkuendigung
182	Zu Mariae Verkuendigung
7	Am Feste Johannis des Taeufers
167	Am Feste Johannis des Taeufers
10	Am Feste Mariae Heimsuchung
147	Am Feste Mariae Heimsuchung
130	Am Michaelisfest
149	Am Michaelisfest
50	Am Michaelisfest
19	Am Michaelisfest
80	Am Reformationsfest
79	Am Reformationsfest
192	Am Reformationsfest
\.

COPY cantatas (bwv, name, box, cd, notes) FROM stdin;
82	Ich habe genug	1	1	\N
61	Nun komm, der Heiden Heiland	1	1	\N
170	Vergnuegte Ruh, beliebte Seelenlust	1	2	\N
133	Ich freue mich in dir	1	2	\N
97	In allen meinen Taten	1	3	\N
132	Bereitet die Wege, bereitet die Bahn	1	3	\N
72	Alles nur nach Gottes Willen	1	3	\N
113	Herr Jesu Christ du hoechstes Gut	1	4	\N
42	Am Abend aber desselbigen Sabbats	1	4	\N
33	Allein zu dir, Herr Jesu Christ	1	5	\N
56	Ich will den Kreuzstab gerne tragen	1	5	\N
37	Wer da glaeubet und getauft wird	1	5	\N
92	Ich hab in Gottes Herz und Sinn	2	1	\N
54	Widerstehe doch der Suende	2	1	\N
111	Was mein Gott will, das g'scheh allzeit	2	2	\N
159	Sehet, wir gehn hinauf gen Jerusalem	2	2	\N
22	Jesus nahm zu sich die Zwoelfe	2	2	\N
114	Ach, lieben Christen, seid getrost	2	3	\N
155	Mein Gott, wie lang, ach lange	2	3	\N
98	Was Gott tut, das ist wohlgetan	2	4	\N
188	Ich habe meine Zuversicht	2	4	\N
23	Du wahrer Gott und Davids Sohn	2	4	\N
135	Ach Herr, mich armen Suender	2	5	\N
86	Wahrlich, wahrlich, ich sage euch	2	5	\N
85	Ich bin ein guter Hirt	2	5	\N
172	Erschallet, ihr Lieder	3	1	\N
182	Himmelskoenig, sei willkommen	3	1	\N
106	Gottes Zeit ist die allerbeste Zeit	3	2	\N
199	Mein Herze schwimmt im Blut	3	2	\N
161	Komm, du suesse Todesstunde	3	2	\N
99	Was Gott tut, das ist wohlgetan	3	3	\N
35	Geist und Seele wird verwirret	3	3	\N
17	Wer Dank opfert, der preiset mich	3	3	\N
87	Bisher habt ihr nichts gebeten in meinem Namen	3	4	\N
173	Erhoehtes Fleisch und Blut	3	4	\N
117	Sei Lob und Ehr' dem hoechsten Gut	3	5	\N
168	Tue Rechnung! Donnerwort	3	5	\N
130	Herr Gott, dich loben alle wir	4	1	\N
138	Warum betruebst du duch, mein Herz?	4	1	\N
81	Jesus schlaeft, was soll ich hoffen	4	1	\N
149	Man singet mit Freuden vom Sieg	4	2	\N
169	Gott soll allein mein Herze haben	4	2	\N
45	Es ist dir gesagt, Mensch, was gut ist	4	3	\N
150	Nach dir, Herr, verlanget mich	4	3	\N
122	Das neugeborne Kindelein	4	3	\N
13	Meine Seufzer, meine Traenen	4	4	\N
144	Nimm, was dein ist, und gehe hin	4	4	\N
102	Herr, deine Augen sehen nach dem Glauben	4	5	\N
7	Christ unser Herr zum Jordan kam	4	5	\N
167	Ihr Menschen, ruehmet Gottes Liebe	2	5	\N
196	Der Herr denket an uns	4	5	\N
46	Schauet und sehet, ob irgendein Schmerz sei	5	1	\N
107	Was willst du dich betrueben	5	1	\N
179	Siehe zu, dass deine Gottesfurcht nicht Heuchelei sei	5	1	\N
163	Nur jedem das Seine	5	2	\N
96	Herr Christ, der einge Gottessohn	5	2	\N
178	Wo Gott der Herr nicht bei uns haelt	5	3	\N
156	Ich steh mit einem Fuss im Grabe	5	3	\N
27	Wer weiss, wie nahe mir mein Ende!	5	3	\N
115	Mache dich, mein Geist, bereit	5	4	\N
55	Ich armer Mensch, ich Suendenknecht	5	4	\N
94	Was frag ich nach der Welt	5	4	\N
26	Ach wie fluechtig, ach wie nichtig	5	5	\N
164	Ihr, die ihr euch von Christo nennet	5	5	\N
139	Wohl dem, der sich auf seinen Gott	5	5	\N
103	Ihr werdet weinen und heulen	6	1	\N
185	Barmherziges Herze der ewigen Liebe	6	1	\N
2	Ach Gott, vom Himmel sieh darein	6	1	\N
60	O Ewigkeit, du Donnerwort	6	2	\N
78	Jesu, der du meine Seele	6	2	\N
151	Suesser Trost, mein Jesus kommt	6	2	\N
128	Auf Christi Himmelfahrt allein	6	3	\N
154	Mein liebster Jesus ist verloren	6	3	\N
62	Nun komm, der Heiden Heiland	6	3	\N
93	Wer nun den lieben Gott laesst walten	6	4	\N
145	Ich lebe, mein Herze, zu deinem Ergoetzen	6	4	\N
8	Liebster Gott, wenn wird ich sterben?	6	5	\N
186	Aergre dich, o Seele, nicht	6	5	\N
3	Ach Gott, wie manches Herzeleid	6	5	\N
198	Lass, Fuerstin, lass noch einen Strahl	7	1	\N
110	Unser Mund sei voll Lachens	7	1	\N
73	Herr, wie du willt, so schick's mit mir	7	2	\N
9	Er ist das Heil uns kommen her	7	3	\N
91	Gelobet seist du, Jesu Christ	7	3	\N
47	Wer sich selbst erhoehet, der soll erniedriget werden	7	3	\N
152	Tritt auf die Glaubensbahn	7	4	\N
57	Selig ist der Mann	2	3	\N
125	Mit Fried und Freud ich fahr dahin	7	2	\N
157	Ich lasse dich nicht, du segnest mich denn	7	2	\N
6	Bleib bei uns, denn es will Abend werden	5	2	\N
121	Christum wir sollen loben schon	7	4	\N
36	Schwingt freudig euch empor	7	5	\N
184	Erwuenschtes Freudenlicht	7	5	\N
140	Wachet auf, ruft uns die Stimme	8	1	\N
88	Siehe, ich will viel Fischer aussenden	8	1	\N
194	Hoechsterwuenschtes Freudenfest	8	2	\N
176	Es ist ein trotzig und verzagt Ding	8	2	\N
89	Was soll ich aus dir machen, Ephraim?	8	2	\N
100	Was Gott tut, das ist wohlgetan	8	3	\N
40	Dazu ist erschienen der Sohn Gottes	8	4	\N
84	Ich bin vergnuegt mit meinem Gluecke	8	4	\N
136	Erforsche mich, mein Gott, und erfahre mein Herz	8	5	\N
187	Es wartet alles auf dich	8	5	\N
49	Ich geh und suche mit Verlangen	8	5	\N
195	Dem Gerechten muss das Licht immer wieder aufgehen	9	1	\N
1	Wie Schoen leuchtet der Morgenstern	9	1	\N
63	Christen, aetzet diesen Tag	9	1	\N
51	Jauchzet Gott in allen Landen	9	2	\N
32	Liebster Jesu, mein Verlangen	9	2	\N
14	Waer Gott nicht mit uns diese Zeit	9	2	\N
109	Ich glaube, lieber Herr, hilf meinem Unglauben!	9	3	\N
162	Ach, ich sehe, itzt, da ich zur Hochzeit gehe	9	3	\N
104	Du Hirte Israel, hoere	9	4	\N
90	Es reißet euch ein schrecklich Ende	3	1	\N
83	Erfreute Zeit im neuen Bunde	9	4	\N
183	Sie werden euch in den Bann tun	9	4	\N
5	Wo soll ich fliehen hin	9	5	\N
38	Aus tiefer Not schrei ich zu dir	9	5	\N
20	O Ewigkeit, du Donnerwort	9	5	\N
146	Wir muessen durch viel Truebsal in das Reich Gottes eingehen	10	1	\N
28	Gottlob! Nun geht das Jahr zu Ende	10	1	\N
48	Ich elender Mensch, wer wird mich erloesen	10	1	\N
39	Brich dem Hungrigen dein Brot	10	2	\N
175	Er rufet seinen Schafen mit Namen	10	2	\N
180	Schmuecke dich, o liebe Seele	10	3	\N
197	Gott ist unsre Zuversicht	10	3	\N
52	Falsche Welt, dir trau ich nicht	10	3	\N
137	Lobe den Herren, den maechtigen Koenig der Ehren	10	4	\N
25	Es ist nichts Gesundes an meinem Leibe	10	4	\N
75	Die Elenden sollen essen	10	5	\N
50	Nun ist das Heil und die Kraft	9	4	\N
59	Wer mich liebet, der wird mein Wort halten	10	5	\N
21	Ich hatte viel Bekuemmernis	10	5	\N
101	Nimm von uns, Herr, du treuer Gott	11	1	\N
127	Herr Jesu Christ, wahr' Mensch und Gott	11	1	\N
95	Christus, der ist mein Leben	11	1	\N
124	Meinen Jesum lass ich nicht	11	1	\N
12	Weinen, Klagen, Sorgen, Zagen	11	2	\N
74	Wer mich liebet, der wird mein Wort halten	11	2	\N
177	Ich ruf zu dir, Herr Jesu Christ	11	2	\N
76	Die Himmel erzaehlen die Ehre Gottes	11	3	\N
64	Sehet, welch eine Liebe hat uns der Vater erzeiget	11	4	\N
134	Ein Herz, das seinen Jesum lebend weiss	11	4	\N
105	Herr, gebe nicht ins Gericht	11	4	\N
4	Christ lag in Todes Banden	11	5	\N
70	Wachet! betet! betet! wachet!	11	5	\N
131	Aus der Tiefen rufe ich, Herr, zu dir	11	5	\N
181	Leichtgesinnte Flattergeister	12	1	\N
66	Erfreut euch, ihr Herzen	12	1	\N
148	Bringet dem Herrn Ehre seines Namens	12	2	\N
174	Ich liebe den Hoechsten von ganzen Gemuete	12	2	\N
112	Der Herr ist mein getreuer Hirt	12	2	\N
68	Also hat Gott die Welt geliebt	12	2	\N
77	Du sollt Gott, deinen Herren, lieben	12	3	\N
24	Ein ungefaerbt Gemuete	12	3	\N
126	Erhalt uns, Herr, bei deinem Wort	12	3	\N
67	Halt im Gedaechtnis Jesum Christ	12	3	\N
34	O ewiges Feuer, o Ursprung der Liebe	12	4	\N
31	Der Himmel lacht! die Erde jubilieret	12	4	\N
19	Es erhub sich ein Streit	12	4	\N
43	Gott faehret auf mit Jauchzen	10	4	\N
10	Meine Seel erhebt den Herren	11	3	\N
147	Herz und Mund und Tat und Leben	12	1	\N
158	Der Friede sei mit dir	11	5	\N
80	Ein feste Burg ist unser Gott	1	1	\N
79	Gott, der Herr, ist Sonn und Schild	8	1	\N
69	Lobe den Herrn, meine Seele	4	2	\N
119	Preise, Jerusalem, den Herrn	10	4	\N
71	Gott ist mein Koenig	11	3	\N
29	Wir danken dir, Gott, wir danken dir	12	5	\N
120	Gott, man lobet dich in der Stille	12	5	\N
65	Sie werden aus Saba alle kommen	10	2	\N
165	O heilges Geist- und Wasserbad	2	2	\N
129	Gelobet sei der Herr, mein Gott	7	5	\N
192	Nun danket alle Gott	6	4	\N
123	Liebster Immanuel, Herzog der Frommen	3	4	\N
143	Lobe den Herrn, meine Seele	10	2	\N
41	Jesu, nun sei gepreiset	12	5	\N
171	Gott, wie dein Name, so ist auch dein Ruhm	6	4	\N
16	Herr Gott, dich loben wir	1	2	\N
166	Wo gehest du hin?	7	4	\N
30	Freue dich, erloeste Schar	8	4	\N
108	Es ist euch gut, dass ich hingehe	8	3	\N
58	Ach Gott, wie manches Herzeleid	9	3	\N
153	Schau, lieber Gott, wie meine Feind	3	5	\N
248	Weihnachts-Oratorium	\N	\N	\N
190	Singet dem Herrn ein neues Lied	\N	\N	incomplete
18	Gleichwie der Regen und Schnee vom Himmel faellt	8	3	composed in Weimar
249	Oster-Oratorium	\N	\N	\N
11	Lobet Gott in Seinen Reichen	\N	\N	Himmelfahrts-Oratorium
44	Sie werden euch in den Bann tun euch	2	1	\N
191	Gloria in excelsis Deo	\N	\N	Latin text
200	Bekennen will ich seinen Namen	\N	\N	incomplete
116	Du Friedefürst, Herr Jesu Christ	4	4	\N
\.

ALTER TABLE ONLY cantata_day
    ADD CONSTRAINT cantata_day_bwv_key UNIQUE (bwv, day);

ALTER TABLE ONLY cantatas
    ADD CONSTRAINT cantatas_pkey PRIMARY KEY (bwv);

ALTER TABLE ONLY cantata_day
    ADD CONSTRAINT cantata_day_bwv_fkey FOREIGN KEY (bwv) REFERENCES cantatas(bwv);
