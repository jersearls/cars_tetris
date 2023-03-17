defmodule Tetrex.Multiplayer.GameMessage do
  alias Tetrex.Multiplayer.Game
  alias Tetrex.Board

  @type t :: %__MODULE__{
          game_id: String.t(),
          players: [
            %{
              user_id: String.t(),
              board_preview: Board.board_preview(),
              lines_cleared: non_neg_integer(),
              status: Game.player_status(),
              online: boolean()
            }
          ],
          status: Game.game_status()
        }

  @enforce_keys [:game_id, :players, :status]
  defstruct [:game_id, :players, :status]
end
