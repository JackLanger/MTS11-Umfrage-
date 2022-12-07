use umfrage
SET IDENTITY_INSERT dbo.t_question ON
INSERT INTO dbo.t_question (id, question_text, question_type)
-- allgemein
VALUES (1, N'Bite geben Sie Ihr Alter an', 4),
       (2, N'Bitte geben Sie Ihre geschlechtliche Identität an', 1),
       (3, N'Bitte geben Sie Ihren Familienstand an', 1),
       (4, N'Wie viele Kinder haben Sie?', 1),
       (5, N'Was ist Ihr Höchster Abschluss?', 1),
       (6, N'Welcher Berufsgruppe gehören Sie an?', 1),
       (7, N'Bitte geben Sie Ihr monatliches Bruttoeinkommen an', 4),
       (8, N'In welchem Umfeld wurden Sie auf das Thema Rente aufmerksam gemacht?', 2),
       (9, N'In wieweit hat das Thema Rente Einfluss auf Ihre Familienplanung?', 1),
       (10, N'Was glauben Sie wird das Renteneintrittsalter sein wenn Sie in Rente gehen?', 4),
       (11, N'Mit welchem Alter würden Sie gerne in Rente gehen?', 4),
       (12, N'Wie sehr haben Sie sich bisher mit dem Thema Rente beschäftigt?', 1),
       (13, N'Wie gut schätzen Sie Ihr Wissen über die gesetzliche Rentenversicherung ein?', 1),
       (14,
        N'„Denn eins ist sicher – die Rente“. Würden Sie dieser Aussage eines Wahlplakats von 1986 heute noch zustimmen?',
        1),
       (15,
        N'Welche der folgenden Begriffe könnten Sie jemand anderem in einfachen Worten erklären?',
        2),
       (16, N'Wie ausschlaggebend war die betriebliche Rente oder Möglichkeiten zu vermögenswirksamen Leistungen o.Ä. für die Wahl Ihres Arbeitgebers?', 1),
       (17,
        N'Für wie wahrscheinlich halten Sie es, dass Sie in Ihrem aktuellem Beruf bis zum regulären Renteneintrittsalter arbeiten werden?',
        1),
       (18, N'In welchem Alter haben Sie angefangen Regelmäßig in die Gesetzliche Rentenversicherung einzuzahlen?',
        4),
       (19,
        N'Wie schätzen sie ihre finanzielle Absicherung im Alter durch die gesetzliche Rente ein?',
        1),
       (20,
        N'In welchem Alter haben Sie angefangen regelmäßig privat Vorzusorgen?',
        4),
       (21,
        N'Wie schätzen Sie die Auswirkungen durch die aktuellen Preissteigerungen auf Ihre Rentensituation ein?',
        1),
       (22, N'Wie viel Aufwand haben Sie in die Planung Ihrer Altersvorsorge gesteckt?', 1),
       (23,
        N'Welche der folgenden Maßnahmen zur Sicherung Ihrer Rente haben Sie bereits getroffen?',
        2),
       (24, N'Wie sicher fühlen Sie sich bezüglich ihrer Vorkehrungen?', 1),
       (25, N'Wie viel Geld investieren Sie in etwa monatlich in Ihre private Altersvorsorge?', 1),
       (26, N'Hat diese Umfrage Sie angeregt Maßnahmen für Ihre Rente zu ergreifen?', 1)

SET IDENTITY_INSERT dbo.t_question OFF

-- questions
INSERT INTO dbo.t_question_answer (question_p_question_id, answer_option, answer_value, html_type)
VALUES
	-- Alter
	(1, N'Jünger als 20', 0, 'a'),
	(1, N'20-29', 1, 'a'),
	(1, N'30-39', 2, 'a'),
	(1, N'40-49', 3, 'a'),
	(1, N'50-59', 4, 'a'),
	(1, N'60-69', 5, 'a'),
	(1, N'70 oder älter', 6, 'a'),
	(2, N'Männlich', 0, 'a'),      -- geschlecht
	(2, N'Weiblich', 1, 'a'),
	(2, N'Diverse', 2, 'a'),
-- 2 Abschluss
	(3, N'Ledig', 0, 'span'),
	(3, N'Verheiratet', 1, 'span'),
	(3, N'Eingetragene Lebenspartnerschaft', 2, 'span'),
	(3, N'Geschieden', 3, 'span'),
	(3, N'Verwitwet', 4, 'span'),
	(4, N'Keine', 0, 'span'),
	(4, N'Eins', 1, 'span'),
	(4, N'Zwei', 2, 'span'),
	(4, N'Drei', 3, 'span'),
	(4, N'Vier', 4, 'span'),
	(4, N'Fünf', 5, 'span'),
	(4, N'Mehr als fünf', 6, 'span'),
-- 4 -- abschluss
	(5, N'Ohne Abschluss', 0, 'span'),
	(5, N'Hauptschulabschluss', 1, 'span'),
	(5, N'Mittlere Reife / Realschulabschluss', 2, 'span'),
	(5, N'Hochschulreife', 3, 'span'),
	(5, N'Nachschulischer Abschluss', 4, 'span'),
	(5, N'Ausbildung', 5, 'span'),
	(5, N'Studium', 6, 'span'),
-- 5
	(6, N'Schüler*in', 0, 'span'), -- berufsgruppe
	(6, N'Auszubildende*r', 1, 'span'),
	(6, N'Student*in', 2, 'span'),
	(6, N'Angestellte*r', 3, 'span'),
	(6, N'Selbstständige*r', 4, 'span'),
	(6, N'Beamte*r', 5, 'span'),
	(6, N'Rentner*in / Pensionär*in', 6, 'span'),
-- 6 Bruttoeinkommen
	(7, N'Kein Einkommen', 0, 'span'),
	(7, N'Weniger als 520 €', 1, 'span'),
	(7, N'520 - 999 €', 2, 'span'),
	(7, N'1000 - 1499 €', 3, 'span'),
	(7, N'1500 - 1999 €', 4, 'span'),
	(7, N'2000 - 2999 €', 5, 'span'),
	(7, N'3000 - 3999 €', 6, 'span'),
	(7, N'4000 - 4999 €', 7, 'span'),
	(7, N'5000 - 5999 €', 8, 'span'),
	(7, N'Mehr als 6000 €', 9, 'span'),
-- 7
	(8, N'Familie', -1, 'span'),   -- umfeld
	(8, N'Freunde', -1, 'span'),
	(8, N'Beruf', -1, 'span'),
	(8, N'Schule', -1, 'span'),
	(8, N'Rentenbescheid', -1, 'span'),
	(8, N'Werbekampagne', -1, 'span'),
	(8, N'Politik', -1, 'span'),
	(8, N'Soziale Medien', -1, 'span'),
	(8, N'Sonstige', -1, 'span'),
	(8, N'Rente? Noch nie gehört.', -1, 'span'),
-- 8 Sehr großer Einfluss Großer Einfluss Eher großer Einfluss Eher geringer Einfluss Geringer Einfluss Sehr geringer Einfluss Kein Einfluss
	(9, N'Kein Einfluss', 0, 'span'),
	(9, N'Sehr geringer Einfluss', 1, 'span'),
	(9, N'Geringer Einfluss', 2, 'span'),
	(9, N'Eher geringer Einfluss', 3, 'span'),
	(9, N'Eher großer Einfluss', 4, 'span'),
	(9, N'Großer Einfluss', 5, 'span'),
	(9, N'Sehr großer Einfluss', 6, 'span'),
-- 9 <63 <65 <67 <69 <71 <73 <75 >=75 ggf input
	(10, N'unter 60', 59, 'span'),
	(10, N'61', 61, 'span'),
	(10, N'63', 63, 'span'),
	(10, N'65', 65, 'span'),
	(10, N'67', 67, 'span'),
	(10, N'69', 69, 'span'),
	(10, N'71', 71, 'span'),
	(10, N'73', 73, 'span'),
	(10, N'75', 75, 'span'),
	(10, N'77', 77, 'span'),
-- 10 Mit welchem Alter würden Sie gerne in Rente gehen?
	(11, N'vor 60', 59, 'span'),
	(11, N'61', 61, 'span'),
	(11, N'63', 63, 'span'),
	(11, N'65', 65, 'span'),
	(11, N'67', 67, 'span'),
	(11, N'69', 69, 'span'),
	(11, N'71', 71, 'span'),
	(11, N'73', 73, 'span'),
	(11, N'75', 75, 'span'),
	(11, N'77', 77, 'span'),
-- 11 gar nicht sehr wenig wenig eher wenig eher ausführlich ausführlich sehr ausführlich
	(12, N'Gar nicht', 0, 'span'),
	(12, N'Sehr wenig', 1, 'span'),
	(12, N'Wenig', 2, 'span'),
	(12, N'Eher wenig', 3, 'span'),
	(12, N'Eher ausführlich', 4, 'span'),
	(12, N'Ausführlich', 5, 'span'),
	(12, N'Sehr ausführlich', 6, 'span'),
-- 12 sehr schlecht schlecht eher schlecht eher gut gut sehr gut
	(13, N'Ich kenne mich nicht aus', 0, 'span'),
	(13, N'Sehr schlecht', 1, 'span'),
	(13, N'Schlecht', 2, 'span'),
	(13, N'Eher schlecht', 3, 'span'),
	(13, N'Eher gut', 4, 'span'),
	(13, N'Gut', 5, 'span'),
	(13, N'Sehr gut', 6, 'span'),
-- 13 Stimme voll zu Stimme zu Stimme eher zu Stimme eher nicht zu Stimme nicht zu Stimme überhaupt nicht zu
	(14, N'Kann mit der Aussage nichts anfangen', 0, 'span'),
	(14, N'Stimme überhaupt nicht zu', 1, 'span'),
	(14, N'Stimme nicht zu', 2, 'span'),
	(14, N'Stimme eher nicht zu', 3, 'span'),
	(14, N'Stimme eher zu', 4, 'span'),
	(14, N'Stimme zu', 5, 'span'),
	(14, N'Stimme voll zu', 6, 'span'),
-- 14 Rentenpunkte Standardrente Demografischer Wandel Umlageverfahren Rentenbescheid Grundsicherung im Alter Rentenniveau Renteneintrittsalter Frührente Rentenformel  Generationenvertrag  Keiner der genannten
	(15, N'Rentenpunkte', -1, 'span'),
	(15, N'Standardrente ', -1, 'span'),
	(15, N'Demografischer Wandel ', -1, 'span'),
	(15, N'Umlageverfahren', -1, 'span'),
	(15, N'Rentenbescheid', -1, 'span'),
	(15, N'Grundsicherung im Alter ', -1, 'span'),
	(15, N'Rentenniveau ', -1, 'span'),
	(15, N'Renteneintrittsalter ', -1, 'span'),
	(15, N'Frührente', -1, 'span'),
	(15, N'Rentenformel', -1, 'span'),
	(15, N'Generationenvertrag ', -1, 'span'),
-- 15 0-5
	(16, N'Gar nicht', 0, 'span'),
	(16, N'Sehr gering', 1, 'span'),
	(16, N'Gering', 2, 'span'),
	(16, N'Ich habe mir Gedanken gemacht', 3, 'span'),
	(16, N'War mir wichtig', 4, 'span'),
	(16, N'War mir sehr wichtig', 5, 'span'),
	(16, N'War ausschlaggebend', 6, 'span'),
-- 16 Sehr unwahrscheinlich Unwahrscheinlich Eher unwahrscheinlich Eher wahrscheinlich Wahrscheinlich Sehr wahrscheinlich
	(17, N'Keine Ahnung', 0, 'span'),
	(17, N'Sehr unwahrscheinlich', 1, 'span'),
	(17, N'Unwahrscheinlich', 2, 'span'),
	(17, N'Eher unwahrscheinlich', 3, 'span'),
	(17, N'Eher wahrscheinlich', 4, 'span'),
	(17, N'Wahrscheinlich', 5, 'span'),
	(17, N'Sehr wahrscheinlich', 6, 'span'),
-- 17 In welchem Alter haben Sie angefangen Regelmäßig in die Gesetzliche RV einzuzahlen
	(18, N'Unter 20', 5, 'span'),
	(18, N'In meinen 20ern', 4, 'span'),
	(18, N'In meinen 30ern', 3, 'span'),
	(18, N'In meinen 40ern', 2, 'span'),
	(18, N'In meinen 50ern', 1, 'span'),
	(18, N'Ich habe nicht eingezahlt', 0, 'span'),
-- 18 sehr schlecht schlecht eher schlecht eher gut gut sehr gut keine Ahnung
	(19, N'Keine Ahnung', 0, 'span'),
	(19, N'Sehr schlecht', 1, 'span'),
	(19, N'Schlecht', 2, 'span'),
	(19, N'Eher schlecht', 3, 'span'),
	(19, N'Eher gut', 4, 'span'),
	(19, N'Gut', 5, 'span'),
	(19, N'Sehr gut', 6, 'span'),
-- 19 Sehr großer Einfluss Großer Einfluss Eher großer Einfluss Eher geringer Einfluss Geringer Einfluss Sehr geringer Einfluss Kein Einfluss
	(20, N'Unter 20', 5, 'span'),
	(20, N'In meinen 20ern', 4, 'span'),
	(20, N'In meinen 30ern', 3, 'span'),
	(20, N'In meinen 40ern', 2, 'span'),
	(20, N'In meinen 50ern', 1, 'span'),
	(20, N'Ich habe nicht eingezahlt', 0, 'span'),
-- 20 Gar keine Sehr gering gering Eher gering Eher stark stark Sehr stark
	(21, N'Keine Auswirkungen', 0, 'span'),
	(21, N'Sehr gering', 1, 'span'),
	(21, N'Gering', 2, 'span'),
	(21, N'Eher gering', 3, 'span'),
	(21, N'Eher stark', 4, 'span'),
	(21, N'Stark', 5, 'span'),
	(21, N'Sehr stark', 6, 'span'),
-- 21 Gar keinen, Sehr wenig, Wenig, Eher wenig, Eher viel, Viel, Sehr viel
	(22, N'Gar keinen', 0, 'span'),
	(22, N'Sehr wenig', 1, 'span'),
	(22, N'Wenig', 2, 'span'),
	(22, N'Eher wenig', 3, 'span'),
	(22, N'Eher viel', 4, 'span'),
	(22, N'Viel', 5, 'span'),
	(22, N'Sehr viel', 6, 'span'),
--22
	(23, N'Betriebliche Altersvorsorge', -1, 'span'),
	(23, N'Private Rentenversicherung', -1, 'span'),
	(23, N'Lebensversicherung', -1, 'span'),
	(23, N'Anlagen', -1, 'span'),
	(23, N'Immobilien und Wertgegenstände', -1, 'span'),
	(23, N'ETF und Aktien', -1, 'span'),
	(23, N'Andere', -1, 'span'),
-- 23 Sehr unsicher Unsicher Eher unsicher Eher sicher Sicher Sehr sicher
	(24, N'Sehr unsicher', 0, 'span'),
	(24, N'Unsicher', 1, 'span'),
	(24, N'Eher unsicher', 2, 'span'),
	(24, N'Eher sicher', 3, 'span'),
	(24, N'Sicher', 4, 'span'),
	(24, N'Sehr sicher', 5, 'span'),
--24
	(25, N'Nichts', 0, 'span'),    -- income
	(25, N'Weniger als 50€', 1, 'span'),
	(25, N'50-99 €', 2, 'span'),
	(25, N'100-199 €', 3, 'span'),
	(25, N'200-299 €', 4, 'span'),
	(25, N'300-499 €', 5, 'span'),
	(25, N'500-999 €', 6, 'span'),
	(25, N'mehr als 1000 €', 7, 'span'),
	--26
	(26, N'Ja €', 0, 'span'),
	(26, N'Ich bin mir nicht sicher', 1, 'span'),
	(26, N'Nein', 2, 'span'),
	(26, N'Nerv mich doch nicht', 3, 'span'),
	(26, N'Ich bin Schwabe...', 4, 'span')
