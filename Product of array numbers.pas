// Программа для нахождения произведения чисел, введенных пользователем в массив
LABEL Invalid_input;          // Метка для защиты от неверного ввода
var
Numbers: array[1 .. 5] of integer;
Product_of_array_number, i: integer;
Begin
  Product_of_array_number := 1;
  for i:= 1 to 5 do
  begin
    Invalid_input:;
    write('Введите четное число: ');
    read(Numbers[i]);
    if Numbers[i] mod 2 = 0 then
    begin
      Product_of_array_number := Product_of_array_number * Numbers[i];
      continue
    end
    else
    begin
      writeln('> Неверный ввод (четное число - число, которое делится без остатка на 2)');
      goto Invalid_input;         // Переход в начало из-за неправильного ввода
    end
  end;
  
  write('Произведение чисел массива = ', Product_of_array_number);

End.