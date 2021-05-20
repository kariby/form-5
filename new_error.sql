/*  
Строка 9 - Включается число лиц, получивших ревакцинацию против столбняка (любой из туров RV1, RV2, RV3, RVn, RV) 
*/
-- tab=Строка 9
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 181 or t.CODE = 484) and d.CODE = 30
and p.ENABLED = 1
and v.INJECT_AT >=('13.04.2021') and v.INJECT_AT <=to_date('13.05.2021');
/*  
Строка 10 - Включается число детей, получивших ревакцинацию против столбняка (любой из туров RV1, RV2, RV3, RVn, RV) 
*/
-- tab=Строка 10
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 181 or t.CODE = 484) and d.CODE = 30
and p.ENABLED = 1
and v.INJECT_AT >=('13.04.2021') and v.INJECT_AT <=to_date('13.05.2021')
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18;
/*  
