DECLARE
a number ;b number; c number;
PROCEDURE FindMin(x IN number,y IN number ,z OUT number)IS
BEGIN
IF X<Y THEN
Z:=X;
ELSE
Z:=Y;
END IF;
END;
BEGIN
a:=23;
b:=34;
FindMin(A,B,C);
dbms_output.put_line('Minimum of(23,34):'||C);
END;