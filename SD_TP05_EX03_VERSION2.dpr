program SD_TP05_EX03_VERSION2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;  //Trie A Bulle

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


Procedure trieABulle (var t : tableau);

Var
  sortie : Boolean;
  i : Integer;
  j : Integer;

begin

  sortie := False;
  i := 9;

  while sortie = False do
  begin

    sortie := True;

    for j := 1 to i-1 do
    begin

      if t[j] > t[j+1] then
      begin
        sortie := False;
        inverse(t, j, j+1);
      end;

    end;

    i := i - 1

  end;

end;


Var
  t : tableau = (10, 8, 9, 5, 4, 5, 65, 1, 1);
  i : Integer;

begin

  trieABulle(t);

  for i := 1 to 9 do
  begin
    writeln(t[i]);
  end;

  readln;

end.


