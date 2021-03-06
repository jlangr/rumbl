defmodule Rumbl.Accounts do 
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Jeff", username: "jlangr"},
      %User{id: "2", name: "Bruce", username: "redrapids"},
      %User{id: "3", name: "Chris", username: "chrismccord"},
    ]
  end

  def get_user(id), do:
    Enum.find(list_users(), fn user -> user.id == id end)
  
  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end) 
    end)
  end
end
