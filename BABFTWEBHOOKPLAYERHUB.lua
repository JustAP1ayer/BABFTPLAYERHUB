
local httpService = game:GetService("HttpService")
local request = (syn and syn.request) or request or (http and http.request) or http_request
local LastGoldAmount = game.Players.LocalPlayer.Data.Gold.Value
while wait(69) do --change this to around 60+, depending on what's right for you
local NewGold = game.Players.LocalPlayer.Data.Gold.Value
request({
    Url = webhookURL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
    },
    Body = httpService:JSONEncode({
        content = "",
        embeds = {
            {
                title = game.Players.LocalPlayer.Name.. "'s Gold Update!",
                description = "Total Gold Bars Amount: " .. game.Players.LocalPlayer.Data.Gold.Value,
                color = 0x81ff57,
                fields = {
                    {
                        
 name = "Updated amount made",
                        value = "Made " .. tostring(NewGold-LastGoldAmount), 
                        inline = true,
                    },
                },
            },
        },
    }),
})
LastGoldAmount = NewGold 
end
