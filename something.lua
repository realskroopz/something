print("nuked by scriptdummy")

function GetPlayer(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end 
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end 
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end 
    end
    return Found 
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(0.1)
game.Players.LocalPlayer.Backpack:FindFirstChild("PompousTheCloud").Parent = game.Players.LocalPlayer.Character
wait()
 local cloud = game.Players.LocalPlayer.Character.PompousTheCloud

            game.Players.LocalPlayer.Character.PompousTheCloud.ServerControl:InvokeServer("SetProperty",{["Value"]="rbxassetid://0",["Property"]="MeshId",["Object"]=cloud.Handle.Mesh})
            wait()
       
            local plr = game:GetService("Players").LocalPlayer
effect = true
if plr.Character:FindFirstChild("Animate").Disabled == true then return end
        plr.Character.Humanoid:UnequipTools()
        
        plr.Character:FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "nil"        
        plr.Character.Humanoid:UnequipTools()
        end)


local SynixWare = loadstring(game:HttpGet"https://raw.githubusercontent.com/TheJoaqun/UI-Librarys/UI-Library/UI%20Librarys%20Loadstring/FluxLib(SynixWare%20Version).lua")()

_G.closeBind = Enum.KeyCode.P

local win = SynixWare:Window("LOOP KILL", "cloud script", Color3.fromRGB(255,0,255), _G.closeBind)
local A = win:Tab("Admin Powers", "")

A:AddLine()-- Line

local credits = win:Tab("credits", "")-- Tab


credits:AddLine()--Line


credits:AddLabel("your scriptdummy#8888 unsilent loop")--Label




local setting = win:Tab("Settings", "")

setting:AddBind("Toggle UI", Enum.KeyCode.P, function()--Toggle UI
    _G.toggleUiHere()
        end)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("(nuked by scriptdummy)", "All")
wait(.5)
a=2187476
A:AddTextbox("ScriptDummy loop kill", "Loops", true, function(player) while true do 
wait()

local target = unpack(GetPlayer(player)).Character
local Remote = game.Players.LocalPlayer.Character.PompousTheCloud['ServerControl']

local Arguments = {
        [1] = "Fly",
        [2] = {["Flying"] = true}
}

Remote:InvokeServer(unpack(Arguments))

local kill_part = game.Players.LocalPlayer.Character.PompousTheCloud:WaitForChild("EffectCloud")
    game.Players.LocalPlayer.Character.PompousTheCloud.ServerControl:InvokeServer("SetProperty",{["Value"]="Head",["Property"]="Name",["Object"]=kill_part})
    game.Players.LocalPlayer.Character.PompousTheCloud.ServerControl:InvokeServer("SetProperty",{["Value"]=target,["Property"]="Parent",["Object"]=kill_part}) 


end
end)

A:AddTextbox("Cloud", "gives cloud", true, function() game.workspace.Buy:FireServer(0, "PompousTheCloud")

end)
