local catboyclub = false
-- this shit doesnt disable so its scrapped 
function CatboyClub()
    local player = game.Players.LocalPlayer
    local rootPart = player.Character:WaitForChild("HumanoidRootPart")
    rootPart.CFrame = CFrame.new(-48.1823959, 70.0000458, 700)
    
    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 0
    player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
    
    local tweenService = game:GetService("TweenService")
    local part = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart
    local tweenInfo = TweenInfo.new(
        21, -- Duration of the tween
        Enum.EasingStyle.Linear
    )
    local goal = {
        CFrame = part.CFrame
    }
    local tween = tweenService:Create(
        rootPart,
        tweenInfo,
        goal
    )
    
    tween:Play()
    
    wait(16.5)
      
    game.Players.LocalPlayer.Character.Humanoid:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end
            
if catboyclub then
    CatboyClub()
end
            
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    repeat wait() until game.Players.LocalPlayer.Character
    wait(2.2)
    if catboyclub then
        CatboyClub()
    end
end)

    if not catboyclub then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game:GetService("Players").LocalPlayer.Character then
        game.Players.LocalPlayer.Character.Humanoid:Destroy()
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        end
    end
