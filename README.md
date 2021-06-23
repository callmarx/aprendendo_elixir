# Aprendendo Elixir

[![License](https://img.shields.io/badge/License-MIT-lightgray)](/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-lightblue)](/code_of_conduct.md)
[![love](https://img.shields.io/badge/BUILD%20WITH-%F0%9F%96%A4-lightgreen)](https://callmarx.github.io)

Como bom fanboy que sou de Ruby (e Rails), decidi estudar [Elixir](https://elixir-lang.org) -
linguagem brazuca e com sintaxe inspirada no Ruby.

## Método de estudo

Cheguei a pensar em comprar algum curso online, mas ~~como sou canguinha e mais implicante do que
debugar java no Eclipse~~ decidi seguir os tutoriais do
[Elixir School](https://elixirschool.com/pt/), o
[Getting Started](https://elixir-lang.org/getting-started) e a
[documentação oficial](https://hexdocs.pm/elixir/Kernel.html). Além disso, fazer os exercícios
sobre a linguagem do <https://exercism.io>.

A ideia aqui é fazer uma mistura de um diário de estudo com tutorial de ensino sob a minha
perspectiva através deste projeto. Isso tudo também será postado em
[Blog](https://callmarx.github.io/).

## Instalação e configuração

Inicialmente pensei em utilizar algum gerenciador de versão como faço com Ruby através do RVM, mas
optei por agora instalar diretamente no meu Linux, no caso Arch Linux. Para outros sistemas
operacionais veja em <https://elixir-lang.org/install.html>.

```bash
# instalação
$ sudo pacman -S elixir
```

Você deve obter algo como:

```
$ elixir -v
Erlang/OTP 23 [erts-11.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.11.3 (compiled with Erlang/OTP 23)
```

Para submter os exercícios de <https://exercism.io/tracks/elixir>, também instalei o CLI deles pelo
[AUR](https://aur.archlinux.org/packages/exercism/).

```bash
# instalação
$ yay -S exercism
```


Como utilizo o NeoVim - cheio de firulas visuais com diversos plugins - instalei o
[vim-elixr](https://github.com/elixir-editors/vim-elixir).

## Licença

Copyright 2021 [Eugenio Augusto Jimenes](https://callmarx.github.io/).
Licenciado sob a licença MIT, consulte o arquivo [LICENSE](/LICENSE).

## Código de Conduta

Espera-se que todos que interagem nas bases de código deste projeto - lista de problemas/sugestões,
forum, email etc - sigam o [código de conduta](/code_of_conduct.md).
