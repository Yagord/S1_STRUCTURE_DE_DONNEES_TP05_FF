program SD_TP05_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;  //Trie Par Permutation

Type
  tableau = array [1..9] of Integer;


Procedure inverse (var t : tableau ; i : Integer ; j : Integer);

Var
  temp : Integer;

begin
  temp := t[i];
  t[i] := t[j];
  t[j] := temp;
end;


Procedure trieParPermutation (var t : tableau);

Var
  i : Integer;
  j : Integer;

begin

  for i := 1 to 8 do
  begin

    for j := i+1 to 9 do
    begin


      if t[i] > t[j] then
      begin
        inverse(t, i, j);
      end;

    end;

  end;

end;


Var
  t : tableau = (10, 8, 9, 5, 4, 5, 65, 1, 1);
  i : Integer;

begin

  trieParPermutation(t);

  for i := 1 to 9 do
  begin
    writeln(t[i]);
  end;

  readln;

end.
