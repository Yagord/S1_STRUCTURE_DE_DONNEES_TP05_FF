program SD_TP05_EX01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;  //Trie Par Insertion

Type
  tableau = array [1..9] of Integer;

Procedure trieParInsertion (var t : tableau);

Var
  i : Integer;
  j : Integer;
  sortie : Boolean;
  temp : Integer;

begin

  for i := 2 to 9 do
  begin

    j := i - 1;
    sortie := False;
    temp := t[i];

    while sortie = False do
    begin

      if j = 0 then
      begin
        sortie := True;
        t[1] := temp;
      end
      else
      begin

        if t[j] < temp then
        begin
          sortie := True;
          t[j+1] := temp;
        end
        else
        begin
          t[j+1] := t[j];
          j := j - 1;
        end;

      end;

    end;

  end;

end;


Var
  t : tableau = (10, 8, 9, 5, 4, 5, 65, 1, 1);
  i : Integer;

begin

  trieParInsertion(t);

  for i := 1 to 9 do
  begin
    writeln(t[i]);
  end;

  readln;

end.
