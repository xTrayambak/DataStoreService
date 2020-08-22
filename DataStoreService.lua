print("DataStore Script written by xXEpic_TrayambakXx loaded successfuly.")
local DataStore = game:GetService("DataStoreService")
local statsStore = DataStore:GetDataStore("StatStore")

game.Players.PlayerAdded:Connect(function(player)
  statsStore:SetAsync("UserId-"..player.UserId)
  local leaderstats = Instance.new("Folder", player)
  leaderstats.Name = "leaderstats"
  local coin = Instance.new("IntValue", leaderstats)
  coin.Name = "Coins"
  end
-- Finished settings, now the part when the player leaves.

game.Players.PlayerRemoving:Connect(function()
local saved, notSaved = pcall(function()
end)

--The part after this is not necessary, just to see if your code works. Basically output.
if saved then
   print("Data for Player Saved Successfuly!") 
   else
   print("There was an error in saving data.)
   end
end)
