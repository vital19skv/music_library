-- �������� ��� �������, ��������� �� ���� �������, �������� � �����
create view ALBUM_SORT_S as select * from ALBUM order by RELEASE_YEAR desc, NAME, GENRE ;


