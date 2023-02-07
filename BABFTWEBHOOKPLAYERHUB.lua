  coroutine.wrap(function()

local httpService = game:GetService("HttpService")
local request = (syn and syn.request) or request or (http and http.request) or http_request
while wait(100) do --change this to around 60+, depending on what's right for you
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
                title = "Gold Update!",
                description = "Updated Gold Bars Amount: " .. game:GetService("Players").LocalPlayer.Data.Gold.Value,
                color = 0x81ff57,
                fields = {
                    {
                        name = "Username:",
                        value = game.Players.LocalPlayer.Name.. " ", 
                        inline = true,
                    },
                },
            },
        },
    }),
})
end
end)()