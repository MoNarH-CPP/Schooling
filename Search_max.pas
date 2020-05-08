program search_max;
var
i, imax: integer;
number: array[1 .. 10] of integer;
Begin
    imax:=1;
    for i:=1 to 10 do
    begin
        read(number[i]);
        if number[i] > number[imax] then imax := i
    end;
    for i:=1 to 10 do write(number[i], ' ');
    writeln('Наибольшее число a[',imax,']=', number[imax]);
End.