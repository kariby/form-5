/*  
������ 5 - ���������� ����� ���, ���������� ������������ ������ �������� (����� �� ����� RV1, RV2, RV3, RVn, RV) 
*/
-- tab=������ 5
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 181 or t.CODE = 484) and d.CODE = 28
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*  
������ 6 - ���������� ����� �����, ���������� ������������ ������ �������� (����� �� ����� RV1, RV2, RV3, RVn, RV) 
*/
-- tab=������ 6
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
������ 12 - ���������� ����� �����, ���������� ������������ ������ ������������ (����� �� ����� RV1, RV2, RV3)
*/
-- tab=������ 12
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
������ 18 - ���������� ����� �����, ���������� ������������ ������ �������������� �������� (����� �� ����� RV1, RV2, RV3)
*/
-- tab=������ 18
select count(distinct p.id) as count from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where t.CODE = 181 and d.CODE = 32 and p.ENABLED = 1
and MONTHS_BETWEEN(SYSDATE, p.DATE_OF_BIRTH) / 12 < 18
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
������ 25 - ���������� ����� ������������� (�� ������), �������� ������ ����������� (��� V), � ����� ����� �������������, ���� ���� ������� V ��� RV � �������� ������
*/
-- tab=������ 25
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
������ 44 - ���������� ����� ���, ���������� ������������ ������ ��������� ���������� (����� �� ����� RV1, RV2, RV3, RV4)
*/
-- tab=������ 44
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 46 or t.CODE = 47 or t.CODE = 48) and d.CODE = 35
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
������ 45 - ���������� ����� �����, ���������� ������������ ������ ��������� ���������� (����� �� ����� RV1, RV2, RV3, RV4)
*/
-- tab=������ 45
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
������ 50 - ���������� ����� ���, ���������� ������������ ������ ����������� �������� (����� �� ����� RV � RV1)
*/
-- tab=������ 50
select count(distinct p.id) from PACIENTS p
inner join VACCINE_CARDS vc on p.ID = vc.PACIENT_ID and vc.ENABLED = 1
inner join VACCINATIONS v on vc.ID = v.VACCINE_CARD_ID and v.ENABLED = 1 and v.APPLY_COMPANY_ID = 139
inner join DPC.HST0408 d on v.DISEASE_ID = d.ID
inner join DPC.HST0407 t on v.TOUR_ID = t.ID
where (t.CODE = 2 or t.CODE = 181) and d.CODE = 40
and p.ENABLED = 1
and v.INJECT_AT >=('01.01.2019') and v.INJECT_AT <=to_date('12.05.2021');
/*
������ 54 - ���������� ����� �����, ���� ���� ������� V2 � �������� ������, � ����� ����� �����, ���� ���� ������� V1 ��� �������, ��� �������� ������ 2 ��� (�� ������� ������)
*/
-- tab=������ 54
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