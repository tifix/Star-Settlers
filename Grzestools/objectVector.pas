unit objectVector;

{
Unit objectVector by HakierGrzonzo. As long as you retain this notice you
 can do whatever you want with this stuff. If we meet some day, and you think
 this stuff is worth it, you can buy me a beer in return.
}

interface

uses math,sysutils,crt;

type
	Vector2D = object
		x1,x2,y1,y2:float;
		function x:float;
		function y:float;
		function length:float;
		procedure setVector(xa,ya,xb,yb:float);overload;
		Procedure setVector(xb,yb:float);
		procedure setx(xa:float);
		procedure sety(ya:float);
		Procedure TLength(factor:float);
		Procedure Scale(factor:float);
		Procedure Null;
	end;

	Vector3D = object(vector2D)
		z1,z2:float;
		function z:float;
		function length:float;
		procedure setVector(xa,ya,za,xb,yb,zb:float);overload;
		Procedure setvector(xb,yb,zb:float);
		procedure setz(za:float);
		Procedure Tlength(factor:float);
		Procedure scale(factor:float);
		Procedure Null;
	end;

Function vectorAdd(vectors:array of vector2D):vector2D;overload;

Function vectorAdd(vectors:array of vector3D):vector3D;overload;

Function vectorDif(vectorA,vectorB:vector2D):vector2D;overload;	

Function vectorDif(vectorA,vectorB:vector3D):vector3D;overload;

Function productScalar(vectorA,VectorB:vector2D):float;

Function productvector(vectorA,vectorB:vector3D):vector3D;

Function det(vectorA,VectorB:vector2D):float;

Function isparralel(vectorA,VectorB:vector2D):Boolean;

Function isPerpendicular(vectorA,vectorB:vector2D):Boolean;

Function isNull(VectorA:vector2D):Boolean;overload;

Function isNull(vectorA:vector3D):Boolean;overload;

Procedure WriteVector(vector:vector2D);overload;

Procedure WriteVector(vector:vector3D);overload;

Procedure inputVector(var vector:vector2D);
	
implementation	
	
function Vector2D.x:float;
	begin
		x:=x2-x1;
	end;

function Vector2D.y:float;
	begin
		y:=y2-y1;
	end;

function Vector2D.Length:float;
	Begin
		Length:=Sqrt(Sqr(x)+Sqr(y));
	End;

Procedure Vector2D.setVector(xa,ya,xb,yb:float);
	Begin
		x1:=xa;
		x2:=xb;
		y1:=ya;
		y2:=yb;
	End;

Procedure Vector2D.setVector(xb,yb:float);
	Begin
		x1:=0;
		y1:=0;
		x2:=xb;
		y2:=yb;
	End;

Procedure Vector2D.setx(xa:float);
	Begin
		x2:=x1+xa;
	End;

Procedure Vector2D.sety(ya:float);
	Begin
		y2:=y1+ya;
	End;

Function Vector3D.z:float;
	Begin
		z:=z2-z1;
	End;

Function Vector3D.Length:float;
	Begin
		Length:=Sqrt(Sqr(x)+Sqr(y)+Sqr(z));
	End;

Procedure Vector3D.setvector(xa,ya,za,xb,yb,zb:float);
	Begin
		x1:=xa;
		y1:=ya;
		z1:=za;
		x2:=xb;
		y2:=yb;
		z2:=zb;
	End;

Procedure Vector3D.setvector(xb,yb,zb:float);
	Begin
		x1:=0;
		y1:=0;
		z1:=0;
		x2:=xb;
		y2:=yb;
		z2:=zb;
	End;

Procedure vector3D.setz(za:float);
	Begin
		z2:=z1+za;
	End;

Procedure Vector2D.TLength(factor:float);
	Begin
		setx(x*factor);
		sety(y*factor);
	End;

Procedure Vector3D.TLength(factor:float);
	Begin
		setx(x*factor);
		sety(y*factor);
		setz(z*factor);
	end;

Procedure Vector2D.scale(factor:float);
	Begin
		x1:=x1*factor;
		x2:=x2*factor;
		y1:=y1*factor;
		y2:=y2*factor;
	end;

Procedure Vector3D.scale(factor:float);
	Begin
		x1:=x1*factor;
		x2:=x2*factor;
		y1:=y1*factor;
		y2:=y2*factor;
		z1:=z1*factor;
		z2:=z2*factor;
	End;

Procedure Vector2D.null;
	Begin
		setvector(0,0);
	End;

Procedure Vector3D.null;
	Begin
		setvector(0,0,0);
	End;

Function vectorAdd(vectors:array of vector2D):vector2D;overload;
	Var
		i:integer;
	Begin
		vectorAdd:=vectors[0];
		If Length(vectors)>1 Then
			Begin
				for i:=1 to Length(vectors)-1 Do
					Begin
						vectoradd.x2:=vectoradd.x2+vectors[i].x;
						vectoradd.y2:=vectoradd.y2+vectors[i].y;
					End;
			End;
	End;

Function vectorAdd(vectors:array of vector3D):vector3D;overload;
	Var
		i:integer;
	Begin
		vectorAdd:=vectors[0];
		If Length(vectors)>1 Then
			Begin
				for i:=1 to Length(vectors)-1 Do
					Begin
						vectoradd.x2:=vectoradd.x2+vectors[i].x;
					vectoradd.y2:=vectoradd.y2+vectors[i].y;
						vectoradd.z2:=vectoradd.z2+vectors[i].z;
					End;
			End;
	End;

Function vectorDif(vectorA,vectorB:vector2D):vector2D;overload;
	Begin
		VectorDif:=VectorA;
		VectorDif.setx(VectorA.x-VectorB.x);
		VectorDif.sety(VectorA.y-VectorB.y);
	End;

Function vectorDif(vectorA,vectorB:vector3D):vector3D;overload;
	Begin
		VectorDif:=VectorA;
		VectorDif.setx(VectorA.x-VectorB.x);
		VectorDif.sety(VectorA.y-VectorB.y);
		VectorDif.setz(vectorA.z-VectorB.z);
	End;

Function productScalar(vectorA,VectorB:vector2D):float;
	Begin
		productScalar:=vectorA.x*VectorB.x+VectorA.y*VectorB.y;
	End;

Function productvector(vectorA,vectorB:vector3D):vector3D;
	Begin
		productVector:=vectorA;
		productVector.setx(vectorA.y*vectorB.z-vectorB.y*vectorA.z);
		productVector.sety(vectorB.x*vectorA.z-vectorB.z*vectorA.x);
		productVector.setz(vectorA.x*vectorB.y-vectorB.x*vectorA.y);
	end;

Function det(vectorA,VectorB:vector2D):float;
	Begin
		det:=(vectorA.x*VectorB.y-VectorA.y*vectorB.x);
	End;

Function isparralel(vectorA,VectorB:vector2D):Boolean;
	Begin
		if det(vectorA,VectorB)=0 Then isparralel:=True Else isparralel:=False;
	End;
Function isPerpendicular(vectorA,vectorB:vector2D):Boolean;
	Begin
		if productScalar(vectorA,vectorB)=0 Then isPerpendicular:=True Else isPerpendicular:=False;
	End;

Function isNull(VectorA:vector2D):Boolean;overload;
	Begin
		if (VectorA.x=0) And (vectora.y=0) Then isNull:=True Else isNull:=False;
	End;

Function isNull(vectorA:vector3D):Boolean;overload;
	Begin
		if (VectorA.x=0) And ((vectorA.y=0) And (vectorA.z=0)) Then isNull:=True Else isNull:=False;
	End;

Procedure WriteVector(vector:vector2D);overload;
	Begin
		if isNull(vector) Then
			WriteLn('Null vector on a plain at point: [',floattostr(vector.x1),';',floattostr(vector.y1),']')
		Else
			Begin
				WriteLn('Vector on a plain: [',floattostr(vector.x),';',floattostr(vector.y),']');
				WriteLn('Origin: [',floattostr(vector.x1),';',floattostr(vector.y1),']');
				WriteLn('2nd point: [',floattostr(vector.x2),';',floattostr(vector.y2),']');
				WriteLn('Length: ',floattostr(vector.Length));
			End;
	End;

Procedure WriteVector(vector:vector3D);overload;
	Begin
		if isNull(vector) Then
			WriteLn('Null vector in space at point: [',floattostr(vector.x1),';',floattostr(vector.y1),';',floattostr(vector.z1),']')
		Else
			Begin
				WriteLn('Vector in space: [',floattostr(vector.x),';',floattostr(vector.y),';',floattostr(vector.z),']');
				WriteLn('Origin: [',floattostr(vector.x1),';',floattostr(vector.y1),';',floattostr(vector.z1),']');
				WriteLn('2nd point: [',floattostr(vector.x2),';',floattostr(vector.y2),';',floattostr(vector.z2),']');
				WriteLn('Length: ',floattostr(vector.Length));
			End;
	End;

Procedure inputVector(var vector:vector2D);
	Var
		x1,y1,x2,y2:float;
	Begin
		WriteLn('x1:');
		Readln(x1);
		WriteLn('y1:');
		Readln(y1);
		WriteLn('x2:');
		Readln(x2);
		WriteLn('y2:');
		Readln(y2);
		vector.setvector(x1,y1,x2,y2);
	End;

end.
	
//kod testowy
{Var
	vectorA,vectorB:vector2D;
Begin
	writeln('podaj wspolrzendne punktow wektora');
	inputvector(vectorA);
	ClrScr;
	writeln('podaj wspolrzendne punktow wektora');
	inputvector(vectorB);
	ClrScr;
	writeVector(VectorA);
	writeVector(VectorB);
	WriteLn('iloczyn skalarny: ',floattostr(productscalar(vectorA,vectorB)));
	WriteLn('wektor sumy:');
	writeVector(vectorADD([vectorA,vectorB]));
	WriteLn('wektor roznicy: ');
	writeVector(vectorDIF(vectorA,VectorB));
	Readln;
End.}