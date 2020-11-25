Консольная игра 'Виселица'
---
<a href="https://imgbb.com/"><img src="https://i.ibb.co/1QSXMW3/hangman.png" alt="hangman" border="0"></a>

### Правила игры

Предлагается отгадать загаданнное слово по буквам.
Полное описание игры на [викепедии](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)).

### Как запустить
Игра написана на Ruby 2.6.5, для запуска требуется gem ['Bundler'](https://bundler.io/).
1. Скачать и распаковать архив игры.
2. Открыть папку hangman в консоли.
3. Запустить установку зависимостей командой в консоли:
    ````
    bundle install
    ````
4. Запустить игру командой в консоли:
    ````
    bundle exec ruby main.rb
    ````
### Как добавить или удалить слова для игры

Отредактируйте список слов для угадывания в файле ```hangman\data\words.txt```

### Об авторе

Создано на курсе 'Хороший программист' в 2020 году.

[https://github.com/dm-rozi](https://github.com/dm-rozi)