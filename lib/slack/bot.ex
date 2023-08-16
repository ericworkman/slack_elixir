defmodule Slack.Bot do
  @moduledoc """
  The slack bot.
  """

  @doc """
  Handle the event from Slack.

  The return values will be either:

   - `:ok` - No-op, will `ack` immediately.
   - `{:reply, reply}` - where `reply` can be a map or keyword with these
    arguments: https://api.slack.com/methods/chat.postMessage#args

  """
  @callback handle_event(type :: String.t(), payload :: map()) ::
              :ok | {:reply, reply :: keyword() | map()}
end