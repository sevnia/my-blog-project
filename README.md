### DB : oracle 21

##### 테이블 명 : blogboard (귀찮아서 코드 복붙)
CREATE TABLE blogboard(  
        id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  
        title VARCHAR2(200 CHAR),  
        writer VARCHAR2(100 CHAR),  
        blogcontent VARCHAR2(2000 CHAR) NOT NULL  
);
------------------------------------------
##### 테이블 명 : bloguser
| 필드명 | 타입 | 크기 | NULL | 비고 |
| ------ | ---- | ---- | ---- | ---- |
| username | varchar2 | 50(char) | NOT NULL | |
| useremail | varchar2 | 200(char) | NOT NULL | PK |
| userpassword | varchar2 | 100(char) | NOT NULL |  |
------------------------------------------
##### 테이블 명 : noticeboard
| 필드명 | 타입 | 크기 | NULL | 비고 |
| ------ | ---- | ---- | ---- | ---- |
| noticetitle | varchar2 | 100(char) | NOT NULL | |
| noticecontent | varchar2 | 2000(char) | NOT NULL | |
