repeat task.wait() until game:IsLoaded()

-- Carregar OrionLib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "Limão Hub | Blox Fruits",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "LimaoHub",
    IntroEnabled = true,
    IntroText = "Bem-vindo ao Limão Hub"
})

-- Variáveis globais
getgenv().AutoFarm = false
getgenv().AutoFarmLevel = false
getgenv().AutoBoss = false
getgenv().AutoMateriais = false
getgenv().AutoRipIndra = false
getgenv().AutoEventos = false
getgenv().AutoCDK = false
getgenv().AutoDragonDojo = false
getgenv().AutoBagas = false
getgenv().AutoSkullGuitar = false
getgenv().AutoEspada = false

-- Funções básicas de exemplo
function AtivarFuncao(nome)
    print(nome .. " ativado!")
end

-- Abas
local TabFarm = Window:MakeTab({Name = "Farm", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabBoss = Window:MakeTab({Name = "Boss", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabOutros = Window:MakeTab({Name = "Outros", Icon = "rbxassetid://4483345998", PremiumOnly = false})

-- Aba Farm
TabFarm:AddToggle({
    Name = "Auto Farm Dinheiro",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFarm = Value
        if Value then
            AtivarFuncao("Auto Farm Dinheiro")
        end
    end
})

TabFarm:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFarmLevel = Value
        if Value then
            AtivarFuncao("Auto Farm Level")
        end
    end
})

TabFarm:AddToggle({
    Name = "Auto Coletar Bagas",
    Default = false,
    Callback = function(Value)
        getgenv().AutoBagas = Value
        if Value then
            AtivarFuncao("Auto Coletar Bagas")
        end
    end
})

TabFarm:AddToggle({
    Name = "Auto Coletar Materiais",
    Default = false,
    Callback = function(Value)
        getgenv().AutoMateriais = Value
        if Value then
            AtivarFuncao("Auto Coletar Materiais")
        end
    end
})

-- Aba Boss
TabBoss:AddToggle({
    Name = "Auto Boss",
    Default = false,
    Callback = function(Value)
        getgenv().AutoBoss = Value
        if Value then
            AtivarFuncao("Auto Boss")
        end
    end
})

TabBoss:AddToggle({
    Name = "Auto Rip Indra",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRipIndra = Value
        if Value then
            AtivarFuncao("Auto Rip Indra")
        end
    end
})

TabBoss:AddToggle({
    Name = "Auto Dragon Dojo",
    Default = false,
    Callback = function(Value)
        getgenv().AutoDragonDojo = Value
        if Value then
            AtivarFuncao("Auto Dragon Dojo")
        end
    end
})

TabBoss:AddToggle({
    Name = "Auto Missão de Boss",
    Default = false,
    Callback = function(Value)
        print("Auto Missão de Boss ativado!")
    end
})

-- Aba Outros
TabOutros:AddToggle({
    Name = "Auto Cursed Dual Katana",
    Default = false,
    Callback = function(Value)
        getgenv().AutoCDK = Value
        if Value then
            AtivarFuncao("Auto Cursed Dual Katana")
        end
    end
})

TabOutros:AddToggle({
    Name = "Auto Skull Guitar",
    Default = false,
    Callback = function(Value)
        getgenv().AutoSkullGuitar = Value
        if Value then
            AtivarFuncao("Auto Skull Guitar")
        end
    end
})

TabOutros:AddToggle({
    Name = "Auto Comprar Espada",
    Default = false,
    Callback = function(Value)
        getgenv().AutoEspada = Value
        if Value then
            AtivarFuncao("Auto Comprar Espada")
        end
    end
})

TabOutros:AddToggle({
    Name = "Auto Eventos Marítimos",
    Default = false,
    Callback = function(Value)
        getgenv().AutoEventos = Value
        if Value then
            AtivarFuncao("Auto Eventos Marítimos")
        end
    end
})

-- Finalizar
OrionLib:Init()