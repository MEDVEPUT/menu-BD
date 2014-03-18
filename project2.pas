uses
  crt;

const
  kol = 5;
  b = 30;
  vybor: array[1..kol] of string =
  ('В в о д ', 'В ы в о д ', 'П р а в к а ', 'И н ф о р м а ц и я ', 'В ы х о д');




type
  anketa = record


    dom: string;
    kvartira: integer;
    ylica: string;
  end;


var
  m: array [1..50] of anketa;
  dom, ylica, kvartira: anketa;
  a, r, e, t, s,s2: integer;

procedure Menu(var k: byte);
var
  kod: char;
  i: byte;
begin
  window(1, 1, 80, 25);
  textbackground(blue);
  clrscr;
  k := 1;
  textcolor(yellow);

     for s2:=1 to 24 do begin
       gotoxy(1,s);
       writeln(#186);
     end;


        for s2:=2 to 24 do begin
       gotoxy(80,s2);
       writeln(#186);
     end;
            for s:=2 to 79 do begin
     gotoxy(s,1);
     write(#205);
   end;

             for s:=2 to 79 do begin
     gotoxy(s,24);
     write(#205);
   end;

        gotoxy(80,1);
      write(#187);
        gotoxy(1,1);
      write(#201);

               gotoxy(1,24);
      write(#200);
          gotoxy(80,24);
      write(#188);

             GotoXY(35,8);
  Writeln('М е н ю ');

  gotoxy(30,6);
        write(#218);

        gotoxy(31,6);
        write(#196);
         gotoxy(32,6);
        write(#196);
         gotoxy(30,7);
        write(#179);

        gotoxy(57,17);
        write(#217);
             gotoxy(57,16);
        write(#179);
                gotoxy(56,17);
        write(#196);
              gotoxy(55,17);
        write(#196);







  k := 1;
  repeat
    for i := 1 to kol do
    begin
      if i = k then
      begin
        textcolor(black);
      end
      else
      begin
        textbackground(blue);
        textcolor(Yellow);
      end;
      gotoxy(37, i + 10);
      write(vybor[i]);
    end;
    repeat
      kod := readkey;
    until Kod in [#13, #72, #80];
    case Kod of
      #72:
        begin
          k := k - 1;
          if k = 0 then k := 5;
        end;
      #80:
        begin
          k := k + 1;
          if k = 6 then k := 1;
        end;
    end;
  until kod = #13;
end;

var
  k: byte;
  h, d, w: word;

begin
  repeat

    textbackground(0);
    textcolor(15);
    Menu(k);
    clrscr;

    case k of
      1:
        begin
          writeln('Введите кол-во записей');
          readln(r);




          for e := 1 to r do
          begin
            writeln('-------------------------------');
            writeln('          Ввод данных ');
            writeln('-------------------------------');
            writeln ('Введите улицу: ');
            readln(m[e].ylica);
            writeln ('Введите номер: ');
            readln(m[e].dom);
            writeln ('Введите номер квартиры: ');
            readln(m[e].kvartira);

          end;
        end;
      2:

          begin
        if r>10 then begin
          clrscr;

          textbackground(blue);
          clrscr;
          textcolor(yellow);
          gotoxy(1, 1);
          write(#213);  {в}
          gotoxy(2, 1);
          for a := 1 to 78 do
          begin
            gotoxy(1, b);
            write(#205);     {=}
          end;
          begin
            gotoxy(1, 2);
            writeln(#179);   {в}
            gotoxy(1, 2);
            writeln(#179);  {в}
            gotoxy(2, 2);
            writeln('       Адрес дома');
            gotoxy(1, 3);
            writeln(#198);   {в}
            gotoxy(2, 3);
            for a := 1 to 78 do
            begin
              gotoxy(1, b);
              write(#205); {=}
            end;
            gotoxy(32, 2);
            write(#179);
            gotoxy(32, 3);
            write(#216); {вЄ}
            gotoxy(32, 1);
            writeln(#209);  {в¤}
            gotoxy(80, 1);
            writeln(#184);  {в}
            gotoxy(80, 2);
            writeln(#179);
            gotoxy(80, 3);
            writeln(#181);  {вЎ}
            gotoxy(55, 1);
            writeln(#209);
            gotoxy(55, 2);
            writeln(#179);
            gotoxy(55, 3);
            writeln(#216);
            gotoxy(33, 2);
            write('       Номер дома');
            gotoxy(56,2);
            write('    Номер квартиры');


            if r = 0 then
            begin
              for t := 2 to 79 do
              begin
                gotoxy(t, 4);
                write(#205);     {=}
              end;
              gotoxy(1, 4);
              write(#212);
              gotoxy(32, 4);
              write(#207);
              gotoxy(55, 4);
              write(#207);
              gotoxy(80, 4);
              write(#190);

              gotoxy(35, 7);
              writeln('База данных пуста.');




            end;


            for   e := 12 to r do
              with m[e] do
              begin
                gotoxy(3, e * 2 + 2);
                write(m[e].ylica);


                if e = r then



                  for t := 2 to 79 do
                  begin
                    gotoxy(t, e * 2 + 3);
                    write(#205);


                    gotoxy(1, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(32, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(55, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(80, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(1, 4 + e * 2 - 1);
                    write(#212);
                    gotoxy(32, 4 + e * 2 - 1);
                    write(#207);
                    gotoxy(55, 4 + e * 2 - 1);
                    write(#207);
                    gotoxy(80, 4 + e * 2 - 1);
                    write(#190);



                    gotoxy(43, e * 2 + 2);
                    write(m[e].dom);



                    gotoxy(65, e * 2 + 2);
                    write(m[e].kvartira)




                  end
                else


                begin


                  for t := 2 to 79 do
                  begin
                    gotoxy(t, e * 2 + 3);
                    write(#205);


                  end;
                  gotoxy(1, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(32, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(55, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(80, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(1, 4 + e * 2 - 1);
                  write(#198);
                  gotoxy(32, 4 + e * 2 - 1);
                  write(#216);
                  gotoxy(55, 4 + e * 2 - 1);
                  write(#216);
                  gotoxy(80, 4 + e * 2 - 1);
                  write(#181);



                  gotoxy(43, e * 2 + 2);
                  write(m[e].dom);



                  gotoxy(65, e * 2 + 2);
                  write(m[e].kvartira);

                end;
              end;
            readkey;
          end;
        end







         else



        begin
          textbackground(blue);
          clrscr;
          textcolor(yellow);
          gotoxy(1, 1);
          write(#213);  {в}
          gotoxy(2, 1);
          for a := 1 to 78 do
          begin
            gotoxy(1, b);
            write(#205);     {=}
          end;
          begin
            gotoxy(1, 2);
            writeln(#179);   {в}
            gotoxy(1, 2);
            writeln(#179);  {в}
            gotoxy(2, 2);
            writeln('       Адрес дома');
            gotoxy(1, 3);
            writeln(#198);   {в}
            gotoxy(2, 3);
            for a := 1 to 78 do
            begin
              gotoxy(1, b);
              write(#205); {=}
            end;
            gotoxy(32, 2);
            write(#179);
            gotoxy(32, 3);
            write(#216); {вЄ}
            gotoxy(32, 1);
            writeln(#209);  {в¤}
            gotoxy(80, 1);
            writeln(#184);  {в}
            gotoxy(80, 2);
            writeln(#179);
            gotoxy(80, 3);
            writeln(#181);  {вЎ}
            gotoxy(55, 1);
            writeln(#209);
            gotoxy(55, 2);
            writeln(#179);
            gotoxy(55, 3);
            writeln(#216);
            gotoxy(33, 2);
            write('       Номер дома');
            gotoxy(56,2);
            write('    Номер квартиры');


            if r = 0 then
            begin
              for t := 2 to 79 do
              begin
                gotoxy(t, 4);
                write(#205);     {=}
              end;
              gotoxy(1, 4);
              write(#212);
              gotoxy(32, 4);
              write(#207);
              gotoxy(55, 4);
              write(#207);
              gotoxy(80, 4);
              write(#190);

              gotoxy(35, 7);
              writeln('База данных пуста.');




            end;


            for   e := 1 to r do
              with m[e] do
              begin
                gotoxy(3, e * 2 + 2);
                write(m[e].ylica);


                if e = r then



                  for t := 2 to 79 do
                  begin
                    gotoxy(t, e * 2 + 3);
                    write(#205);


                    gotoxy(1, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(32, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(55, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(80, 3 + e * 2 - 1);
                    write(#179);
                    gotoxy(1, 4 + e * 2 - 1);
                    write(#212);
                    gotoxy(32, 4 + e * 2 - 1);
                    write(#207);
                    gotoxy(55, 4 + e * 2 - 1);
                    write(#207);
                    gotoxy(80, 4 + e * 2 - 1);
                    write(#190);



                    gotoxy(43, e * 2 + 2);
                    write(m[e].dom);



                    gotoxy(65, e * 2 + 2);
                    write(m[e].kvartira)




                  end
                else


                begin


                  for t := 2 to 79 do
                  begin
                    gotoxy(t, e * 2 + 3);
                    write(#205);


                  end;
                  gotoxy(1, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(32, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(55, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(80, 3 + e * 2 - 1);
                  write(#179);
                  gotoxy(1, 4 + e * 2 - 1);
                  write(#198);
                  gotoxy(32, 4 + e * 2 - 1);
                  write(#216);
                  gotoxy(55, 4 + e * 2 - 1);
                  write(#216);
                  gotoxy(80, 4 + e * 2 - 1);
                  write(#181);



                  gotoxy(43, e * 2 + 2);
                  write(m[e].dom);



                  gotoxy(65, e * 2 + 2);
                  write(m[e].kvartira);

                end;
              end;

          end;
              end;
        end;

      3:
        begin
          write('В проекте ');
          readln;
        end;

      4: begin
        writeln('Трещев Дмитрий. П-203. 2014 год');
        writeln;
        writeln('Версия 1.0.');
        readln;
        end;

      5: exit;
    end;
  until k = 5;
end.
