LABEL Invalid_input;          // Метка для защиты от неверного ввода
var
Numbers: array[1 .. 5] of integer;
Sum_of_array_number, i: integer;
Begin
  Sum_of_array_number := 0;
  for i:= 1 to 5 do
  begin
    Invalid_input:;
    write('Введите четное число: ');
    read(Numbers[i]);
    if Numbers[i] mod 2 = 0 then
    begin
      Sum_of_array_number := Sum_of_array_number + Numbers[i];
      continue
    end
    else
    begin
      writeln('> Неверный ввод (четное число - число, которое делится без остатка на 2)');
      goto Invalid_input;         // Переход в начало из-за неправильного ввода
    end
  end;
  
  write('Сумма чисел массива = ', Sum_of_array_number);

End.
