# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@python = "def pokaz_argumenty(x, y, *args, **kwargs):
    print \"x=%s, y=%s\" % (x, y)
    print \"Argumenty pozycyjne:\",
    for aa in args:
        print aa,
    print
    print \"Argumenty nazwane:\",
    for kk in kwargs:
        print \"%s=%s\" % (kk, kwargs[kk]),
    print

pokaz_argumenty('abc', 123, 456, 'def', k=789, m='ghi')";

@php = "<?php
$a = 5;
$b = 3;

function suma($zmienna1, $zmienna2)
{
    $wynik = $zmienna1 + $zmienna2;
return $wynik; //Dodajemy argumenty i zwracamy wynik
}

echo suma($a, $b); // 8
?>";


@pascal = "program fibonacci;
var
  i, liczba: word;
  a, b, c: longint;
begin
  writeln('Podaj, ktora liczbe z ciagu Fibonacciego chcesz zobaczyc: ');
  readln(liczba);
  a := 1;
  b := 1;
  if liczba <= 2 then
    writeln('Wynik: ', a)
  else
  begin
    for i := 3 to liczba do
    begin
      c := a+b;
      a := b;
      b := c;
    end;
    writeln('Wynik: ', c);
  end;
end.";


7.times do
  Gist.create(snippet: @php,  lang: 'php', description: 'php function');
  Gist.create(snippet: @python, lang: 'python', description: 'python function');

  Gist.create(snippet: @pascal, lang: 'pascal', description: 'fibonacci pascal');

end