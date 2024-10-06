## Щетинин Станислав, 367658
## Лабораторная работа №1 (Проект Эйлера)

### Задача 10

<p>The sum of the primes below $10$ is $2 + 3 + 5 + 7 = 17$.</p>
<p>Find the sum of all the primes below two million.</p>

### Решения
- [Рекурсия](./task10/recursive.ml);
- [Хвостовая рекурсия](./task10/tail_recursive.ml)
- [Модульная](./task10/modular.ml) реализация
- [Map](./task10/map.ml)
- Спец. синтаксис для [циклов](./task10/for.ml)
- [Императивное](./task10/state.py)

Рекурсивное решение:

``` ocaml
let rec sum_of_primes maxn n = 
  match n with
  | n when n = maxn -> 0
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ -> if n mod i = 0 then false else is_prime n (i + 1)
    in
    if is_prime n 2 then n + sum_of_primes maxn (n + 1) else sum_of_primes maxn (n + 1)
    

let () = Printf.printf "%d\n" (sum_of_primes 2000000 2)
```

### Задача 21

<p>Let $d(n)$ be defined as the sum of proper divisors of $n$ (numbers less than $n$ which divide evenly into $n$).<br>
If $d(a) = b$ and $d(b) = a$, where $a \ne b$, then $a$ and $b$ are an amicable pair and each of $a$ and $b$ are called amicable numbers.</p>
<p>For example, the proper divisors of $220$ are $1, 2, 4, 5, 10, 11, 20, 22, 44, 55$ and $110$; therefore $d(220) = 284$. The proper divisors of $284$ are $1, 2, 4, 71$ and $142$; so $d(284) = 220$.</p>
<p>Evaluate the sum of all the amicable numbers under $10000$.</p>

### Решения
- [Рекурсия](./task21/recursive.ml);
- [Хвостовая рекурсия](./task21/tail_recursive.ml)
- [Модульная](./task21/modular.ml) реализация
- [Map](./task21/map.ml)
- Спец. синтаксис для [циклов](./task21/for.ml)
- [Императивное](./task21/state.py)

Рекурсивное решение:

``` ocaml
let rec sum_of_del n i = 
  match i with
  | i when i = n/2 + 1 -> 0
  | _ -> if n mod i = 0 then i + sum_of_del n (i + 1) else sum_of_del n (i + 1)

let d n = sum_of_del n 1

let rec cnt_of_pairs maxn n = 
  match n with
  | n when n = (maxn + 1) -> 0
  | _ -> let dn = d n in
    if d (dn) = n && dn != n then n + cnt_of_pairs maxn (n + 1) else cnt_of_pairs maxn (n + 1)

let () = print_int(cnt_of_pairs 10000 1)
```

### Вывод

В резултате выполнения лаборторной работы, мною были изучены основы синтаксиса языка программирования OCaml, были разобраны реализации рекурсии и хвостовой рекурсии для решения задач, а также стандартные функции 
```init```, ```filter```, ```fold```. Также на примере данных задач удалось сравнить реализации с императивными языками, меняющими состояние (Python).
