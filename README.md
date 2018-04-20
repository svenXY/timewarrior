# timewarrior

This is a small plugin for [timewarrior][1], a timetracking application.

It contains a few aliases and attempts to integrate the bash completion found [here][2]
by using bashcompinit (see [here][3] for some explanation)

[1]: https://timewarrior.net/
[2]: https://github.com/lauft/timew-bashcompletion
[3]: https://stackoverflow.com/questions/3249432/can-a-bash-tab-completion-script-be-used-in-zsh/8492043#8492043 


Requirements
------------------------------------------------------------------------------

* [ZSH](http://zsh.sourceforge.net) 4.3 or newer

Install
------------------------------------------------------------------------------

Using [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):

1. Clone this repository in oh-my-zsh's plugins directory:

        git clone https://github.com/svenxy/timewarrior ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/timewarrior

2. Activate the plugin in `~/.zshrc`:

        plugins=( [plugins...] timewarrior)

3. Source `~/.zshrc`  to take changes into account:

        source ~/.zshrc

Usage
------------------------------------------------------------------------------

The aliases all start with tw, for the completion, just type tw <TAB>.

Configuration
------------------------------------------------------------------------------

none currently.


History
------------------------------------------------------------------------------

* April 2018: Sven Hergenhahn put this together
