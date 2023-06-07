# avs_idz2
Здравствуйте, дорогие проверяющие! 

Это ИДЗ №2 по АВС студента БПИ215 Колпакова Егора Евгеньевича. 

Мой вариант 19 представлен ниже:

![variant](https://github.com/kolpakovee/avs_idz2/blob/main/вариант.png)

---
**Формат ввода:**
- Вводится строка, содержащая n (n <= 1 000 000) символов только из первой половины ASCII-таблицы (коды в диапазоне 0–127), затем НЕОБХОДИМО нажать ctrl + D! Так обозначается конец ввода. 
---
**Формат вывода.**
- Для каждого отображаемого (ASCII-код >= 32) символа из вводимой строки выводится число k, которое показывает сколько раз этот символ встречался в строке. Затем выводится число m - кол-во различный отображаемых символов в строке. Например для строки "Egor" вывод будет:
```
E => 1
g => 1
o => 1
r => 1
4
```
---
## 4 балла
![4_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_1.png)
 - В проекте это файл main.c
---
![4_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_2.png)

- Компиляция без отладочных опций:

![compilation1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/compilation1.png)

- После компиляции создался файл first.s, комментарии написаны в нём
---

![4_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_3.png)

- Использованы аргументы командой строки и ручное редактирование, получился файл second.s

![compilation2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/compilation2.png)

---
![4_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_4.png)

- Программа скомпилирована и скомпонована без опций отладки
![compilation3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/compilation3)

---
![4_5](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_5.png)

**Тесты**

*Предполагается, что все введённые числа будут >= 0 и <= 10000, так как длин сторон квадрата, так же предполагается, что длина массива А >= 0.*

1) Ввод: 
```
I love C#!
```

Предполагаемый вывод:
```
  => 2
! => 1
# => 1
C => 1
I => 1
e => 1
l => 1
o => 1
v => 1
9
```

Вывод программы на C:

```
  => 2
! => 1
# => 1
C => 1
I => 1
e => 1
l => 1
o => 1
v => 1
9
```

Вывод программы на GAS:

```
  => 2
! => 1
# => 1
C => 1
I => 1
e => 1
l => 1
o => 1
v => 1
9
```
---
2) Ввод: 
```
My favorite lesson is computer architecture...
```

Предполагаемый вывод:
```
  => 5
. => 3
M => 1
a => 2
c => 3
e => 5
f => 1
h => 1
i => 3
l => 1
m => 1
n => 1
o => 3
p => 1
r => 4
s => 3
t => 4
u => 2
v => 1
y => 1
20
```

Вывод программы на C:

```
  => 5
. => 3
M => 1
a => 2
c => 3
e => 5
f => 1
h => 1
i => 3
l => 1
m => 1
n => 1
o => 3
p => 1
r => 4
s => 3
t => 4
u => 2
v => 1
y => 1
20
```

Вывод программы на GAS:

```
  => 5
. => 3
M => 1
a => 2
c => 3
e => 5
f => 1
h => 1
i => 3
l => 1
m => 1
n => 1
o => 3
p => 1
r => 4
s => 3
t => 4
u => 2
v => 1
y => 1
20
```
---
3) Ввод: 
```
 
```

Предполагаемый вывод:
```
  => 1
1
```

Вывод программы на C:

```
  => 1
1
```

Вывод программы на GAS:

```
  => 1
1
```
---
4) Ввод: 
```
abcdefghijklmnopqrstuvwxyz
```

Предполагаемый вывод:
```
a => 1
b => 1
c => 1
d => 1
e => 1
f => 1
g => 1
h => 1
i => 1
j => 1
k => 1
l => 1
m => 1
n => 1
o => 1
p => 1
q => 1
r => 1
s => 1
t => 1
u => 1
v => 1
w => 1
x => 1
y => 1
z => 1
26
```

Вывод программы на C:

```
a => 1
b => 1
c => 1
d => 1
e => 1
f => 1
g => 1
h => 1
i => 1
j => 1
k => 1
l => 1
m => 1
n => 1
o => 1
p => 1
q => 1
r => 1
s => 1
t => 1
u => 1
v => 1
w => 1
x => 1
y => 1
z => 1
26
```

Вывод программы на GAS:

```
a => 1
b => 1
c => 1
d => 1
e => 1
f => 1
g => 1
h => 1
i => 1
j => 1
k => 1
l => 1
m => 1
n => 1
o => 1
p => 1
q => 1
r => 1
s => 1
t => 1
u => 1
v => 1
w => 1
x => 1
y => 1
z => 1
26
```
---
5) Ввод: 
```
   _______________                        |*\_/*|________
  |  ___________  |     .-.     .-.      ||_/-\_|______  |
  | |           | |    .****. .****.     | |           | |
  | |   0   0   | |    .*****.*****.     | |   0   0   | |
  | |     -     | |     .*********.      | |     -     | |
  | |   \___/   | |      .*******.       | |   \___/   | |
  | |___     ___| |       .*****.        | |___________| |
  |_____|\_/|_____|        .***.         |_______________|
    _|__|/ \|_|_.............*.............._|________|_
   / ********** \                          / ********** \
 /  ************  \                      /  ************  \
--------------------                    --------------------
```

Предполагаемый вывод:
```
  => 324
* => 89
- => 45
. => 46
/ => 10
0 => 4
\ => 10
_ => 107
| => 60
9
```

Вывод программы на C:

```
  => 324
* => 89
- => 45
. => 46
/ => 10
0 => 4
\ => 10
_ => 107
| => 60
9
```

Вывод программы на GAS:

```
  => 324
* => 89
- => 45
. => 46
/ => 10
0 => 4
\ => 10
_ => 107
| => 60
9
```
---
6) Ввод: 
```
  _ _                  
 | (_)_ __  _   ___  __
 | | | '_ \| | | \ \/ /
 | | | | | | |_| |>  < 
 |_|_|_| |_|\__,_/_/\_\
```

Предполагаемый вывод:
```
  => 54
' => 1
( => 1
) => 1
, => 1
/ => 4
< => 1
> => 1
\ => 6
_ => 23
| => 22
11
```

Вывод программы на C:

```
  => 54
' => 1
( => 1
) => 1
, => 1
/ => 4
< => 1
> => 1
\ => 6
_ => 23
| => 22
11
```

Вывод программы на GAS:

```
  => 54
' => 1
( => 1
) => 1
, => 1
/ => 4
< => 1
> => 1
\ => 6
_ => 23
| => 22
11
```
---
7) Ввод: 
```
            .''
  ._.-.___.' (`\
 //(        ( `'
'/ )\ ).__. ) 
' <' `\ ._/'\
   `   \     \
```

Предполагаемый вывод:
```
  => 43
' => 8
( => 3
) => 3
- => 1
. => 8
/ => 4
< => 1
\ => 6
_ => 7
` => 4
11
```

Вывод программы на C:

```
  => 43
' => 8
( => 3
) => 3
- => 1
. => 8
/ => 4
< => 1
\ => 6
_ => 7
` => 4
11
```

Вывод программы на GAS:

```
  => 43
' => 8
( => 3
) => 3
- => 1
. => 8
/ => 4
< => 1
\ => 6
_ => 7
` => 4
11
```
---
8) Ввод: 
```
                                      _.--"""--,
                                    .'          `\
  .-""""""-.                      .'              |
 /          '.                   /            .-._/
|             `.                |             |
 \              \          .-._ |          _   \
  `""'-.         \_.-.     \   `          ( \__/
        |             )     '=.       .,   \  
       /             (         \     /  \  /
     /`               `\        |   /    `'
     '..-`\        _.-. `\ _.__/   .=.
          |  _    / \  '.-`    `-.'  /
          \_/ |  |   './ _     _  \.'
               '-'    | /       \ |  
                      |  .-. .-.  |   
                      \ / o| |o \ /
                       |   / \   |         
                      / `"`   `"` \
                     /             \
                    | '._.'         \
                    |  /             |
                     \ |             |
                      ||    _    _   /
                      /|\  (_\  /_) /
                      \ \'._  ` '_.'
                       `""` `"""`
```

Предполагаемый вывод:
```
  => 850
" => 18
' => 18
( => 3
) => 2
, => 2
- => 17
. => 35
/ => 25
= => 2
\ => 28
_ => 22
` => 23
o => 2
| => 26
15
```

Вывод программы на C:

```
  => 850
" => 18
' => 18
( => 3
) => 2
, => 2
- => 17
. => 35
/ => 25
= => 2
\ => 28
_ => 22
` => 23
o => 2
| => 26
15
```

Вывод программы на GAS:

```
  => 850
" => 18
' => 18
( => 3
) => 2
, => 2
- => 17
. => 35
/ => 25
= => 2
\ => 28
_ => 22
` => 23
o => 2
| => 26
15
```
---
9) Ввод: 
```
Elephants are large mammals of the family Elephantidae and the order Proboscidea. Traditionally, two species are recognized, the African elephant and the Asian elephant, although some evidence suggests that African bush elephants and African forest elephants are separate species. Other families of the order Proboscidea, including mammoths and mastodons are now extinct.

Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia. Male African elephants are the largest surviving terrestrial animals and can reach a height of 4 m (13 ft) and weigh 7,000 kg (15,000 lb).
```

Предполагаемый вывод:
```
  => 86
( => 2
) => 2
, => 8
- => 1
. => 5
0 => 6
1 => 2
3 => 1
4 => 1
5 => 1
7 => 1
A => 8
E => 3
M => 1
O => 1
P => 2
S => 3
T => 1
a => 58
b => 5
c => 16
d => 18
e => 58
f => 12
g => 12
h => 29
i => 29
k => 1
l => 21
m => 12
n => 32
o => 23
p => 11
r => 32
s => 33
t => 39
u => 10
v => 3
w => 3
x => 1
y => 2
z => 1
43
```

Вывод программы на C:

```
  => 86
( => 2
) => 2
, => 8
- => 1
. => 5
0 => 6
1 => 2
3 => 1
4 => 1
5 => 1
7 => 1
A => 8
E => 3
M => 1
O => 1
P => 2
S => 3
T => 1
a => 58
b => 5
c => 16
d => 18
e => 58
f => 12
g => 12
h => 29
i => 29
k => 1
l => 21
m => 12
n => 32
o => 23
p => 11
r => 32
s => 33
t => 39
u => 10
v => 3
w => 3
x => 1
y => 2
z => 1
43
```

Вывод программы на GAS:

```
  => 86
( => 2
) => 2
, => 8
- => 1
. => 5
0 => 6
1 => 2
3 => 1
4 => 1
5 => 1
7 => 1
A => 8
E => 3
M => 1
O => 1
P => 2
S => 3
T => 1
a => 58
b => 5
c => 16
d => 18
e => 58
f => 12
g => 12
h => 29
i => 29
k => 1
l => 21
m => 12
n => 32
o => 23
p => 11
r => 32
s => 33
t => 39
u => 10
v => 3
w => 3
x => 1
y => 2
z => 1
43
```
---
10) Ввод: 
```
One of the biggest threats to elephant populations is the ivory trade, as the animals are poached for their ivory tusks. Other threats to wild elephants include habitat destruction and conflicts with local people. Elephants are used as working animals in Asia. In the past they were used in war; today, they are often put on display in zoos and circuses.
```

Предполагаемый вывод:
```
  => 60
, => 2
. => 4
; => 1
A => 1
E => 1
I => 1
O => 2
a => 27
b => 2
c => 8
d => 11
e => 32
f => 4
g => 3
h => 16
i => 21
k => 2
l => 13
m => 2
n => 19
o => 19
p => 11
r => 16
s => 23
t => 31
u => 8
v => 2
w => 5
y => 6
z => 1
31
```

Вывод программы на C:

```
  => 60
, => 2
. => 4
; => 1
A => 1
E => 1
I => 1
O => 2
a => 27
b => 2
c => 8
d => 11
e => 32
f => 4
g => 3
h => 16
i => 21
k => 2
l => 13
m => 2
n => 19
o => 19
p => 11
r => 16
s => 23
t => 31
u => 8
v => 2
w => 5
y => 6
z => 1
31
```

Вывод программы на GAS:

```
  => 60
, => 2
. => 4
; => 1
A => 1
E => 1
I => 1
O => 2
a => 27
b => 2
c => 8
d => 11
e => 32
f => 4
g => 3
h => 16
i => 21
k => 2
l => 13
m => 2
n => 19
o => 19
p => 11
r => 16
s => 23
t => 31
u => 8
v => 2
w => 5
y => 6
z => 1
31
```
---
![4_6](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_6.png)

- Отчёт сформирован.
---
## 5 баллов
![5_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_1.png)

- Функция с передачей данных через параметры использованы (файл main.c)

```
void print(int array[], int size) {
    int count = 0;
    for (int i = 0; i < size; i++) {
        if (array[i] != 0 && i >= 32) {
            printf("%c => %d\n", (char) i, array[i]);
            ++count;
        }
    }
    printf("%d", count);
}
```

---
![5_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_2.png)

- Локальные переменные использованы. Это можно увидеть в файле main.c
```
int count = 0;
int counts[128] = {0};
char str[1000000];
int i = 0;
int ch;
```
---
![5_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_3.png)
-   В ассемблерную программу при вызове функции добавлены комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата. Это можно увидеть в файле second.s
---
![5_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_4.png)
-    В функциях для формальных параметров добавлены комментарии, описывающие связь между параметрами языка Си и регистрами (стеком). Это можно увидеть в фале second.s
---
![5_5](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_5.png)

- Информация добавлена в отчёт

## 6 баллов
![6_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_1.png)

- Произведёе рефакторинг программы, все изменения можно увидеть в файле optimized.s:
1) DWORD PTR -4[rbp] -> r12d
2) DWORD PTR -8[rbp] -> r13d
3) DWORD PTR -28[rbp] -> r14d
4) QWORD PTR -24[rbp] -> r15

 - Чтобы увидеть все изменения можно сравнить файлы second.s и optimized.s!

---
![6_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_2.png)
- Комментарии добавлены в файл optimized.s (внизу файла зафиксированы все произведённые замены).
---
![6_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_3.png)
1) Ввод: 
```
I love C#!
```

Предполагаемый вывод:
```
  => 2
! => 1
# => 1
C => 1
I => 1
e => 1
l => 1
o => 1
v => 1
9
```

Вывод программы optimized.s:

```
  => 2
! => 1
# => 1
C => 1
I => 1
e => 1
l => 1
o => 1
v => 1
9
```
---
2) Ввод: 
```
My favorite lesson is computer architecture...
```

Предполагаемый вывод:
```
  => 5
. => 3
M => 1
a => 2
c => 3
e => 5
f => 1
h => 1
i => 3
l => 1
m => 1
n => 1
o => 3
p => 1
r => 4
s => 3
t => 4
u => 2
v => 1
y => 1
20
```

Вывод программы optimized.s:

```
  => 5
. => 3
M => 1
a => 2
c => 3
e => 5
f => 1
h => 1
i => 3
l => 1
m => 1
n => 1
o => 3
p => 1
r => 4
s => 3
t => 4
u => 2
v => 1
y => 1
20
```
---
3) Ввод: 
```
 
```

Предполагаемый вывод:
```
  => 1
1
```

Вывод программы на optimized.s:

```
  => 1
1
```
---
4) Ввод: 
```
abcdefghijklmnopqrstuvwxyz
```

Предполагаемый вывод:
```
a => 1
b => 1
c => 1
d => 1
e => 1
f => 1
g => 1
h => 1
i => 1
j => 1
k => 1
l => 1
m => 1
n => 1
o => 1
p => 1
q => 1
r => 1
s => 1
t => 1
u => 1
v => 1
w => 1
x => 1
y => 1
z => 1
26
```

Вывод программы optimized.s:

```
a => 1
b => 1
c => 1
d => 1
e => 1
f => 1
g => 1
h => 1
i => 1
j => 1
k => 1
l => 1
m => 1
n => 1
o => 1
p => 1
q => 1
r => 1
s => 1
t => 1
u => 1
v => 1
w => 1
x => 1
y => 1
z => 1
26
```
---
5) Ввод: 
```
   _______________                        |*\_/*|________
  |  ___________  |     .-.     .-.      ||_/-\_|______  |
  | |           | |    .****. .****.     | |           | |
  | |   0   0   | |    .*****.*****.     | |   0   0   | |
  | |     -     | |     .*********.      | |     -     | |
  | |   \___/   | |      .*******.       | |   \___/   | |
  | |___     ___| |       .*****.        | |___________| |
  |_____|\_/|_____|        .***.         |_______________|
    _|__|/ \|_|_.............*.............._|________|_
   / ********** \                          / ********** \
 /  ************  \                      /  ************  \
--------------------                    --------------------
```

Предполагаемый вывод:
```
  => 324
* => 89
- => 45
. => 46
/ => 10
0 => 4
\ => 10
_ => 107
| => 60
9
```

Вывод программы optimized.s:

```
  => 324
* => 89
- => 45
. => 46
/ => 10
0 => 4
\ => 10
_ => 107
| => 60
9
```
---
6) Ввод: 
```
  _ _                  
 | (_)_ __  _   ___  __
 | | | '_ \| | | \ \/ /
 | | | | | | |_| |>  < 
 |_|_|_| |_|\__,_/_/\_\
```

Предполагаемый вывод:
```
  => 54
' => 1
( => 1
) => 1
, => 1
/ => 4
< => 1
> => 1
\ => 6
_ => 23
| => 22
11
```

Вывод программы optimized.s:

```
  => 54
' => 1
( => 1
) => 1
, => 1
/ => 4
< => 1
> => 1
\ => 6
_ => 23
| => 22
11
```
---
7) Ввод: 
```
            .''
  ._.-.___.' (`\
 //(        ( `'
'/ )\ ).__. ) 
' <' `\ ._/'\
   `   \     \
```

Предполагаемый вывод:
```
  => 43
' => 8
( => 3
) => 3
- => 1
. => 8
/ => 4
< => 1
\ => 6
_ => 7
` => 4
11
```

Вывод программы optimized.s:

```
  => 43
' => 8
( => 3
) => 3
- => 1
. => 8
/ => 4
< => 1
\ => 6
_ => 7
` => 4
11
```
---
8) Ввод: 
```
                                      _.--"""--,
                                    .'          `\
  .-""""""-.                      .'              |
 /          '.                   /            .-._/
|             `.                |             |
 \              \          .-._ |          _   \
  `""'-.         \_.-.     \   `          ( \__/
        |             )     '=.       .,   \  
       /             (         \     /  \  /
     /`               `\        |   /    `'
     '..-`\        _.-. `\ _.__/   .=.
          |  _    / \  '.-`    `-.'  /
          \_/ |  |   './ _     _  \.'
               '-'    | /       \ |  
                      |  .-. .-.  |   
                      \ / o| |o \ /
                       |   / \   |         
                      / `"`   `"` \
                     /             \
                    | '._.'         \
                    |  /             |
                     \ |             |
                      ||    _    _   /
                      /|\  (_\  /_) /
                      \ \'._  ` '_.'
                       `""` `"""`
```

Предполагаемый вывод:
```
  => 850
" => 18
' => 18
( => 3
) => 2
, => 2
- => 17
. => 35
/ => 25
= => 2
\ => 28
_ => 22
` => 23
o => 2
| => 26
15
```

Вывод программы optimized.s:

```
  => 850
" => 18
' => 18
( => 3
) => 2
, => 2
- => 17
. => 35
/ => 25
= => 2
\ => 28
_ => 22
` => 23
o => 2
| => 26
15
```
---
9) Ввод: 
```
Elephants are large mammals of the family Elephantidae and the order Proboscidea. Traditionally, two species are recognized, the African elephant and the Asian elephant, although some evidence suggests that African bush elephants and African forest elephants are separate species. Other families of the order Proboscidea, including mammoths and mastodons are now extinct.

Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia. Male African elephants are the largest surviving terrestrial animals and can reach a height of 4 m (13 ft) and weigh 7,000 kg (15,000 lb).
```

Предполагаемый вывод:
```
  => 86
( => 2
) => 2
, => 8
- => 1
. => 5
0 => 6
1 => 2
3 => 1
4 => 1
5 => 1
7 => 1
A => 8
E => 3
M => 1
O => 1
P => 2
S => 3
T => 1
a => 58
b => 5
c => 16
d => 18
e => 58
f => 12
g => 12
h => 29
i => 29
k => 1
l => 21
m => 12
n => 32
o => 23
p => 11
r => 32
s => 33
t => 39
u => 10
v => 3
w => 3
x => 1
y => 2
z => 1
43
```

Вывод программы optimized.s:

```
  => 86
( => 2
) => 2
, => 8
- => 1
. => 5
0 => 6
1 => 2
3 => 1
4 => 1
5 => 1
7 => 1
A => 8
E => 3
M => 1
O => 1
P => 2
S => 3
T => 1
a => 58
b => 5
c => 16
d => 18
e => 58
f => 12
g => 12
h => 29
i => 29
k => 1
l => 21
m => 12
n => 32
o => 23
p => 11
r => 32
s => 33
t => 39
u => 10
v => 3
w => 3
x => 1
y => 2
z => 1
43
```
---
10) Ввод: 
```
One of the biggest threats to elephant populations is the ivory trade, as the animals are poached for their ivory tusks. Other threats to wild elephants include habitat destruction and conflicts with local people. Elephants are used as working animals in Asia. In the past they were used in war; today, they are often put on display in zoos and circuses.
```

Предполагаемый вывод:
```
  => 60
, => 2
. => 4
; => 1
A => 1
E => 1
I => 1
O => 2
a => 27
b => 2
c => 8
d => 11
e => 32
f => 4
g => 3
h => 16
i => 21
k => 2
l => 13
m => 2
n => 19
o => 19
p => 11
r => 16
s => 23
t => 31
u => 8
v => 2
w => 5
y => 6
z => 1
31
```

Вывод программы optimized.s:

```
  => 60
, => 2
. => 4
; => 1
A => 1
E => 1
I => 1
O => 2
a => 27
b => 2
c => 8
d => 11
e => 32
f => 4
g => 3
h => 16
i => 21
k => 2
l => 13
m => 2
n => 19
o => 19
p => 11
r => 16
s => 23
t => 31
u => 8
v => 2
w => 5
y => 6
z => 1
31
```

---
![6_5](https://github.com/kolpakovee/avs_idz2/blob/main/6.png)
- Вес файла second.s - 3 837 Б.
- Вес файла optimized.s - 3 626 Б.
- Таким образом, размер программы, использующей регистры, меньше на 211 Б.
---
![6_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_4.png)
- Информация добавлена в отчёт.
