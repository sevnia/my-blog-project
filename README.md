### DB : oracle 21

##### 테이블 명 : blog
| 필드명 | 타입 | 크기 | NULL | 비고 |
| ------ | ---- | ---- | ---- | ---- |
| username | varchar2 | 50 | NOT NULL ||
| useremail | varchar2 | 100 | NOT NULL | PK |
<br>
##### 테이블 명 : board
| 필드명 | 타입 | 크기 | NULL | 비고 |
| ------ | ---- | ---- | ---- | ---- |
| title | varchar2 | 70 | | |
| writer | varchar2 | 50 | NOT NULL |  |
| boardcontent | varchar2 | 2000 |  |  |
