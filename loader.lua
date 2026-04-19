function sw_notify(content)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "sealware",
        Text = content,
        Duration = 5
    })
end

-- script links
local script.camp = "https://raw.githubusercontent.com/shsicidjdhisjs/trd/refs/heads/main/script/modes/camp.lua"
local script.movies = "https://raw.githubusercontent.com/shsicidjdhisjs/trd/refs/heads/main/script/modes/movies.lua" -- not out
local script.expo = "https://raw.githubusercontent.com/shsicidjdhisjs/trd/refs/heads/main/script/modes/expo.lua" -- not out

-- place ids
local inCamp = game.PlaceId == 4939362930
local inLobby = game.PlaceId == 4889315193 or game.PlaceId == 14884976124
local inPractice = game.PlaceId == 15365802831
local inMovies = game.PlaceId == 4939362610
local inExpo = game.PlaceId == 7172152072

if inLobby or inPractice then
   sw_notify("join camp, movies or expo to use script.")
end

if inCamp then
   loadstring(game:HttpGet(script.camp))()
end

if inMovies then
     sw_notify("not out yet")
--   loadstring(game:HttpGet(script.movies))()
end

if inExpo then
     sw_notify("not out yet")
--   loadstring(game:HttpGet(script.expo))()
end
