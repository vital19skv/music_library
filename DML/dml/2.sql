-- ������� ������ �� ����� ������� ��� ���������� ��������, � ��������������
-- ���������� ��������, LIKE, BETWEEN, IN

-- ������� ��������, ������� ���� �������� �� ������ � 1980 �� 1985 ����
--create view ALBUM_DATE_S as select NAME, RELEASE_YEAR from ALBUM where RELEASE_YEAR between '01.01.1980' and '01.01.1985';

-- ������� ����������, ������� �������� � ������
--create view FEST_CITY_Ss as select NAME, CITY  from FEST where city in ('Moscow');

-- ������� ������������, ��� ��� ���������� �� R
create view ARTIST_NAME_Sss as select NAME  from ARTIST where NAME like 'R%';


