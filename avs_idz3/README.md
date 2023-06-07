# avs_idz3
Здравствуйте, дорогие проверяющие! 

Это ИДЗ №3 по АВС студента БПИ215 Колпакова Егора Евгеньевича. По мнению автора оно выполнено на 8 баллов.

Мой вариант 6 представлен ниже:

![v6](https://github.com/kolpakovee/avs_idz3/blob/main/images/v6.png)

---
**Формат ввода:**
- Программа запускается через командую строку в формате:

```
./foo_c_e {a} {file.in (опционально)} {file.txt(опционально)}
```
- Вводится число a: 

1 -> генерируется рандомное число
```
./foo_c_e 1
```
2 -> входной параметр вводится следующим аргументом
```
./foo_c_e 2 -27
```
3 -> вводится два файла (входной и выходной). 
```
./foo_c_e 3 test.in out.txt
```
Впрочем, это всё видно в тестах, поэтому советую заглянуть туда.

*ВАЖНО, что число предполагается типа double из диапазона [-100;15]*

---
**Формат вывода.**
Выводится 3 строки в формате:
```
Result: {результат}
Precision: {точность}
Time: {результат замера по времени для выполнения программы 1000 раз}
```
---
## 4 балла
![4_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_1.png)
 - В проекте это два файла part1_e.c и part2_e.c
---
![4_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_2.png)

- Компиляция без отладочных опций:

![compilation1](https://github.com/kolpakovee/avs_idz3/blob/main/images/k4_2.png)

- После компиляции созданы файлы part1_e.s и part2_e.s, комментарии написаны в них.
---

![4_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_3.png)

- Использованы аргументы командой строки и ручное редактирование, получились файлы part1_e_cl.s и part2_e_cl.s.

![compilation2](https://github.com/kolpakovee/avs_idz3/blob/main/images/k4_3.png)

---
![4_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_4.png)

- Программа скомпилирована и скомпонована без опций отладки
![compilation3](https://github.com/kolpakovee/avs_idz3/blob/main/images/k4_4.png)

---
![4_5](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_5.png)

**Тесты (всего написано 10 тестов, вы увидите их дальше в отчёте, здесь приведу только 3, которые демонстрируют корректную и одинаковую работу для всех 3-х программ)**

*Тест 1*
- вывод "Invalid input", т.к. после цифры "2" ожидается один аргумент - число типа double.
![4_5](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test8.jpg)
*Тест 2*
![4_5](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test9.jpg)
*Тест 3*
- тест демонстрирует корректную работу всех программ на одинаковых входных данных.
![4_5](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test7.jpg)

---
![4_6](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/4_6.png)

- Отчёт сформирован.
---
## 5 баллов
![5_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_1.png)

- Функции с передачей данных через параметры использованы (файл part2.c)

```
double factorial(double x) {
    double i = 1;
    while (x > 0) {
        i *= x;
        --x;
    }
    return i;
}
```

---
![5_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_2.png)

- Локальные переменные использованы. Это можно увидеть в файле part1.c
```
double val;
double result = 0;
double next;
double a = 0;
```
---
![5_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_3.png)
-   В ассемблерную программу при вызове функции добавлены комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата. Это можно увидеть в файлах part1_e_cl.s и part2_e_cl.s
---
![5_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_4.png)
-    В функциях для формальных параметров добавлены комментарии, описывающие связь между параметрами языка Си и регистрами (стеком). Это можно увидеть в файлах part1_e_cl.s и part2_e_cl.s
---
![5_5](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/5_5.png)

- Информация добавлена в отчёт

## 6 баллов
![6_1](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_1.png)

- Произведёе рефакторинг программы за счёт максимального использования регистров. Это можно увидеть в файлах part1_e_cl_os.s и part2_e_cl_os.s

---
![6_2](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_2.png)
- Комментарии добавлены в файлы part1_e_cl_os.s и part2_e_cl_os.s

---
![6_3](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_3.png)
*Тест 1*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test1.jpg)
*Тест 2*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test2.jpg)
*Тест 3*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test3.jpg)
*Тест 4*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test4.jpg)
*Тест 5*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test5.jpg)
*Тест 6*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test6.jpg)
*Тест 7*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test7.jpg)
*Тест 8*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test8.jpg)
*Тест 9*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test9.jpg)
*Тест 10*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test10.jpg)
---
![6_5](https://github.com/kolpakovee/avs_idz2/blob/main/6.png)
- Вес файла part1_e.s - 8 384 Б.
- Вес файла part1_e_cl_os.s - 4 727 Б.
- Вес файла part2_e.s - 1 269 Б.
- Вес файла part2_e_cl_os.s - 674 Б.
---
![6_4](https://github.com/kolpakovee/avs_idz1/blob/main/criteria/6_4.png)
- Информация добавлена в отчёт.

## 7 баллов
![7_1](https://github.com/kolpakovee/avs_idz3/blob/main/images/7_1.png)
- Выполнена реализация программы на ассемблере в виде двух единиц компиляции (так же разделена программа на C)
```
gcc -Os -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions part1_e.c -S -Wno-unused-result -o ./part1_e_cl_os.s

gcc -Os -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions part2_e.c -S -Wno-unused-result -o ./part2_e_cl_os.s

gcc part1_e_cl_os.s -c -o part1_e_cl_os.o

gcc part2_e_cl_os.s -c -o part2_e_cl_os.o

gcc ./part2_e_cl_os.o part1_e_cl_os.o foo_e_cl_os -lm

```
---
![7_2](https://github.com/kolpakovee/avs_idz3/blob/main/images/7_2.png)
- Для ввода/вывода результата из файла необходимо ввести:
```
./foo_el_cl_os 3 {path to input file} {path to output file}
```
- Подробнее это показано в тестах. Командная строка проверяет корректность, если что-то пойдёт не так - результат будет "Invalid input" и программа завершит выполнение.
---
![7_3](https://github.com/kolpakovee/avs_idz3/blob/main/images/7_3.png)
- Это файлы в папке tests: test1_e.in - test6_e.in. Демонстрация работы с ними:
*Тест 1*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test1.jpg)
*Тест 2*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test2.jpg)
*Тест 3*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test3.jpg)
*Тест 4*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test4.jpg)
*Тест 5*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test5.jpg)
*Тест 6*
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test6.jpg)
- Тест 6 показывает, что будет, если ввести некорректное число аргументов.
---
![7_4](https://github.com/kolpakovee/avs_idz3/blob/main/images/7_4.png)
- Добавлена возможность ввода/вывода из файла
- Формат входных файлов test1.in
- Формат выходных файлов output.txt

## 8 баллов
![8_1](https://github.com/kolpakovee/avs_idz3/blob/main/images/8_1.png)
- Добавлен генератор случайных чисел, генерирующий числа в диапазоне [-100;15]
```
double randomValue() {
    srand(time(NULL));
    return -100 + (double) rand() / RAND_MAX * (115);
}
```
---
![8_2](https://github.com/kolpakovee/avs_idz3/blob/main/images/8_2.png)
- Есть 3 типа ввода: из файла, из командой строки, рандомые входные данные
1) Рандомные входные данные
```
./foo_c_e 1
```
2) Входные данные из командой строки
```
./foo_c_e 2 -27
```
3) Входные данные из файла и вывод результата в файл
```
./foo_c_e 3 test.in out.txt
```
---
![8_3](https://github.com/kolpakovee/avs_idz3/blob/main/images/8_3.png)
- Добавлены функции замера времени, это можно увидеть в файле part1_e.c:
```
struct timespec start;
struct timespec end;
clock_gettime(CLOCK_MONOTONIC, &start);
(Работа программы без ввода/вывода в цикле на 1000 повторений) 
clock_gettime(CLOCK_MONOTONIC, &end);
long long result_time = end.tv_sec * 10e8 + end.tv_nsec - start.tv_sec * 10e8 - start.tv_nsec;
```
---
![8_4](https://github.com/kolpakovee/avs_idz3/blob/main/images/8_4.png)
- Тесты замеры времени
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test7.jpg)
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test8.jpg)
![](https://github.com/kolpakovee/avs_idz3/blob/main/tests/test9.jpg)
