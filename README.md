# Игра "Виселица"

Это консольная вариация игры Виселица на языке Ruby. О самой игре можно почитать на [Википедии](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)).

### Особенности 

1. Представленная программа игры предполагает игру до 7 ошибок пользователя, за что отвечает переменная константа `TOTAL_ERRORS_ALLOWED` класса `Game` (/lib/game.rb).
2. Пользователю предлагается отгадывать слова, которые записаны в файле `words.txt` (/data/words.txt).

### Инструкция

1. Для запуска игры запустите из консоли исполняемый файл `main.rb`
```
$ ruby main.rb
```
2. После запуска исполняемого файла программа отобразит в консоле текущее состояние виселицы и сразу же предложит Вам ввести любую букву:
```
Всем привет!
Слово: __ __ __ __
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |

Ошибки (0): 
У вас осталось ошибок: 7
Введите следующую букву: 
```
3. Вводите буквы, делайте попытки и Вы увидите изменения в изображении виселицы (если будете допускать ошибки), а также в графах `Слово` (если будете отгадывать буквы), `Ошибки ()` (если будете допускать ошибки) и `У Вас осталось ошибок: ` (если будете допускать ошибки):
```
Введите следующую букву: п
Слово: __ А __ __ Б __ __ __ __
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |

Ошибки (1): П
У вас осталось ошибок: 6
Введите следующую букву:
```
