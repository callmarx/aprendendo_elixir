# Aprendendo Elixir

Como bom fanboy que sou de Ruby (e Rails), decidir estudar [Elixir](https://elixir-lang.org) -
linguagem brazuca e com sintaxe insparada no Ruby.

## Método de estudo

Cheguei a pensar em comprar algum curso online, mas ~~como sou canguinha e mais implicante do que
debugar java no Eclipse~~ decidi seguir os tutoriais do
[Elixir School](https://elixirschool.com/pt/) juntamente com a lista de exercícios sobre a
linguagem do [Exercism](https://exercism.io/my/tracks/elixir).

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

```bash
$ elixir -v
Erlang/OTP 23 [erts-11.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.11.3 (compiled with Erlang/OTP 23)
```

Para submter os exercícios de <https://exercism.io/tracks/elixir>, também instalei o CLI deles pelo
[AUR](https://aur.archlinux.org/packages/exercism/).

```bash
# instalação
$ yay -S exercism

# você deve obter algo como
$ exercism -h
A command-line interface for the v2 redesign of Exercism.

Download exercises and submit your solutions.

Usage:
   [command]

Available Commands:
  configure    Configure the command-line client.
  download     Download an exercise.
  help         Help about any command
  open         Open an exercise on the website.
  prepare      Prepare does setup for Exercism and its tracks.
  submit       Submit your solution to an exercise.
  troubleshoot Troubleshoot does a diagnostic self-check.
  upgrade      Upgrade to the latest version of the CLI.
  version      Version outputs the version of CLI.
  workspace    Print out the path to your Exercism workspace.

Flags:
  -h, --help           help for this command
      --timeout int    override the default HTTP timeout (seconds)
      --unmask-token   will unmask the API during a request/response dump
  -v, --verbose        verbose output

Use " [command] --help" for more information about a command.
```

Como utilizo o NeoVim - cheio de firulas visuais com diversos plugins - instalei o
[vim-elixr](https://github.com/elixir-editors/vim-elixir).

## Licença

Copyright 2021 [Eugenio Augusto Jimenes](https://callmarx.github.io/).
Licenciado sob a licença MIT, consulte o arquivo [LICENSE](/LICENSE).

## Código de Conduta

Espera-se que todos que interagem nas bases de código deste projeto - lista de problemas/sugestões,
forum, email etc - sigam o [código de conduta](/code_of_conduct.md).
