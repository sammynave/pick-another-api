# PickAnother

## Local dev

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`
  * Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Release a new version

  1. `mix deps.get`
  2. `MIX_ENV=prod mix do phoenix.digest, compile, release.clean, release` NOTE: `--verbosity=verbose` can be useful if `release` is failing
  3. `eb deploy` NOTE: this will not deploy any uncommited files

    NOTE: building on OSX you will need
    ```
    {include_erts, false}.
    {system_libs, false}.
    ```
    in `rel/relx.config`. running `mix release.clean --implode` will destroy this file and it will need to be created again.

## Setting up AWS EB

  * currently (June 5th, 2016), there's a performance issue with `t1.micro` instances so choose `t2.micro`. but `t2.micro` requires a vpc so don't skip that step during the setup.
  * run the release commands above
  * ensure everything but the `rel/` directory is ignored in the `.ebignore` file
  * `eb deploy`

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
