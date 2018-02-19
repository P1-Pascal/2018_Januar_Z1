program Anagram;

const MAX_DUZ = 100;

type Niz = array[1..MAX_DUZ] of 0..9;

var a, b: Niz;
 na, nb: integer;

function citaj_niz(var niz: Niz; var n: integer): boolean;
var i: integer;
begin
 citaj_niz:=true;
 writeln('Duzina niza?');
 read(n);
 if (n>0) and (n<=MAX_DUZ) then begin
 writeln('Elementi niza?');
 for i:=1 to n do read(niz[i]);
 end
 else citaj_niz:=false;
end;

function anagram(a, b: Niz; na, nb:integer): boolean;
var c: array[0..9] of integer;
 i: integer;
begin
 if na<>nb then anagram:=false
 else begin
 for i:=0 to 9 do c[i]:=0;
 for i:=1 to na do begin
 c[a[i]]:=c[a[i]]+1;
 c[b[i]]:=c[b[i]]-1;
 end;
 anagram:=true;
 i:=0;
 while (i<=9) and anagram do
 if c[i]<>0 then anagram:=false
 else i:=i+1;
 end;
end;

begin
 if citaj_niz(a, na) and citaj_niz(b, nb) then
 write(anagram(a, b, na, nb))
 else write('Greska');
end. 