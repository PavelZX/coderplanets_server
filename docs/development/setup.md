
### setup

use `make setup.help` or `make setup` for help。 make sure you know what you are
doing, then run `make setup.run`。

```text

  [valid setup commands]
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  setup.run   : setup the basic env for you, include 3-step
              | 1. mix ecto.setup # create/migrate tables in db
              | 2. mix deps.get   # for insall deps
              | 3. npm install    # for commit-msg linter
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

```


> NOTE: this cmd will not install Elixir/Erlang for you。 make sure you have thoese tools before setup

