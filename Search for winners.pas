program Search_for_winners;
var
Players: array[1..20] of integer;
i, imax, x, j :integer;
Begin
  writeln('Введите очки команд -> ');
  for i:=1 to 20 do 
    begin
      write('Команда ', i, ': ');
      read(Players[i])
    end;
  for i:= 1 to 20 do
    begin
      imax := i;
      for j:=i+1 to 20 do if Players[j] > Players[imax] then imax:= j;
      x:= Players[i];
      Players[i]:= Players[imax];
      Players[imax]:=x
    end;
   writeln('Очки команд, которые прошли в финал: ');
   for i:=1 to 5 do write(Players[i], ' ');
End.