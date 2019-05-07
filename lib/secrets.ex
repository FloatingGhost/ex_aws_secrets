defmodule ExAws.Secrets do
  @moduledoc """
  Documentation for Secrets.
  """
  @namespace "secretsmanager"

  def get_secret_value(secret_id, opts \\ [versionStage: "AWSCURRENT"]) do
    "GetSecretValue"  
    |> build_request(:post, data: %{"SecretId" => secret_id})
  end

  def list_secrets do
    "ListSecrets"
    |> build_request(:post)
  end

  defp build_request(operation_name, http_method, opts \\ []) do
    ExAws.Operation.JSON.new(:secretsmanager,
      http_method: http_method,
      data: Keyword.get(opts, :data, %{}),
      params: Keyword.get(opts, :params, %{}),
      headers: get_headers(operation_name, Keyword.get(opts, :headers, []))
    )
  end

  defp get_headers(operation_name, other_headers \\ []) do
    [
      {"x-amz-target", "#{@namespace}.#{operation_name}"},
      {"content-type", "application/x-amz-json-1.1"},
      {"accept-encoding", "identity"}
      | other_headers
    ]
  end
end
