use umfrage
SET IDENTITY_INSERT dbo.t_question ON
INSERT INTO dbo.t_question (id, question_text, question_type)
-- allgemein
VALUES (1, N'Geschlecht', 1),
       (2, N'Familienstand', 1),
       (3, N'Anzahl Kinder', 1),
       (4, N'Höchster Abschluss', 1),
       (5, N'Berufsgruppe', 1),
       (6, N'Bruttoeinkommen', 4),
       (7, N'In welchem Umfeld wurden Sie auf das Thema Rente aufmerksam geworden', 2),
       (8, N'In wieweit hat das Thema Rente Einfluss auf Ihre Familienplanung', 1),
       (9, N'Was glauben Sie wird das Renteneintrittsalter sein wenn Sie in Rente gehen?', 1),
       (10, N'Mit welchem Alter würden Sie gerne in Rente gehen?', 4),
       (11, N'Wie sehr haben Sie sich bisher mit dem Thema Rente beschäftigt?', 1),
       (12, N'Wie gut schätzen Sie Ihr Wissen über die gesetzliche Rentenversicherung ein?', 1),
       (13,
        N'„Denn eins ist sicher – die Rente“. Würden Sie dieser Aussage eines Wahlplakats von 1986 heute noch zustimmen?',
        1),
       (14,
        N'Welche der folgenden Begriffe könnten Sie jemand anderem in einfachen Worten erklären?',
        2),
       (15, N'Wie ausschlaggebend war/ist Ihre spätere Rente für Ihre Karriereentscheidung?', 1),
       (16,
        N'Für wie wahrscheinlich halten Sie es, dass Sie in Ihrem aktuellem Beruf bis zur Rente arbeiten werden?',
        1),
       (17, N'In welchem Alter haben Sie angefangen Regelmäßig in die Gesetzliche RV einzuzahlen',
        4),
       (18,
        N'Wie schätzen sie ihre finanzielle Absicherung im Alter durch die gesetzliche Rente ein?',
        1),
       (19,
        N'Wie ausschlaggebend war die betriebliche Rente oder Möglichkeit zu vermögenswirksamen Leistungen o.Ä. für die Wahl Ihres Arbeitgebers?',
        1),
       (20,
        N'Wie schätzen Sie die Auswirkungen durch die aktuellen Preissteigerungen auf Ihre Rentensituation ein?',
        1),
       (21, N'Wie viel Aufwand haben Sie in die Planung Ihrer Altersvorsorge gesteckt?', 1),
       (22,
        N'Welche der folgenden Maßnahmen zur Sicherung Ihrer Rente haben Sie bereits getroffen?',
        2),
       (23, N'Wie sicher fühlen Sie sich bezüglich ihrer Vorkehrungen', 1),
       (24, N'Wie viel Geld investieren Sie in etwa monatlich in Ihre private Altersvorsorge?', 1),
       (25, N'Hat diese Umfrage Sie angeregt für Ihre Rente Maßnahmen zu ergreifen?', 0) -- yes no

SET IDENTITY_INSERT dbo.t_question OFF

-- questions
INSERT INTO dbo.t_question_answer (question_p_question_id, answer_option, answer_value, html_type)
VALUES (1, N'männlich', 0, 'a'),      -- geschlecht
       (1, N'weiblich', 1, 'a'),
       (1, N'diverse', 2, 'a'),
-- 2 Abschluss
       (2, N'Ledig', 0, 'span'),
       (2, N'Verheiratet', 1, 'span'),
       (2, N'Eingetragene Lebenspartnerschaft', 2, 'span'),
       (2, N'Geschieden', 3, 'span'),
       (2, N'Verwitwet', 4, 'span'),
       (3, N'keine', 0, 'span'),
       (3, N'eins', 1, 'span'),
       (3, N'zwei', 2, 'span'),
       (3, N'Drei', 3, 'span'),
       (3, N'vier', 4, 'span'),
       (3, N'fünf', 5, 'span'),
       (3, N'mehr als fünf', 6, 'span'),
-- 4 -- abschluss
       (4, N'Ohne Abschluss', 0, 'span'),
       (4, N'Hauptschulabschluss', 1, 'span'),
       (4, N'Mittlere Reife/ Realschulabschluss', 2, 'span'),
       (4, N'Hochschulreife', 3, 'span'),
       (4, N'Nachschulischer Abschluss', 4, 'span'),
       (4, N'Ausbildung', 5, 'span'),
       (4, N'Studium', 6, 'span'),
-- 5
       (5, N'Schüler*in', 0, 'span'), -- berufsgruppe
       (5, N'Auszubildende*r', 1, 'span'),
       (5, N'Student*in', 2, 'span'),
       (5, N'Angestellte*r', 3, 'span'),
       (5, N'Selbstständige*r', 4, 'span'),
       (5, N'Beamte*r', 5, 'span'),
       (5, N'Rentner*in/Pensionär*in', 6, 'span'),
-- 6 Bruttoeinkommen
       (6, N'kein Einkommen', 0, 'span'),
       (6, N'weniger als 520 €', 1, 'span'),
       (6, N'519 €', 2, 'span'),
       (6, N'520 - 999 €', 3, 'span'),
       (6, N'1000 - 1499 €', 4, 'span'),
       (6, N'1500 - 1999 €', 5, 'span'),
       (6, N'2000 - 2999 €', 6, 'span'),
       (6, N'3000 - 3999 €', 7, 'span'),
       (6, N'4000 - 4999 €', 8, 'span'),
       (6, N'5000 - 5999 €', 9, 'span'),
       (6, N'mehr als 6000 €', 10, 'span'),
-- 7
       (7, N'Familie', -1, 'span'),   -- umfeld
       (7, N'Freunde', -1, 'span'),
       (7, N'Beruf', -1, 'span'),
       (7, N'Schule', -1, 'span'),
       (7, N'Rentenbescheid', -1, 'span'),
       (7, N'Werbekampagne', -1, 'span'),
       (7, N'Politik', -1, 'span'),
       (7, N'Soziale Medien', -1, 'span'),
       (7, N'Sonstige', -1, 'span'),
       (7, N'Rente? noch nie gehört.', -1, 'span'),
-- 8 Sehr großer Einfluss Großer Einfluss Eher großer Einfluss Eher geringer Einfluss Geringer Einfluss Sehr geringer Einfluss Kein Einfluss
       (8, N'Kein Einfluss', 0, 'span'),
       (8, N'Sehr geringer Einfluss', 1, 'span'),
       (8, N'Geringer Einfluss', 2, 'span'),
       (8, N'Eher geringer Einfluss', 3, 'span'),
       (8, N'Eher großer Einfluss', 4, 'span'),
       (8, N'Großer Einfluss', 5, 'span'),
       (8, N'Sehr großer Einfluss', 6, 'span'),
-- 9 <63 <65 <67 <69 <71 <73 <75 >=75 ggf input
       (9, N'unter 60', 59, 'span'),
       (9, N'61', 61, 'span'),
       (9, N'63', 63, 'span'),
       (9, N'65', 65, 'span'),
       (9, N'67', 67, 'span'),
       (9, N'69', 69, 'span'),
       (9, N'61', 71, 'span'),
       (9, N'73', 73, 'span'),
       (9, N'75', 75, 'span'),
       (9, N'77', 77, 'span'),
-- 10 Mit welchem Alter würden Sie gerne in Rente gehen?
       (10, N'vor 60', 59, 'span'),
       (10, N'61', 61, 'span'),
       (10, N'63', 63, 'span'),
       (10, N'65', 65, 'span'),
       (10, N'67', 67, 'span'),
       (10, N'69', 69, 'span'),
       (10, N'61', 71, 'span'),
       (10, N'73', 73, 'span'),
       (10, N'75', 75, 'span'),
       (10, N'77', 77, 'span'),
-- 11 gar nicht sehr wenig wenig eher wenig eher ausführlich ausführlich sehr ausführlich
       (11, N'Gar nicht', 0, 'span'),
       (11, N'Sehr wenig', 1, 'span'),
       (11, N'Wenig', 2, 'span'),
       (11, N'Eher Wenig', 3, 'span'),
       (11, N'Eher ausführlich', 4, 'span'),
       (11, N'Ausführlich', 5, 'span'),
       (11, N'Sehr Ausführlich', 6, 'span'),
-- 12 sehr schlecht schlecht eher schlecht eher gut gut sehr gut
       (12, N'Ich kenne mich nicht aus', 0, 'span'),
       (12, N'Sehr schlecht', 1, 'span'),
       (12, N'Schlecht', 2, 'span'),
       (12, N'Eher Schlecht', 3, 'span'),
       (12, N'Eher gut', 4, 'span'),
       (12, N'Gut', 5, 'span'),
       (12, N'Sehr Gut', 6, 'span'),
-- 13 Stimme voll zu Stimme zu Stimme eher zu Stimme eher nicht zu Stimme nicht zu Stimme überhaupt nicht zu
       (13, N'Kann mit der Aussage nichts anfangen', 0, 'span'),
       (13, N'Stimme überhaupt nicht zu', 1, 'span'),
       (13, N'Stimme nicht zu', 2, 'span'),
       (13, N'Stimme eher nicht zu', 3, 'span'),
       (13, N'Stimme eher zu', 4, 'span'),
       (13, N'Stimme zu', 5, 'span'),
       (13, N'Stimme voll zu', 6, 'span'),
-- 14 Rentenpunkte Standardrente Demografischer Wandel Umlageverfahren Rentenbescheid Grundsicherung im Alter Rentenniveau Renteneintrittsalter Frührente Rentenformel  Generationenvertrag  Keiner der genannten
       (14, N'Rentenpunkte', -1, 'span'),
       (14, N'Standardrente ', -1, 'span'),
       (14, N'Demografischer Wandel ', -1, 'span'),
       (14, N'Umlageverfahren Rentenbescheid ', -1, 'span'),
       (14, N'Grundsicherung im Alter ', -1, 'span'),
       (14, N'Rentenniveau ', -1, 'span'),
       (14, N'Renteneintrittsalter ', -1, 'span'),
       (14, N'Frührente Rentenformel ', -1, 'span'),
       (14, N'Generationenvertrag ', -1, 'span'),
-- 15 0-5
       (15, N'Gar nicht', 0, 'span'),
       (15, N'Sehr gering', 1, 'span'),
       (15, N'gering', 2, 'span'),
       (15, N'Ich habe mir gedanken Gemacht', 3, 'span'),
       (15, N'War mir wichtig', 4, 'span'),
       (15, N'War mir sehr wichtig', 5, 'span'),
       (15, N'War ausschlaggebend', 6, 'span'),
-- 16 Sehr unwahrscheinlich Unwahrscheinlich Eher unwahrscheinlich Eher wahrscheinlich Wahrscheinlich Sehr wahrscheinlich
       (16, N'Keine Ahnung', 0, 'span'),
       (16, N'Sehr unwahrscheinlich', 1, 'span'),
       (16, N'Unwahrscheinlich', 2, 'span'),
       (16, N'Eher unwahrscheinlich', 3, 'span'),
       (16, N'Eher wahrscheinlich', 4, 'span'),
       (16, N'Wahrscheinlich', 5, 'span'),
       (16, N'Sehr wahrscheinlich', 6, 'span'),
-- 17 In welchem Alter haben Sie angefangen Regelmäßig in die Gesetzliche RV einzuzahlen
       (17, N'mit 16', 5, 'span'),
       (17, N'in meinen 20ern', 4, 'span'),
       (17, N'in meinen 30ern', 3, 'span'),
       (17, N'in meinen 40ern', 2, 'span'),
       (17, N'in meinen 50ern', 1, 'span'),
       (17, N'ich habe nicht eingezahlt', 0, 'span'),
-- 18 sehr schlecht schlecht eher schlecht eher gut gut sehr gut keine Ahnung
       (18, N'Keine Ahnung', 0, 'span'),
       (18, N'Sehr schlecht', 1, 'span'),
       (18, N'Schlecht', 2, 'span'),
       (18, N'Eher schlecht', 3, 'span'),
       (18, N'Eher gut', 4, 'span'),
       (18, N'Gut', 5, 'span'),
       (18, N'Sehr gut', 6, 'span'),
-- 19 Sehr großer Einfluss Großer Einfluss Eher großer Einfluss Eher geringer Einfluss Geringer Einfluss Sehr geringer Einfluss Kein Einfluss
       (19, N'Kein Einfluss', 0, 'span'),
       (19, N'Sehr geringer Einflus', 1, 'span'),
       (19, N'Geringer Einfluss', 2, 'span'),
       (19, N'Einfluss Eher geringer Einfluss', 3, 'span'),
       (19, N'Eher großer', 4, 'span'),
       (19, N'Großer Einfluss', 5, 'span'),
       (19, N'Sehr großer Einfluss', 6, 'span'),
-- 20 Gar keine Sehr gering gering Eher gering Eher stark stark Sehr stark
       (20, N'Gar keine', 0, 'span'),
       (20, N'Sehr gering', 1, 'span'),
       (20, N'Gering', 2, 'span'),
       (20, N'Eher gering', 3, 'span'),
       (20, N'Eher stark', 4, 'span'),
       (20, N'Stark', 5, 'span'),
       (20, N'Sehr stark', 6, 'span'),
-- 21 Gar keinen, Sehr wenig, Wenig, Eher wenig, Eher viel, Viel, Sehr viel
       (21, N'Gar keinen', 0, 'span'),
       (21, N'Sehr wenig', 1, 'span'),
       (21, N'Wenig', 2, 'span'),
       (21, N'Eher wenig', 3, 'span'),
       (21, N'Eher viel', 4, 'span'),
       (21, N'Viel', 5, 'span'),
       (21, N'Sehr viel', 6, 'span'),
--22
       (22, N'Betriebliche Altersvorsorge', -1, 'span'),
       (22, N'Private Rentenversicherung', -1, 'span'),
       (22, N'Lebensversicherung Anlagen', -1, 'span'),
       (22, N'Immobilien und Wertgegenstände', -1, 'span'),
       (22, N'ETF und Aktien', -1, 'span'),
       (22, N'Andere', -1, 'span'),
-- 23 Sehr unsicher Unsicher Eher unsicher Eher sicher Sicher Sehr sicher
       (23, N'Sehr unsicher', 0, 'span'),
       (23, N'Unsicher', 1, 'span'),
       (23, N'Eher unsicher', 2, 'span'),
       (23, N'Eher sicher', 3, 'span'),
       (23, N'Sicher', 4, 'span'),
       (23, N'Sehr Sicher', 5, 'span'),
--24
       (24, N'Nichts', 0, 'span'),    -- income
       (24, N'weniger als 50€', 1, 'span'),
       (24, N'50-99 €', 2, 'span'),
       (24, N'100-199 €', 3, 'span'),
       (24, N'200-299 €', 4, 'span'),
       (24, N'300-499 €', 5, 'span'),
       (24, N'500-999 €', 6, 'span'),
       (24, N'mehr als 1000 €', 7, 'span')