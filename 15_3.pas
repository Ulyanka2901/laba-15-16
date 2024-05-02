﻿program zad2; //Динамический массив позволяет программе выделять и освобождать память во время 
// выполнения в зависимости от количества элементов, которые необходимо хранить.

//динамический массив list используется для хранения целых чисел. Его размер устанавливается с помощью функции SetLength на 10 элементов. 
//Затем массив заполняется случайными числами от 1 до 100 и выводится на экран. После этого выводятся только четные элементы массива.

var
  list: array of Integer;
  i: Integer;

begin
  // Устанавливаем размер динамического массива в 10 элементов
  SetLength(list, 10);

  // Заполняем список случайными числами от 1 до 100
  Randomize;
  for i := 0 to Length(list) - 1 do
    list[i] := Random(100) + 1;

  // Выводим все элементы списка
  writeln('Список:');
  for i := 0 to Length(list) - 1 do
    writeln(list[i]);

  // Выводим только четные элементы списка
  writeln('Четные элементы списка:');
  for i := 0 to Length(list) - 1 do
    if list[i] mod 2 = 0 then
      writeln(list[i]);
end.
