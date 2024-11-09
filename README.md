# ErrataRepro

Steps to reproduce
- mix deps.get
- iex -S mix
- ErrataRepro.raise_error

This raises a `FunctionClauseError` instead of the `ErrataRepro.Error` that I defined

```
** (ErrataRepro.Error) got FunctionClauseError with message "no function clause matching in Errata.Errors.format_message/1" while retrieving Exception.message/1 for %ErrataRepro.Error{__errata_error__: true, kind: :general, message: nil, reason: :script_not_found, context: %{path: "my_path.txt", script: "some_script"}, env: nil}. Stacktrace:
    (errata 0.8.0) lib/errata/errors.ex:36: Errata.Errors.format_message(%ErrataRepro.Error{__errata_error__: true, kind: :general, message: nil, reason: :script_not_found, context: %{path: "my_path.txt", script: "some_script"}, env: nil})
    (elixir 1.17.2) lib/exception.ex:85: Exception.message/1
    (elixir 1.17.2) lib/exception.ex:136: Exception.format_banner/3
    (iex 1.17.2) lib/iex/evaluator.ex:404: IEx.Evaluator.print_error/3
    (iex 1.17.2) lib/iex/evaluator.ex:298: IEx.Evaluator.parse_eval_inspect/4
    (iex 1.17.2) lib/iex/evaluator.ex:187: IEx.Evaluator.loop/1
    (iex 1.17.2) lib/iex/evaluator.ex:32: IEx.Evaluator.init/5
    (stdlib 5.2.3.1) proc_lib.erl:241: :proc_lib.init_p_do_apply/3

    (errata_repro 0.1.0) lib/errata_repro.ex:6: ErrataRepro.raise_error/0
    iex:1: (file)
```
