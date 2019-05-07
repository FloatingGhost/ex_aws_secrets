# Secrets

Very basic [ExAws](https://github.com/ex-aws/ex_aws) client for AWS secretsmanager

## Usage

```elixir
ExAws.Secrets.list_secrets()
|> ExAws.request!()
%{"SecretList"=> %{...}}

ExAws.Secrets.get_secret_value("mysecret")
|> ExAws.request!()
%{"SecretString" => "abcd"}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `secrets` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:secrets, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/secrets](https://hexdocs.pm/secrets).

