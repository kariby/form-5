/*  
Строка 5 - Включается число лиц, получивших ревакцинацию против дифтерии (любой из туров RV1, RV2, RV3, RVn, RV) 
*/
-- tab=Строка 5
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 181 or t.CODE = 484) and d.CODE = 28
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*  
Строка 6 - Включается число детей, получивших ревакцинацию против дифтерии (любой из туров RV1, RV2, RV3, RVn, RV) 
*/
-- tab=Строка 6
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 181 or t.CODE = 484) and d.CODE = 28
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021')
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18;
/*  
Строка 12 - Включается число детей, получивших ревакцинацию против полиомиелита (любой из туров RV1, RV2, RV3)
*/
-- tab=Строка 12
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47) and d.CODE = 27
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021')
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18;
/*
Строка 18 - Включается число детей, получивших ревакцинацию против эпидемического паротита (любой из туров RV1, RV2, RV3)
*/
-- tab=Строка 18
select count(distinct p.id) as count from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where t.CODE = 181 and d.CODE = 32 and p.ENABLED = 1
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
Строка 25 - Включаются число новорожденных (до месяца), привитых против туберкулеза (тур V), а также число новорожденных, кому была сделана V или RV в заданный период
*/
-- tab=Строка 25
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 123) and d.CODE = 26
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) < 1
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
Строка 44 - Включается число лиц, получивших ревакцинацию против клещевого энцефалита (любой из туров RV1, RV2, RV3, RV4)
*/
-- tab=Строка 44
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 48) and d.CODE = 35
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
Строка 45 - Включается число детей, получивших ревакцинацию против клещевого энцефалита (любой из туров RV1, RV2, RV3, RV4)
*/
-- tab=Строка 45
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 48) and d.CODE = 35
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021')
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18;
/*
Строка 50 - Включается число лиц, получивших ревакцинацию против гемофильной инфекции (любой из туров RV и RV1)
*/
-- tab=Строка 50
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 181) and d.CODE = 40
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
Строка 54 - Включается число детей, кому была сделана V2 в заданный период, а также число детей, кому была сделана V1 при условии, что пациенту больше 2 лет (на текущий момент)
*/
-- tab=Строка 54
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 43 and d.CODE = 41
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021'))
or (t.CODE = 1 and d.CODE = 41
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18 and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 > 2
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021'));