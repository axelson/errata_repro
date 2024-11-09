defmodule ErrataRepro do
  def raise_error do
    path = "my_path.txt"
    script = "some_script"

    raise ErrataRepro.Error, reason: :script_not_found, context: %{path: path, script: script}
  end
end
