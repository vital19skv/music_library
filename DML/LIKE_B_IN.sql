-- ������� ������ �� ����� ������� ��� ���������� ��������, � ��������������
-- ���������� ��������, LIKE, BETWEEN, IN

-- ������� ��������, ������� ���� �������� �� ������ � 1983 �� 1985 ����
create view ALBUM_YEAR_S as select NAME, YEAR_OF_RELEASE from ALBUM where YEAR_OF_RELEASE between '1983' and '1985';

-- ������� ����������, ������� �������� � ������ ��� ����������
create view FEST_CITY_Ss as select NAME, CITY  from FEST where city in ('Moscow', 'Volgograd');

-- ������� ������������, ��� ��� ���������� �� Kirk
create view ARTIST_NAME_S as select NAME  from group_member where NAME like 'Kirk%';


