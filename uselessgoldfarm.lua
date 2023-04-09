-- this shit doesnt disable and is buggy so its scrapped, used for examples
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
    
    wait(16.2)
      
    game.Players.LocalPlayer.Character.Humanoid:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
