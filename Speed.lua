local Players = game:GetService("Players")
local velocidade = 2000
local function aplicarVelocidade()
    local player = Players.LocalPlayer
    local function setarSpeed(character)
        local humanoid = character:WaitForChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = velocidade
        end
    end
 player.CharacterAdded:Connect(setarSpeed)
    if player.Character then
        setarSpeed(player.Character)
    end
end

aplicarVelocidade()
