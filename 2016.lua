if CockAndBalls == true then
	-- error("CockAndBalls is already running!",0)
	return
end

pcall(function() getgenv().CockAndBalls = true end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local CoreGui = game.CoreGui
local ContentProvider = game.ContentProvider
local RobloxGuis = {"RobloxGui", "TeleportGui", "RobloxPromptGui", "RobloxLoadingGui", "PlayerList", "RobloxNetworkPauseNotification", "PurchasePrompt", "HeadsetDisconnectedDialog", "ThemeProvider", "DevConsoleMaster"}

local function FilterTable(tbl)
    local context = syn_context_get()
    syn_context_set(7)
    local new = {}
    for i,v in ipairs(tbl) do
        if typeof(v) ~= "Instance" then
            table.insert(new, v)
        else
            if v == CoreGui or v == game then
                for i,v in pairs(RobloxGuis) do
                    local gui = CoreGui:FindFirstChild(v)
                    if gui then
                        table.insert(new, gui)
                    end
                end

                if v == game then
                    for i,v in pairs(game:GetChildren()) do
                        if v ~= CoreGui then
                            table.insert(new, v)
                        end
                    end
                end
            else
                if not CoreGui:IsAncestorOf(v) then
                    table.insert(new, v)
                else
                    for j,k in pairs(RobloxGuis) do
                        local gui = CoreGui:FindFirstChild(k)
                        if gui then
                            if v == gui or gui:IsAncestorOf(v) then
                                table.insert(new, v)
                                break
                            end
                        end
                    end
                end
            end
        end
    end
    syn_context_set(context)
    return new
end

local old
old = hookfunc(ContentProvider.PreloadAsync, function(self, tbl, cb)
    if self ~= ContentProvider or type(tbl) ~= "table" or type(cb) ~= "function" then
        return old(self, tbl, cb)
    end

    local err
    task.spawn(function()
        local s,e = pcall(old, self, tbl)
        if not s and e then
            err = e
        end
    end)
   
    if err then
        return old(self, tbl)
    end

    tbl = FilterTable(tbl)
    return old(self, tbl, cb)
end)

local old
old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if self == ContentProvider and (method == "PreloadAsync" or method == "preloadAsync") then
        local args = {...}
        if type(args[1]) ~= "table" or type(args[2]) ~= "function" then
            return old(self, ...)
        end

        local err
        task.spawn(function()
            setnamecallmethod(method)
            local s,e = pcall(old, self, args[1])
            if not s and e then
                err = e
            end
        end)

        if err then
            return old(self, args[1])
        end

        args[1] = FilterTable(args[1])
        setnamecallmethod(method)
        return old(self, args[1], args[2])
    end
    return old(self, ...)
end)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "1.0.0";
Text = "By vuln01 on Roblox";
Icon = "rbxassetid://13272660426";
Duration = 5;
})

wait(2)
local GayAnalSexCumMonster = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Background = Instance.new("Frame")
local CumInMyAss = Instance.new("TextButton")
local GayOralSex = Instance.new("TextButton")
local BigBlackGayCock = Instance.new("TextButton")
local BlackGayDaddy = Instance.new("TextButton")
local DickInMyAss = Instance.new("TextButton")
local button5 = Instance.new("TextButton")
local button10 = Instance.new("TextButton")
local button9 = Instance.new("TextButton")
local button8 = Instance.new("TextButton")
local button7 = Instance.new("TextButton")
local button6 = Instance.new("TextButton")

GayAnalSexCumMonster.Name = "GayAnalSexCumMonster"
GayAnalSexCumMonster.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GayAnalSexCumMonster.ResetOnSpawn = false

TextLabel.Parent = GayAnalSexCumMonster
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TextLabel.BackgroundTransparency = 0.5
TextLabel.BorderSizePixel = 0
TextLabel.Draggable = true
TextLabel.Position = UDim2.new(0.224999994, -129, 0.444649428, -126)
TextLabel.Size = UDim2.new(0, 353, 0, 20)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "1.0.0 (2016)"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18

Background.Name = "Background"
Background.Parent = TextLabel
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.BackgroundTransparency = 0.30000001192093
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, 0, 20)
Background.Size = UDim2.new(0, 385, 0, 241)

CumInMyAss.Name = "CumInMyAss"
CumInMyAss.Parent = TextLabel
CumInMyAss.BackgroundColor3 = Color3.new(1, 0, 0)
CumInMyAss.BackgroundTransparency = 0.5
CumInMyAss.BorderSizePixel = 0
CumInMyAss.Position = UDim2.new(0, 353, 0, 0)
CumInMyAss.Size = UDim2.new(0, 32, 0, 20)
CumInMyAss.Font = Enum.Font.ArialBold
CumInMyAss.Text = "X"
CumInMyAss.TextColor3 = Color3.new(1, 1, 1)
CumInMyAss.TextSize = 18

GayOralSex.Name = "GayOralSex"
GayOralSex.Parent = TextLabel
GayOralSex.BackgroundColor3 = Color3.new(1, 1, 1)
GayOralSex.BackgroundTransparency = 0.94999998807907
GayOralSex.Position = UDim2.new(0.0549019501, 0, 1.74999988, 0)
GayOralSex.Size = UDim2.new(0, 165, 0, 30)
GayOralSex.Font = Enum.Font.ArialBold
GayOralSex.Text = "View Game Universe"
GayOralSex.TextColor3 = Color3.new(1, 1, 1)
GayOralSex.TextSize = 14
GayOralSex.MouseButton1Down:connect(function()
local SynapseXen_IIliIiiIIl=select;local SynapseXen_iIiIiIiIllliI=string.byte;local SynapseXen_Illlill=string.sub;local SynapseXen_iililllliiilllIIl=string.char;local SynapseXen_llIiliIiI=type;local SynapseXen_iiiilIllliIlIi=table.concat;local unpack=unpack;local setmetatable=setmetatable;local pcall=pcall;local SynapseXen_IliiliIlIll,SynapseXen_IlIlIIlIilIIliIlIIl,SynapseXen_lllliIiIIlilIiill,SynapseXen_IilliilIIIililI;if bit and bit.bxor then SynapseXen_IliiliIlIll=bit.bxor;SynapseXen_IlIlIIlIilIIliIlIIl=function(SynapseXen_lIIIIli,SynapseXen_illli)local SynapseXen_IIlllIIIllIillIl=SynapseXen_IliiliIlIll(SynapseXen_lIIIIli,SynapseXen_illli)if SynapseXen_IIlllIIIllIillIl<0 then SynapseXen_IIlllIIIllIillIl=4294967296+SynapseXen_IIlllIIIllIillIl end;return SynapseXen_IIlllIIIllIillIl end else SynapseXen_IliiliIlIll=function(SynapseXen_lIIIIli,SynapseXen_illli)local SynapseXen_ilIlIi=function(SynapseXen_lliIillIliIIliIIl,SynapseXen_IiiIillIIliiII)return SynapseXen_lliIillIliIIliIIl%(SynapseXen_IiiIillIIliiII*2)>=SynapseXen_IiiIillIIliiII end;local SynapseXen_iIiiIIiIIlllliiilI=0;for SynapseXen_IlillIIiiilIillIlI=0,31 do SynapseXen_iIiiIIiIIlllliiilI=SynapseXen_iIiiIIiIIlllliiilI+(SynapseXen_ilIlIi(SynapseXen_lIIIIli,2^SynapseXen_IlillIIiiilIillIlI)~=SynapseXen_ilIlIi(SynapseXen_illli,2^SynapseXen_IlillIIiiilIillIlI)and 2^SynapseXen_IlillIIiiilIillIlI or 0)end;return SynapseXen_iIiiIIiIIlllliiilI end;SynapseXen_IlIlIIlIilIIliIlIIl=SynapseXen_IliiliIlIll end;SynapseXen_lllliIiIIlilIiill=function(SynapseXen_llllllillIllIlI,SynapseXen_IIIiIiIIlIIIliI,SynapseXen_IIlIil)return(SynapseXen_llllllillIllIlI+SynapseXen_IIIiIiIIlIIIliI)%SynapseXen_IIlIil end;SynapseXen_IilliilIIIililI=function(SynapseXen_llllllillIllIlI,SynapseXen_IIIiIiIIlIIIliI,SynapseXen_IIlIil)return(SynapseXen_llllllillIllIlI-SynapseXen_IIIiIiIIlIIIliI)%SynapseXen_IIlIil end;local function SynapseXen_iiiiiIliIIlll(SynapseXen_IIlllIIIllIillIl)if SynapseXen_IIlllIIIllIillIl<0 then SynapseXen_IIlllIIIllIillIl=4294967296+SynapseXen_IIlllIIIllIillIl end;return SynapseXen_IIlllIIIllIillIl end;local getfenv=getfenv;if not getfenv then getfenv=function()return _ENV end end;local SynapseXen_liliil={}local SynapseXen_IlIiiiiiIIiiIli={}local SynapseXen_iIlIIiIiIIIlIiI;local SynapseXen_liliIiiiIlli;local SynapseXen_ilIIiilIIiiiIiIill={}local SynapseXen_IiliiIilIilIIlllIil={}for SynapseXen_IlillIIiiilIillIlI=0,255 do local SynapseXen_lIIllIllIilliliIili,SynapseXen_iiliIIlliliIllilliII=SynapseXen_iililllliiilllIIl(SynapseXen_IlillIIiiilIillIlI),SynapseXen_iililllliiilllIIl(SynapseXen_IlillIIiiilIillIlI,0)SynapseXen_ilIIiilIIiiiIiIill[SynapseXen_lIIllIllIilliliIili]=SynapseXen_iiliIIlliliIllilliII;SynapseXen_IiliiIilIilIIlllIil[SynapseXen_iiliIIlliliIllilliII]=SynapseXen_lIIllIllIilliliIili end;local function SynapseXen_IliiIllIIiIiiIilIIl(SynapseXen_lIiIlIIIlIlIillll,SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl)if SynapseXen_ilIIliiIIl>=256 then SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl=0,SynapseXen_lIIIIl+1;if SynapseXen_lIIIIl>=256 then SynapseXen_lIliiiIlIlIiIiiilli={}SynapseXen_lIIIIl=1 end end;SynapseXen_lIliiiIlIlIiIiiilli[SynapseXen_iililllliiilllIIl(SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl)]=SynapseXen_lIiIlIIIlIlIillll;SynapseXen_ilIIliiIIl=SynapseXen_ilIIliiIIl+1;return SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl end;local function SynapseXen_llIliiIIilIi(SynapseXen_lilIIlIlIill)local function SynapseXen_IllIIiIIIiiiillil(SynapseXen_IIIIIllilIllll)local SynapseXen_lIIIIl='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'SynapseXen_IIIIIllilIllll=string.gsub(SynapseXen_IIIIIllilIllll,'[^'..SynapseXen_lIIIIl..'=]','')return SynapseXen_IIIIIllilIllll:gsub('.',function(SynapseXen_llllllillIllIlI)if SynapseXen_llllllillIllIlI=='='then return''end;local SynapseXen_lIiliIiiiIIiIl,SynapseXen_IIilliI='',SynapseXen_lIIIIl:find(SynapseXen_llllllillIllIlI)-1;for SynapseXen_IlillIIiiilIillIlI=6,1,-1 do SynapseXen_lIiliIiiiIIiIl=SynapseXen_lIiliIiiiIIiIl..(SynapseXen_IIilliI%2^SynapseXen_IlillIIiiilIillIlI-SynapseXen_IIilliI%2^(SynapseXen_IlillIIiiilIillIlI-1)>0 and'1'or'0')end;return SynapseXen_lIiliIiiiIIiIl end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(SynapseXen_llllllillIllIlI)if#SynapseXen_llllllillIllIlI~=8 then return''end;local SynapseXen_lIlillIlIIIliIiIiI=0;for SynapseXen_IlillIIiiilIillIlI=1,8 do SynapseXen_lIlillIlIIIliIiIiI=SynapseXen_lIlillIlIIIliIiIiI+(SynapseXen_llllllillIllIlI:sub(SynapseXen_IlillIIiiilIillIlI,SynapseXen_IlillIIiiilIillIlI)=='1'and 2^(8-SynapseXen_IlillIIiiilIillIlI)or 0)end;return string.char(SynapseXen_lIlillIlIIIliIiIiI)end)end;SynapseXen_lilIIlIlIill=SynapseXen_IllIIiIIIiiiillil(SynapseXen_lilIIlIlIill)local SynapseXen_IliIlIilil=SynapseXen_Illlill(SynapseXen_lilIIlIlIill,1,1)if SynapseXen_IliIlIilil=="u"then return SynapseXen_Illlill(SynapseXen_lilIIlIlIill,2)elseif SynapseXen_IliIlIilil~="c"then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;SynapseXen_lilIIlIlIill=SynapseXen_Illlill(SynapseXen_lilIIlIlIill,2)local SynapseXen_llllll=#SynapseXen_lilIIlIlIill;local SynapseXen_lIliiiIlIlIiIiiilli={}local SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl=0,1;local SynapseXen_IliIIl={}local SynapseXen_IIlllIIIllIillIl=1;local SynapseXen_ililIll=SynapseXen_Illlill(SynapseXen_lilIIlIlIill,1,2)SynapseXen_IliIIl[SynapseXen_IIlllIIIllIillIl]=SynapseXen_IiliiIilIilIIlllIil[SynapseXen_ililIll]or SynapseXen_lIliiiIlIlIiIiiilli[SynapseXen_ililIll]SynapseXen_IIlllIIIllIillIl=SynapseXen_IIlllIIIllIillIl+1;for SynapseXen_IlillIIiiilIillIlI=3,SynapseXen_llllll,2 do local SynapseXen_IiiiI=SynapseXen_Illlill(SynapseXen_lilIIlIlIill,SynapseXen_IlillIIiiilIillIlI,SynapseXen_IlillIIiiilIillIlI+1)local SynapseXen_ilIIllIilIiiiliI=SynapseXen_IiliiIilIilIIlllIil[SynapseXen_ililIll]or SynapseXen_lIliiiIlIlIiIiiilli[SynapseXen_ililIll]if not SynapseXen_ilIIllIilIiiiliI then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;local SynapseXen_IliilII=SynapseXen_IiliiIilIilIIlllIil[SynapseXen_IiiiI]or SynapseXen_lIliiiIlIlIiIiiilli[SynapseXen_IiiiI]if SynapseXen_IliilII then SynapseXen_IliIIl[SynapseXen_IIlllIIIllIillIl]=SynapseXen_IliilII;SynapseXen_IIlllIIIllIillIl=SynapseXen_IIlllIIIllIillIl+1;SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl=SynapseXen_IliiIllIIiIiiIilIIl(SynapseXen_ilIIllIilIiiiliI..SynapseXen_Illlill(SynapseXen_IliilII,1,1),SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl)else local SynapseXen_ilillI=SynapseXen_ilIIllIilIiiiliI..SynapseXen_Illlill(SynapseXen_ilIIllIilIiiiliI,1,1)SynapseXen_IliIIl[SynapseXen_IIlllIIIllIillIl]=SynapseXen_ilillI;SynapseXen_IIlllIIIllIillIl=SynapseXen_IIlllIIIllIillIl+1;SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl=SynapseXen_IliiIllIIiIiiIilIIl(SynapseXen_ilillI,SynapseXen_lIliiiIlIlIiIiiilli,SynapseXen_ilIIliiIIl,SynapseXen_lIIIIl)end;SynapseXen_ililIll=SynapseXen_IiiiI end;return SynapseXen_iiiilIllliIlIi(SynapseXen_IliIIl)end;local function SynapseXen_IiiIiiiIliIlI(SynapseXen_IllillII,SynapseXen_llIIiIiIIliI,SynapseXen_iiiliiIIllIl)if SynapseXen_iiiliiIIllIl then local SynapseXen_iilliillIllil=SynapseXen_IllillII/2^(SynapseXen_llIIiIiIIliI-1)%2^(SynapseXen_iiiliiIIllIl-1-(SynapseXen_llIIiIiIIliI-1)+1)return SynapseXen_iilliillIllil-SynapseXen_iilliillIllil%1 else local SynapseXen_iIIIiIlIilIlliilIiIi=2^(SynapseXen_llIIiIiIIliI-1)if SynapseXen_IllillII%(SynapseXen_iIIIiIlIilIlliilIiIi+SynapseXen_iIIIiIlIilIlliilIiIi)>=SynapseXen_iIIIiIlIilIlliilIiIi then return 1 else return 0 end end end;local function SynapseXen_lIIIIiiilliilIlIIIii()local SynapseXen_ilIlIIiIIliiliI=SynapseXen_IliiliIlIll(1980567490,SynapseXen_IlIiiiiiIIiiIli[1])while true do if SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(3217194759,SynapseXen_IlIiiiiiIIiiIli[4])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII-10218,SynapseXen_liillIllliiiliII+1565)-SynapseXen_IliiliIlIll(2552080,SynapseXen_liliIiiiIlli)end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_IliiliIlIll(SynapseXen_ilIlIIiIIliiliI,SynapseXen_IliiliIlIll(4172050189,SynapseXen_IlIiiiiiIIiiIli[9]))elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(3245578156,SynapseXen_liliIiiiIlli)then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII-20543,SynapseXen_liillIllliiiliII+42440)+SynapseXen_IliiliIlIll(3238693626,SynapseXen_IlIiiiiiIIiiIli[9])end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_IliiliIlIll(SynapseXen_ilIlIIiIIliiliI,SynapseXen_IliiliIlIll(2096426963,SynapseXen_liliIiiiIlli))elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(54336045,SynapseXen_IlIiiiiiIIiiIli[7])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+21805,SynapseXen_liillIllliiiliII-42271)-SynapseXen_IliiliIlIll(1805678050,SynapseXen_IlIiiiiiIIiiIli[5])end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI-SynapseXen_IliiliIlIll(2494859,SynapseXen_liliIiiiIlli)elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(384386786,SynapseXen_IlIiiiiiIIiiIli[4])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+32047,SynapseXen_liillIllliiiliII+40781)+SynapseXen_IliiliIlIll(2517486,SynapseXen_liliIiiiIlli)end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI-SynapseXen_IliiliIlIll(1671252887,SynapseXen_IlIiiiiiIIiiIli[2])elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(980962415,SynapseXen_IlIiiiiiIIiiIli[5])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+26770,SynapseXen_liillIllliiiliII+9311)+SynapseXen_IliiliIlIll(2542855,SynapseXen_liliIiiiIlli)end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI-SynapseXen_IliiliIlIll(2038335586,SynapseXen_IlIiiiiiIIiiIli[13])elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(2530843292,SynapseXen_IlIiiiiiIIiiIli[12])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+21831,SynapseXen_liillIllliiiliII-5626)-SynapseXen_IliiliIlIll(2498063,SynapseXen_liliIiiiIlli)end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI+SynapseXen_IliiliIlIll(2494459,SynapseXen_liliIiiiIlli)elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(1375664819,SynapseXen_liliIiiiIlli)then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII-25487,SynapseXen_liillIllliiiliII+24664)+SynapseXen_IliiliIlIll(759391746,SynapseXen_IlIiiiiiIIiiIli[10])end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI-SynapseXen_IliiliIlIll(727297386,SynapseXen_IlIiiiiiIIiiIli[6])elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(1374791183,SynapseXen_liliIiiiIlli)then return elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(3551363636,SynapseXen_IlIiiiiiIIiiIli[12])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+4178,SynapseXen_liillIllliiiliII-49594)+SynapseXen_IliiliIlIll(2520199,SynapseXen_liliIiiiIlli)end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_ilIlIIiIIliiliI+SynapseXen_IliiliIlIll(4135908622,SynapseXen_IlIiiiiiIIiiIli[8])elseif SynapseXen_ilIlIIiIIliiliI==SynapseXen_IliiliIlIll(863627469,SynapseXen_IlIiiiiiIIiiIli[1])then SynapseXen_iIlIIiIiIIIlIiI=function(SynapseXen_IlliII,SynapseXen_liillIllliiiliII)return SynapseXen_IliiliIlIll(SynapseXen_IlliII+31796,SynapseXen_liillIllliiiliII+23413)-SynapseXen_IliiliIlIll(3238682438,SynapseXen_IlIiiiiiIIiiIli[9])end;SynapseXen_ilIlIIiIIliiliI=SynapseXen_IliiliIlIll(SynapseXen_ilIlIIiIIliiliI,SynapseXen_IliiliIlIll(3967384939,SynapseXen_liliIiiiIlli))end end end;local function SynapseXen_Illllii(SynapseXen_lliIIliiIiiilIi)local SynapseXen_IIliIiIlIIliiIili=1;local SynapseXen_Iilili;local SynapseXen_IIIIliiIllliilIIi;local function SynapseXen_lliiiIIl()local SynapseXen_iIIIiIII=SynapseXen_iIiIiIiIllliI(SynapseXen_lliIIliiIiiilIi,SynapseXen_IIliIiIlIIliiIili,SynapseXen_IIliIiIlIIliiIili)SynapseXen_IIliIiIlIIliiIili=SynapseXen_IIliIiIlIIliiIili+1;return SynapseXen_iIIIiIII end;local function SynapseXen_IiIlIlIIl()local SynapseXen_illil,SynapseXen_IlliII,SynapseXen_liillIllliiiliII,SynapseXen_lillilIllIliIllIllll=SynapseXen_iIiIiIiIllliI(SynapseXen_lliIIliiIiiilIi,SynapseXen_IIliIiIlIIliiIili,SynapseXen_IIliIiIlIIliiIili+3)SynapseXen_IIliIiIlIIliiIili=SynapseXen_IIliIiIlIIliiIili+4;return SynapseXen_lillilIllIliIllIllll*16777216+SynapseXen_liillIllliiiliII*65536+SynapseXen_IlliII*256+SynapseXen_illil end;local function SynapseXen_iIiilIIlIilliil()return SynapseXen_IiIlIlIIl()*4294967296+SynapseXen_IiIlIlIIl()end;local function SynapseXen_iiIII()local SynapseXen_IilII=SynapseXen_IlIlIIlIilIIliIlIIl(SynapseXen_IiIlIlIIl(),SynapseXen_liliil[2502633630]or(function(...)local SynapseXen_llllllillIllIlI="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2528156809,3387627778)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3227177970,1067704804)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2502633630]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(31362348,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2170727267,SynapseXen_IlIiiiiiIIiiIli[6]))-string.len(SynapseXen_llllllillIllIlI)-#{316512428,2143268597,828173131,467637888,458168763,3843446262,1410338084}return SynapseXen_liliil[2502633630]end)(4079,{},433,860,{},12568,"iiiIiiIiilililiIl"))local SynapseXen_llIIllIiil=SynapseXen_IlIlIIlIilIIliIlIIl(SynapseXen_IiIlIlIIl(),SynapseXen_liliil[961085053]or(function(...)local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1774069594,1415355505)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2277752799,2017151696)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[961085053]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3331992565,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4192774305,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1077161307,3378127080,1662948002,1474253526,117657123,3562625122,2292166024,2323839915}return SynapseXen_liliil[961085053]end)("IIl",8345,{}))local SynapseXen_Ilili=1;local SynapseXen_lilIIlllilIillIIllIi=SynapseXen_IiiIiiiIliIlI(SynapseXen_llIIllIiil,1,20)*2^32+SynapseXen_IilII;local SynapseXen_iIIIlll=SynapseXen_IiiIiiiIliIlI(SynapseXen_llIIllIiil,21,31)local SynapseXen_llilliilIl=(-1)^SynapseXen_IiiIiiiIliIlI(SynapseXen_llIIllIiil,32)if SynapseXen_iIIIlll==0 then if SynapseXen_lilIIlllilIillIIllIi==0 then return SynapseXen_llilliilIl*0 else SynapseXen_iIIIlll=1;SynapseXen_Ilili=0 end elseif SynapseXen_iIIIlll==2047 then if SynapseXen_lilIIlllilIillIIllIi==0 then return SynapseXen_llilliilIl*1/0 else return SynapseXen_llilliilIl*0/0 end end;return math.ldexp(SynapseXen_llilliilIl,SynapseXen_iIIIlll-1023)*(SynapseXen_Ilili+SynapseXen_lilIIlllilIillIIllIi/2^52)end;local function SynapseXen_Iilii(SynapseXen_IIllIlIliIII)local SynapseXen_lliIiilIliI;if SynapseXen_IIllIlIliIII then SynapseXen_lliIiilIliI=SynapseXen_Illlill(SynapseXen_lliIIliiIiiilIi,SynapseXen_IIliIiIlIIliiIili,SynapseXen_IIliIiIlIIliiIili+SynapseXen_IIllIlIliIII-1)SynapseXen_IIliIiIlIIliiIili=SynapseXen_IIliIiIlIIliiIili+SynapseXen_IIllIlIliIII else SynapseXen_IIllIlIliIII=SynapseXen_Iilili()if SynapseXen_IIllIlIliIII==0 then return""end;SynapseXen_lliIiilIliI=SynapseXen_Illlill(SynapseXen_lliIIliiIiiilIi,SynapseXen_IIliIiIlIIliiIili,SynapseXen_IIliIiIlIIliiIili+SynapseXen_IIllIlIliIII-1)SynapseXen_IIliIiIlIIliiIili=SynapseXen_IIliIiIlIIliiIili+SynapseXen_IIllIlIliIII end;return SynapseXen_lliIiilIliI end;local function SynapseXen_liiiiII(SynapseXen_lliIiilIliI)local SynapseXen_iilliillIllil={}for SynapseXen_IlillIIiiilIillIlI=1,#SynapseXen_lliIiilIliI do local SynapseXen_iiiIlll=SynapseXen_lliIiilIliI:sub(SynapseXen_IlillIIiiilIillIlI,SynapseXen_IlillIIiiilIillIlI)SynapseXen_iilliillIllil[#SynapseXen_iilliillIllil+1]=string.char(SynapseXen_IliiliIlIll(string.byte(SynapseXen_iiiIlll),SynapseXen_liliil[2560506202]or(function()local SynapseXen_llllllillIllIlI="hi my 2.5mb script doesn't work with xen please help"SynapseXen_liliil[2560506202]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(979707943,1482135052),SynapseXen_IliiliIlIll(202849191,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{1028062639,661083887,3518389486,3583215735,275467046,2422836731,1603024559,1931598885,3757076430}return SynapseXen_liliil[2560506202]end)()))end;return table.concat(SynapseXen_iilliillIllil)end;local function SynapseXen_IliIiIillIl()local SynapseXen_Iliilii={}local SynapseXen_IlIIlIlIiiIIi={}local SynapseXen_iiIIllIIlii={}local SynapseXen_lillii={[SynapseXen_liliil[2553632009]or(function(...)local SynapseXen_llllllillIllIlI="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3894864219,2413133694)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(901176696,3393724190)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2553632009]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(419961634,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2018273700,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{153131746,3668211009,1661203267,3792553358,2555129107,1750068874,904954610,3965764902,3986290730}return SynapseXen_liliil[2553632009]end)({},{},"iIlill","IiiiiI",12105)]=SynapseXen_iiIIllIIlii,[SynapseXen_liliil[1470341023]or(function()local SynapseXen_llllllillIllIlI="thats how mafia works"SynapseXen_liliil[1470341023]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(151763415,411148213),SynapseXen_IliiliIlIll(1477034327,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3614449013,1122949159,3973083273,3120213279,3301993485,300355049}return SynapseXen_liliil[1470341023]end)()]=SynapseXen_IlIIlIlIiiIIi,[SynapseXen_liliil[1609163924]or(function(...)local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(709295197,2123685746)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(387381833,387373071)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1609163924]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(359850768,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1650814881,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{974318961,441246156,2272397706}return SynapseXen_liliil[1609163924]end)("ililIilIIlIiil",{},{})]=SynapseXen_Iliilii}SynapseXen_lliiiIIl()SynapseXen_lillii[1653475531]=SynapseXen_IliiliIlIll(SynapseXen_lliiiIIl(),SynapseXen_liliil[481672406]or(function()local SynapseXen_llllllillIllIlI="now with shitty xor string obfuscation"SynapseXen_liliil[481672406]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1546366868,1107730979),SynapseXen_IliiliIlIll(299400786,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{3087678543,2596853258,1638071475,2461861421,821773055}return SynapseXen_liliil[481672406]end)())SynapseXen_lillii[951586879]=SynapseXen_IliiliIlIll(SynapseXen_lliiiIIl(),SynapseXen_liliil[2011287495]or(function(...)local SynapseXen_llllllillIllIlI="baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3215160657,3833111516)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1827336885,1827327628)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2011287495]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(424207658,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(94591748,SynapseXen_IlIiiiiiIIiiIli[4]))-string.len(SynapseXen_llllllillIllIlI)-#{2900227747,3761305739,1172700906,4277444839,3479625746,820799234,594504212,2012975852}return SynapseXen_liliil[2011287495]end)({}))SynapseXen_lliiiIIl()SynapseXen_IiIlIlIIl()for SynapseXen_IilIllli=1,SynapseXen_IliiliIlIll(SynapseXen_IIIIliiIllliilIIi(),SynapseXen_liliil[827472804]or(function()local SynapseXen_llllllillIllIlI="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_liliil[827472804]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1388609811,1272757066),SynapseXen_IliiliIlIll(4274422913,SynapseXen_IlIiiiiiIIiiIli[4]))-string.len(SynapseXen_llllllillIllIlI)-#{1978272967,1854090244,2208419412,1259172779}return SynapseXen_liliil[827472804]end)())do SynapseXen_IiIlIlIIl()local SynapseXen_IllIlilI=SynapseXen_IliiliIlIll(SynapseXen_IiIlIlIIl(),SynapseXen_liliil[2600508192]or(function(...)local SynapseXen_llllllillIllIlI="xen detects custom getfenv"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3603525778,1743455659)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(264047358,4030841489)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2600508192]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3015949615,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2979492049,SynapseXen_IlIiiiiiIIiiIli[9]))-string.len(SynapseXen_llllllillIllIlI)-#{1290650605,3800526443,2600008894}return SynapseXen_liliil[2600508192]end)({},4280,{},14664,"iIiIIiiliIllIliII","IiIiIiii","iIlllilllilillllIiI","liIilllI","IiIlIliIlIi"))local SynapseXen_liIilIlilIIl=SynapseXen_lliiiIIl()SynapseXen_IiIlIlIIl()local SynapseXen_llIiliIiI=SynapseXen_lliiiIIl()local SynapseXen_iiiliIlli={[1380423165]=SynapseXen_IllIlilI,[1696137756]=SynapseXen_liIilIlilIIl,[554367931]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,1,6),[23535425]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,7,14)}if SynapseXen_llIiliIiI==(SynapseXen_liliil[296239227]or(function(...)local SynapseXen_llllllillIllIlI="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3607355221,1669626590)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3973489484,321399245)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[296239227]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3671541572,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(388527302,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-#{3220260298,2718526901,282278374,964534382,1751295119,703567467,2818835497}return SynapseXen_liliil[296239227]end)("IilIIiililI",3658,"iIIilIi","IlII","I",{}))then SynapseXen_iiiliIlli[1155944710]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,24,32)SynapseXen_iiiliIlli[24565209]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,15,23)elseif SynapseXen_llIiliIiI==(SynapseXen_liliil[4233364469]or(function(...)local SynapseXen_llllllillIllIlI="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1242417671,2643663364)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1216958839,3077937875)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4233364469]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3355453322,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3830452104,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-#{1054933923,2921147200,2194580840,3036716640,915371996,741688720,2271410708}return SynapseXen_liliil[4233364469]end)("iIllIliiIlIlIIl","iiilii","iiliiilIlIiiIliI",12289,{},"illiliilIlillilIi"))then SynapseXen_iiiliIlli[1317292623]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,15,32)elseif SynapseXen_llIiliIiI==(SynapseXen_liliil[4139260449]or(function(...)local SynapseXen_llllllillIllIlI="https://twitter.com/Ripull_RBLX/status/1059334518581145603"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2874420992,1744584919)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(593698830,3701200838)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4139260449]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3482800124,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1141853255,SynapseXen_IlIiiiiiIIiiIli[4]))-string.len(SynapseXen_llllllillIllIlI)-#{3581355604,1103250678}return SynapseXen_liliil[4139260449]end)({},{},11760,2513,"ilIlIilIII",5811,4526))then SynapseXen_iiiliIlli[1509258616]=SynapseXen_IiiIiiiIliIlI(SynapseXen_IllIlilI,15,32)-131071 end;SynapseXen_IlIIlIlIiiIIi[SynapseXen_IilIllli]=SynapseXen_iiiliIlli end;SynapseXen_IiIlIlIIl()for SynapseXen_IilIllli=1,SynapseXen_IliiliIlIll(SynapseXen_IIIIliiIllliilIIi(),SynapseXen_liliil[578735378]or(function(...)local SynapseXen_llllllillIllIlI="hi xen crashes on my axon paste plz help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3843625035,2818697145)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3364642233,930258564)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[578735378]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1608968966,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4281099013,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{675241655,3025953667,114374086,865013451,3611327138,786059537,177353449,3548872235}return SynapseXen_liliil[578735378]end)({},"iIlllIiIIIiIlI",13025,"Iiilii","i",{},{},"llI",9008,{}))do local SynapseXen_llIiliIiI=SynapseXen_lliiiIIl()SynapseXen_IiIlIlIIl()local SynapseXen_lIiII;if SynapseXen_llIiliIiI==(SynapseXen_liliil[3444022418]or(function(...)local SynapseXen_llllllillIllIlI="wally bad bird"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3016781242,2386083666)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1796286033,1796279278)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3444022418]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(424086196,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3747777502,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-#{3060454380,2890899134,2863364698}return SynapseXen_liliil[3444022418]end)({},"IIIIiIlII","Iil",9958,{},{},{},{}))then SynapseXen_lIiII=SynapseXen_lliiiIIl()~=0 elseif SynapseXen_llIiliIiI==(SynapseXen_liliil[4247751125]or(function(...)local SynapseXen_llllllillIllIlI="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3092651405,2483021568)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1757009800,2537885392)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4247751125]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1550193049,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2973325582,SynapseXen_IlIiiiiiIIiiIli[9]))-string.len(SynapseXen_llllllillIllIlI)-#{592053959}return SynapseXen_liliil[4247751125]end)({},"lillilIlIiilliiilii","lllIiIllIlli",4286,6567,{},"lIIIIl",6735,{}))then SynapseXen_lIiII=SynapseXen_iiIII()elseif SynapseXen_llIiliIiI==(SynapseXen_liliil[3691505534]or(function(...)local SynapseXen_llllllillIllIlI="can we have an f in chat for ripull"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3660483914,31858861)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(485332628,3809565218)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3691505534]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3753942621,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(70211473,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1010646611,58674091,563116041,1658117098,158005168,2194776052}return SynapseXen_liliil[3691505534]end)(5817,"IIliiliIl",{},3959,5154,"IiIlIII"))then SynapseXen_lIiII=SynapseXen_Illlill(SynapseXen_liiiiII(SynapseXen_Iilii()),1,-2)end;SynapseXen_iiIIllIIlii[SynapseXen_IilIllli-1]=SynapseXen_lIiII end;SynapseXen_IiIlIlIIl()for SynapseXen_IilIllli=1,SynapseXen_IliiliIlIll(SynapseXen_IIIIliiIllliilIIi(),SynapseXen_liliil[2952063233]or(function(...)local SynapseXen_llllllillIllIlI="SECURE API, IMPOSSIBLE TO BYPASS!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2669389313,2664821804)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1920038877,2374862850)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2952063233]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(62011941,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1345268385,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3836769764,3964601576,2269814664,120314851,3908885182,967079353,283376901,1924263419,560323785}return SynapseXen_liliil[2952063233]end)(13890,4010,"lIIIiIIiIIlli",6313,1010,9231))do SynapseXen_Iliilii[SynapseXen_IilIllli-1]=SynapseXen_IliIiIillIl()end;return SynapseXen_lillii end;do assert(SynapseXen_Iilii(4)=="\27Xen","Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")SynapseXen_IIIIliiIllliilIIi=SynapseXen_IiIlIlIIl;SynapseXen_Iilili=SynapseXen_IiIlIlIIl;local SynapseXen_ilIIllIIIlllIii=SynapseXen_Iilii()SynapseXen_lliiiIIl()SynapseXen_lliiiIIl()SynapseXen_liliIiiiIlli=SynapseXen_iiiiiIliIIlll(SynapseXen_IIIIliiIllliilIIi())SynapseXen_lliiiIIl()local SynapseXen_IiIlIIIIIl=0;for SynapseXen_IlillIIiiilIillIlI=1,#SynapseXen_ilIIllIIIlllIii do local SynapseXen_iiiIlll=SynapseXen_ilIIllIIIlllIii:sub(SynapseXen_IlillIIiiilIillIlI,SynapseXen_IlillIIiiilIillIlI)SynapseXen_IiIlIIIIIl=SynapseXen_IiIlIIIIIl+string.byte(SynapseXen_iiiIlll)end;SynapseXen_IiIlIIIIIl=SynapseXen_IliiliIlIll(SynapseXen_IiIlIIIIIl,SynapseXen_liliIiiiIlli)for SynapseXen_IilIllli=1,SynapseXen_lliiiIIl()do SynapseXen_IlIiiiiiIIiiIli[SynapseXen_IilIllli]=SynapseXen_IlIlIIlIilIIliIlIIl(SynapseXen_IIIIliiIllliilIIi(),SynapseXen_IiIlIIIIIl)end;SynapseXen_lIIIIiiilliilIlIIIii()end;return SynapseXen_IliIiIillIl()end;local function SynapseXen_lIilIliillIl(...)return SynapseXen_IIliIiiIIl('#',...),{...}end;local function SynapseXen_iiilIlIlilI(SynapseXen_lillii,SynapseXen_iIiiiiIil,SynapseXen_IiIllillil)local SynapseXen_iiIIllIIlii=SynapseXen_lillii[SynapseXen_liliil[2553632009]or(function(...)local SynapseXen_llllllillIllIlI="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3894864219,2413133694)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(901176696,3393724190)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2553632009]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(419961634,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2018273700,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{153131746,3668211009,1661203267,3792553358,2555129107,1750068874,904954610,3965764902,3986290730}return SynapseXen_liliil[2553632009]end)({},{},"iIlill","IiiiiI",12105)]local SynapseXen_IlIIlIlIiiIIi=SynapseXen_lillii[SynapseXen_liliil[1470341023]or(function()local SynapseXen_llllllillIllIlI="thats how mafia works"SynapseXen_liliil[1470341023]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(151763415,411148213),SynapseXen_IliiliIlIll(1477034327,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3614449013,1122949159,3973083273,3120213279,3301993485,300355049}return SynapseXen_liliil[1470341023]end)()]local SynapseXen_Iliilii=SynapseXen_lillii[SynapseXen_liliil[1609163924]or(function(...)local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(709295197,2123685746)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(387381833,387373071)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1609163924]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(359850768,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1650814881,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{974318961,441246156,2272397706}return SynapseXen_liliil[1609163924]end)("ililIilIIlIiil",{},{})]return function(...)local SynapseXen_iIIIl,SynapseXen_liiIl=1,-1;local SynapseXen_illllll,SynapseXen_iiiiilllilli={},SynapseXen_IIliIiiIIl('#',...)-1;local SynapseXen_ilIIIliilIIIi=0;local SynapseXen_IlIiiiilI={}local SynapseXen_IiIIIIIiil={}local SynapseXen_IlIIllI=setmetatable({},{__index=SynapseXen_IlIiiiilI,__newindex=function(SynapseXen_iiiiIlllIIIlli,SynapseXen_IIlll,SynapseXen_iiIIIlllIllII)if SynapseXen_IIlll>SynapseXen_liiIl then SynapseXen_liiIl=SynapseXen_IIlll end;SynapseXen_IlIiiiilI[SynapseXen_IIlll]=SynapseXen_iiIIIlllIllII end})local function SynapseXen_lIIlliIl()local SynapseXen_iiiliIlli,SynapseXen_iIllillIiIIliiIiIlII;while true do SynapseXen_iiiliIlli=SynapseXen_IlIIlIlIiiIIi[SynapseXen_iIIIl]SynapseXen_iIllillIiIIliiIiIlII=SynapseXen_iiiliIlli[1696137756]SynapseXen_iIIIl=SynapseXen_iIIIl+1;if SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2165999582]or(function(...)local SynapseXen_llllllillIllIlI="aspect network better obfuscator"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1886455043,3180282615)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(849264749,849254651)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2165999582]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(800708098,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3988248132,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{2846861280,2404846052,1847709562,2754582354}return SynapseXen_liliil[2165999582]end)({},14760,875,{},1602))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1394854631]or(function()local SynapseXen_llllllillIllIlI="yed"SynapseXen_liliil[1394854631]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(295721177,2200084022),SynapseXen_IliiliIlIll(2460108226,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{3013400270,1131495690,2890222908,4048073335,2557949635,3522921706,3750407373,3277833117,3939546563}return SynapseXen_liliil[1394854631]end)(),256),SynapseXen_ilIIIliilIIIi)]=SynapseXen_iIiiiiIil[SynapseXen_iiIIllIIlii[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[2646175931]or(function()local SynapseXen_llllllillIllIlI="hi xen doesn't work on sk8r please help"SynapseXen_liliil[2646175931]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2578701958,1079019263),SynapseXen_IliiliIlIll(3653341299,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{2801218215,3976157134,867275733,2387038274,2847676008,3030977524,2710781003}return SynapseXen_liliil[2646175931]end)(),262144)]]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2240976547]or(function()local SynapseXen_llllllillIllIlI="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"SynapseXen_liliil[2240976547]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3016445322,2731087718),SynapseXen_IliiliIlIll(287634803,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1281318699,4122521584,919602840,437281805,2201222042,700028004,347528874,2105268381}return SynapseXen_liliil[2240976547]end)())then local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2156787708]or(function()local SynapseXen_llllllillIllIlI="now comes with a free n word pass"SynapseXen_liliil[2156787708]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3753492216,4269732929),SynapseXen_IliiliIlIll(775290961,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{2146963168,2316389672,4098901236}return SynapseXen_liliil[2156787708]end)(),512)local SynapseXen_iiiIlll=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[1542641045]or(function()local SynapseXen_llllllillIllIlI="i put more time into this shitty list of dead memes then i did into the obfuscator itself"SynapseXen_liliil[1542641045]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2966928897,272799688),SynapseXen_IliiliIlIll(57629883,SynapseXen_IlIiiiiiIIiiIli[14]))-string.len(SynapseXen_llllllillIllIlI)-#{3768822808,3553961879,2942289229,1441950323,760782786,2841516631}return SynapseXen_liliil[1542641045]end)())local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_IilliilIIIililI(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2987091404]or(function(...)local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(815070902,3743055324)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3378824350,3378815761)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2987091404]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3250650608,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1305713339,SynapseXen_IlIiiiiiIIiiIli[2]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2042646411,2550720689,2712861426,3753490021,625903629,463306392,434207301,2855199959,3415861425}return SynapseXen_liliil[2987091404]end)("IliIiiIlIillIIIlI","IIillIilIiilI","li","lil",7109,"IilliiiIlI"),256),SynapseXen_ilIIIliilIIIi,256)]=SynapseXen_lIliililllIIil^SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2398085820]or(function(...)local SynapseXen_llllllillIllIlI="wait for someone on devforum to say they are gonna deobfuscate this"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3586901889,1973320487)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3283841692,1011052724)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2398085820]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2457259162,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(839120958,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{4123909113}return SynapseXen_liliil[2398085820]end)(8854))then local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2250206141]or(function()local SynapseXen_llllllillIllIlI="level 1 crook = luraph, level 100 boss = xen"SynapseXen_liliil[2250206141]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3748839588,685041710),SynapseXen_IliiliIlIll(2486957853,SynapseXen_IlIiiiiiIIiiIli[2]))-string.len(SynapseXen_llllllillIllIlI)-#{2691036202,2852334002}return SynapseXen_liliil[2250206141]end)(),512)local SynapseXen_iiiIlll=SynapseXen_IilliilIIIililI(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[1647680032]or(function()local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"SynapseXen_liliil[1647680032]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2138344499,1940941386),SynapseXen_IliiliIlIll(216164521,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3028420645,1738872852,1684147386,2589711467}return SynapseXen_liliil[1647680032]end)()),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2123030785]or(function()local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"SynapseXen_liliil[2123030785]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3170843590,710805653),SynapseXen_IliiliIlIll(408895388,SynapseXen_IlIiiiiiIIiiIli[1]))-string.len(SynapseXen_llllllillIllIlI)-#{860966544,3873092924}return SynapseXen_liliil[2123030785]end)(),256)]=SynapseXen_lIliililllIIil/SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[593998195]or(function()local SynapseXen_llllllillIllIlI="https://twitter.com/Ripull_RBLX/status/1059334518581145603"SynapseXen_liliil[593998195]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(4207272973,2083514779),SynapseXen_IliiliIlIll(2261861068,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1453432046,859143231,3123872241,663009445,546304172,233423421}return SynapseXen_liliil[593998195]end)())then SynapseXen_iIiiiiIil[SynapseXen_iiIIllIIlii[SynapseXen_lllliIiIIlilIiill(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[2331850943]or(function()local SynapseXen_llllllillIllIlI="hi my 2.5mb script doesn't work with xen please help"SynapseXen_liliil[2331850943]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1743002688,1583939938),SynapseXen_IliiliIlIll(315981915,SynapseXen_IlIiiiiiIIiiIli[6]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{4050639153,3254192339,215806698}return SynapseXen_liliil[2331850943]end)(),262144),SynapseXen_ilIIIliilIIIi,262144)]]=SynapseXen_IlIIllI[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1779915473]or(function(...)local SynapseXen_llllllillIllIlI="xen best rerubi paste"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1892622081,1752922510)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(4066237895,228647845)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1779915473]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2460188856,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2318814229,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1211834637,1588247855,2925137889,3775214922,3517603954,2111484550,891985657,3477789171,2237775889,2787929346}return SynapseXen_liliil[1779915473]end)("IiIiIliiliiil",{},{},3754),256)]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[371442838]or(function(...)local SynapseXen_llllllillIllIlI="hi xen doesn't work on sk8r please help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3205509476,3287591817)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1051156511,1051147233)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[371442838]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2612939704,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3883844490,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{422577455,2292845489,1359079103,2159083447,2534760069}return SynapseXen_liliil[371442838]end)(13091,"lil","ill",10209,"IIliIiIilllli","ilIIIllIliiiililIli",10386,{}))then local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[1136174556]or(function()local SynapseXen_llllllillIllIlI="print(bytecode)"SynapseXen_liliil[1136174556]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(192963880,3795770705),SynapseXen_IliiliIlIll(2317538292,SynapseXen_IlIiiiiiIIiiIli[2]))-string.len(SynapseXen_llllllillIllIlI)-#{2793580008,3362727694,3449101100,1918672028,2960887453,4136425289,2940499612,3171862642,3730694273,890286861}return SynapseXen_liliil[1136174556]end)(),512)local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[2637887650]or(function(...)local SynapseXen_llllllillIllIlI="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1738196313,3909348783)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1536546356,2758351541)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2637887650]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(343593740,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4107236393,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{1163784114,3239380535,2437842266,1308685350}return SynapseXen_liliil[2637887650]end)({},6474,2886,{},3496,8537,{}),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1814624937]or(function()local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"SynapseXen_liliil[1814624937]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2656028352,3937195286),SynapseXen_IliiliIlIll(1960522214,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3743401010,958607910,741137441,2133929655,1819248742,2438061818,3351442553,2693795066,2330825897}return SynapseXen_liliil[1814624937]end)())]=SynapseXen_lIliililllIIil%SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3661041344]or(function()local SynapseXen_llllllillIllIlI="wow xen is shit buy luraph ok"SynapseXen_liliil[3661041344]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(604294147,2218110912),SynapseXen_IliiliIlIll(2948650994,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{847308150,1023059628,3520893132,2243410218,2954542756}return SynapseXen_liliil[3661041344]end)())then local SynapseXen_llIiiIiI=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[4112350255]or(function()local SynapseXen_llllllillIllIlI="thats how mafia works"SynapseXen_liliil[4112350255]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2984675291,3462717549),SynapseXen_IliiliIlIll(2141516536,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{1578998930,471535862,1365541980,2766059251,2348018605,1429981791,3739863903,1914510250,1873417490,2510905075}return SynapseXen_liliil[4112350255]end)(),256)local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[3223470766]or(function(...)local SynapseXen_llllllillIllIlI="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(386888564,12348678)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(115622218,4179279554)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3223470766]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1939355426,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1678638828,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1048352196,3540375299,4265064503,1949776755,4151809737,667428089,3508145996,1186265359,723647736,3558094012}return SynapseXen_liliil[3223470766]end)(7288,{},{},{},{},"iilIIiIIIIillliliI","iliIlIliiiiil","lIIIi","IIllIIlIiIiIIiIIiIi","lIilIiIiII")),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[4092263878]or(function(...)local SynapseXen_llllllillIllIlI="wally bad bird"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2505100067,1605853428)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3305739522,989156525)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4092263878]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3289926658,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(249025424,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2169091567,747679036,1401670822,4261038170}return SynapseXen_liliil[4092263878]end)(10322,{},"IIiIlI","lliIIIi",{}),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1]=SynapseXen_lIliililllIIil;SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]=SynapseXen_lIliililllIIil[SynapseXen_iiiIlll]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[559068655]or(function(...)local SynapseXen_llllllillIllIlI="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(436281001,1743722051)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(884270353,3410630541)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[559068655]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2478206298,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4001283329,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3650728731,687833146}return SynapseXen_liliil[559068655]end)("II",7649,{},{}))then local SynapseXen_llIiiIiI=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3790658519]or(function(...)local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3929249038,2141883966)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1847914689,1847905820)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3790658519]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1355770465,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2935073969,SynapseXen_IlIiiiiiIIiiIli[5]))-string.len(SynapseXen_llllllillIllIlI)-#{2270557198}return SynapseXen_liliil[3790658519]end)(10909,"IlIli",{},6482,"iIIlllilIilIlIlllI"))~=0;local SynapseXen_lIliililllIIil=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[4060176907]or(function()local SynapseXen_llllllillIllIlI="now with shitty xor string obfuscation"SynapseXen_liliil[4060176907]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2632566141,3307341430),SynapseXen_IliiliIlIll(1508852110,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{1811536698,3781891644,3896676142,2573539185,1846681201,1909935980}return SynapseXen_liliil[4060176907]end)())local SynapseXen_iiiIlll=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[3510760804]or(function(...)local SynapseXen_llllllillIllIlI="SECURE API, IMPOSSIBLE TO BYPASS!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2473462763,637812844)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(555495009,3739401607)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3510760804]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3412258217,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2116950810,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3758899100,1207452164}return SynapseXen_liliil[3510760804]end)("illliiiIIiilIlIII",{},"lIIiIIIiIIiliiIlIIi","IiI","IlIIilIllli"))local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;if SynapseXen_lIliililllIIil==SynapseXen_iiiIlll~=SynapseXen_llIiiIiI then SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[4203077777]or(function(...)local SynapseXen_llllllillIllIlI="aspect network better obfuscator"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1988772266,1409470351)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1364298137,1364287898)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4203077777]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2849836995,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2685207191,SynapseXen_IlIiiiiiIIiiIli[6]))-string.len(SynapseXen_llllllillIllIlI)-#{2496434521,3525842349,1572265891,2123464666,2140236208}return SynapseXen_liliil[4203077777]end)("iiiiiIiillIllIlI","iiI","iiiIil",{},{},"liIllIliIiii"))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[142195230]or(function()local SynapseXen_llllllillIllIlI="hi xen crashes on my axon paste plz help"SynapseXen_liliil[142195230]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3746704657,3041871685),SynapseXen_IliiliIlIll(1782260820,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3136068308,1224057752,1559669093,1023368802,3120972832,3393870392,3686581324,1240172755,3291758505}return SynapseXen_liliil[142195230]end)())]=SynapseXen_IiIllillil[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2610845978]or(function()local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"SynapseXen_liliil[2610845978]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(67263569,1373888487),SynapseXen_IliiliIlIll(1463510448,SynapseXen_IlIiiiiiIIiiIli[11]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{867311123,1466828396,25506935,3925047101,281420615,77453921,4000083537}return SynapseXen_liliil[2610845978]end)())]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3321638948]or(function()local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"SynapseXen_liliil[3321638948]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2644446725,1766712694),SynapseXen_IliiliIlIll(39172807,SynapseXen_IlIiiiiiIIiiIli[8]))-string.len(SynapseXen_llllllillIllIlI)-#{1425727797,3728809826}return SynapseXen_liliil[3321638948]end)())then SynapseXen_IiIllillil[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[169494227]or(function()local SynapseXen_llllllillIllIlI="wally bad bird"SynapseXen_liliil[169494227]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3688521821,2825064372),SynapseXen_IliiliIlIll(1939864136,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{4180577605}return SynapseXen_liliil[169494227]end)(),512)]=SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3163510260]or(function()local SynapseXen_llllllillIllIlI="luraph better then xen bros :pensive:"SynapseXen_liliil[3163510260]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1544138231,1660308595),SynapseXen_IliiliIlIll(1054517406,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3327706389,2442615367,1086883486,2717327213}return SynapseXen_liliil[3163510260]end)())]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[609934468]or(function()local SynapseXen_llllllillIllIlI="https://twitter.com/Ripull_RBLX/status/1059334518581145603"SynapseXen_liliil[609934468]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3439839085,2144838209),SynapseXen_IliiliIlIll(3002494962,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{4250412863,571835599,2772336992,3079790809,3503422920,2450632208,3085143636}return SynapseXen_liliil[609934468]end)())then if not not SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1263807785]or(function(...)local SynapseXen_llllllillIllIlI="xen doesn't come with instance caching, sorry superskater"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3176052212,1359115016)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(498533627,3796352125)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1263807785]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1292239508,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2708218164,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3917441869,501220322,2250524628,3858147071,2399049795,3073716650,1573617267,2809930785}return SynapseXen_liliil[1263807785]end)("iiIllIiiIIlIil",{},1219,6574,"llIIliIilI"))]==(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[1300951975]or(function(...)local SynapseXen_llllllillIllIlI="thats how mafia works"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(963999740,898705814)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3122371361,1172528462)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1300951975]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2011485814,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2066096570,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3364448155,642338508,3764423806,3557249785,1609123838,2166117373,1710013008,33267127,2446594139}return SynapseXen_liliil[1300951975]end)({},{},"IliIil","IliIIlllIiIIiiI",{},"lIIlI"),512)==0)then SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[4105522796]or(function(...)local SynapseXen_llllllillIllIlI="this is so sad, alexa play ripull.mp4"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(346483959,3332553460)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2967921662,1326979586)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4105522796]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2709163301,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1935195659,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3924260145,2757068892,2393418457}return SynapseXen_liliil[4105522796]end)({},105,"l","IIIliilIiIliIlli"))then local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[1529510937]or(function(...)local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(103062384,2514634076)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3315407667,3315399273)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1529510937]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3264466079,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3752145275,SynapseXen_IlIiiiiiIIiiIli[1]))-string.len(SynapseXen_llllllillIllIlI)-#{1274842106,4019850914,3036975298,1171767307,3710790827,4184853407,3101862811}return SynapseXen_liliil[1529510937]end)({},"illIi",{}),512)local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[128748943]or(function()local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"SynapseXen_liliil[128748943]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3188465617,2800916374),SynapseXen_IliiliIlIll(416908486,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{3051008823,4052026247,1038883954,132198919,3605944781,551437700,359677627,3523195013}return SynapseXen_liliil[128748943]end)(),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[642577303]or(function()local SynapseXen_llllllillIllIlI="can we have an f in chat for ripull"SynapseXen_liliil[642577303]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1660384308,2369114083),SynapseXen_IliiliIlIll(1278586628,SynapseXen_IlIiiiiiIIiiIli[14]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{4136962420,1021791068,1490575275,2250045273,1936209795}return SynapseXen_liliil[642577303]end)(),256)]=SynapseXen_lIliililllIIil-SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[839027868]or(function(...)local SynapseXen_llllllillIllIlI="SECURE API, IMPOSSIBLE TO BYPASS!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(320955836,3634918120)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1932858657,1932850191)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[839027868]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1674284794,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3510447453,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-#{3822303104,3315470522,1292049661,387279335,1566495131,952866987,1301357616}return SynapseXen_liliil[839027868]end)({},4354,"iI",{},5771,12808,{},81,"IlIIlIIIliIilI"))then local SynapseXen_llIiiIiI=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1819475801]or(function()local SynapseXen_llllllillIllIlI="now with shitty xor string obfuscation"SynapseXen_liliil[1819475801]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3785381098,3207777234),SynapseXen_IliiliIlIll(1588965456,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3931649886,3709121149,524341785,3350757958,1662644909,1719044562,423677742,2128266680}return SynapseXen_liliil[1819475801]end)(),256)local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[526446711]or(function()local SynapseXen_llllllillIllIlI="aspect network better obfuscator"SynapseXen_liliil[526446711]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2361506260,3168735681),SynapseXen_IliiliIlIll(809234287,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{825765820,1959393514,3252674400,3716113771,2487843557,3654406928,2313012381,1683992136}return SynapseXen_liliil[526446711]end)(),512)local SynapseXen_lllilllIIilII,SynapseXen_IiilllIili=SynapseXen_IlIIllI,SynapseXen_illllll;SynapseXen_liiIl=SynapseXen_llIiiIiI-1;for SynapseXen_IilIllli=SynapseXen_llIiiIiI,SynapseXen_llIiiIiI+(SynapseXen_lIliililllIIil>0 and SynapseXen_lIliililllIIil-1 or SynapseXen_iiiiilllilli)do SynapseXen_lllilllIIilII[SynapseXen_IilIllli]=SynapseXen_IiilllIili[SynapseXen_IilIllli-SynapseXen_llIiiIiI]end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[4164149389]or(function(...)local SynapseXen_llllllillIllIlI="hi xen crashes on my axon paste plz help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2076534768,14699548)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2034558388,2034550178)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4164149389]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(832573470,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1165463745,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{962585869}return SynapseXen_liliil[4164149389]end)(9192,4061,{},"illl",{},"lIIlIlIliiilillIIii",{},1514))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3735939660]or(function()local SynapseXen_llllllillIllIlI="print(bytecode)"SynapseXen_liliil[3735939660]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(4192880569,2945718107),SynapseXen_IliiliIlIll(1448671869,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2009965548,2763252125,3580430300,3151354714,806699280,772092246,3521644481,1719909851,112134592,2386744238}return SynapseXen_liliil[3735939660]end)()),SynapseXen_ilIIIliilIIIi)]=#SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[679705403]or(function()local SynapseXen_llllllillIllIlI="now comes with a free n word pass"SynapseXen_liliil[679705403]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2580661298,1440652886),SynapseXen_IliiliIlIll(3425433084,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{967024823,2313443806,436887877,4175643809,2476803895,3955199815,4004827950,2558994746}return SynapseXen_liliil[679705403]end)())]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[74130757]or(function(...)local SynapseXen_llllllillIllIlI="xen detects custom getfenv"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1835551481,3769373465)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(903303532,3391583768)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[74130757]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2097914712,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2471674004,SynapseXen_IlIiiiiiIIiiIli[2]))-string.len(SynapseXen_llllllillIllIlI)-#{2820335560,2795353700,578821757,2291517923,2381268034,1253877689}return SynapseXen_liliil[74130757]end)(11321))then local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[551000150]or(function(...)local SynapseXen_llllllillIllIlI="wally bad bird"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3052448059,1612421217)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3059568032,1235324873)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[551000150]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(259632762,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2750125848,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2232667524,1542906732,3354342077}return SynapseXen_liliil[551000150]end)(7195,{},12462,"IIliIiI",1612,{},{}),512),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_iiiIlll=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[887898677]or(function()local SynapseXen_llllllillIllIlI="hi devforum"SynapseXen_liliil[887898677]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2247943205,285067750),SynapseXen_IliiliIlIll(2502254654,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1310342625,2830546608,1085179038,2348384034,250965821,1649154350,1863034020,488147796}return SynapseXen_liliil[887898677]end)(),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[4069578380]or(function()local SynapseXen_llllllillIllIlI="can we have an f in chat for ripull"SynapseXen_liliil[4069578380]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(593706706,3388856490),SynapseXen_IliiliIlIll(3938165942,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{3119400962,3101072211,1356193943,693556563,2661601600}return SynapseXen_liliil[4069578380]end)(),256)]=SynapseXen_lIliililllIIil*SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[272747112]or(function(...)local SynapseXen_llllllillIllIlI="hi xen doesn't work on sk8r please help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1670913420,104156723)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2754726781,1540165344)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[272747112]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(334035878,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1986041185,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1440787517,1848285248,2696491882,843235187,349719830,2582330940,767067358,3840646988}return SynapseXen_liliil[272747112]end)({},"iiIIlIlilI",3432,{},10123,5006,{}))then local SynapseXen_iiiIlll=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[402659150]or(function()local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"SynapseXen_liliil[402659150]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1416112271,3803842483),SynapseXen_IliiliIlIll(1293721408,SynapseXen_IlIiiiiiIIiiIli[7]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{3663120380,543835446,2961297803,112493325,1967821390}return SynapseXen_liliil[402659150]end)()),SynapseXen_ilIIIliilIIIi)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3736264573]or(function()local SynapseXen_llllllillIllIlI="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."SynapseXen_liliil[3736264573]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2685419667,3083926190),SynapseXen_IliiliIlIll(3960469983,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-#{634633111}return SynapseXen_liliil[3736264573]end)(),256)]=SynapseXen_lllilllIIilII[SynapseXen_IilliilIIIililI(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[974102465]or(function(...)local SynapseXen_llllllillIllIlI="hi my 2.5mb script doesn't work with xen please help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(4159286322,189623878)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2710383716,1584505014)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[974102465]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2699612498,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1550709248,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2383726510}return SynapseXen_liliil[974102465]end)(13938,{},{},{},{},8273,"IIlliIilliIili",{},"lIilliiiiIiIililili"),512),SynapseXen_ilIIIliilIIIi,512)][SynapseXen_iiiIlll]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1254439869]or(function(...)local SynapseXen_llllllillIllIlI="sponsored by ironbrew, jk xen is better"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(4038063255,3728311486)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(455274422,3839621697)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1254439869]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2946929033,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2164880393,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3215390393,3126787880,1150286138,91449114}return SynapseXen_liliil[1254439869]end)({},445,"Iil","lIIIlIIiilllilIiiiI","IIIlI",{},12076,{},{}))then local SynapseXen_lIliililllIIil,SynapseXen_iiiIlll=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[4206484606]or(function(...)local SynapseXen_llllllillIllIlI="thats how mafia works"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2061383784,543896829)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3003296436,1291604644)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4206484606]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1895030384,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2310185555,SynapseXen_IlIiiiiiIIiiIli[14]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3487250380,3082772284,1165487649}return SynapseXen_liliil[4206484606]end)(14824,{},{},2757,"liiIlliIIliIi","iiIiiiIliIll",9142)),SynapseXen_lllliIiIIlilIiill(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[1114941840]or(function()local SynapseXen_llllllillIllIlI="level 1 crook = luraph, level 100 boss = xen"SynapseXen_liliil[1114941840]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(764641968,4116437376),SynapseXen_IliiliIlIll(3658615721,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{3815008330,3007268210,4148465570,3027343248,447655125,757832870,672101989,2872582856,3698020421,1112345361}return SynapseXen_liliil[1114941840]end)(),512),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2810630061]or(function()local SynapseXen_llllllillIllIlI="aspect network better obfuscator"SynapseXen_liliil[2810630061]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1920109071,433405962),SynapseXen_IliiliIlIll(93189016,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{2401821186,4034654126,3951730672}return SynapseXen_liliil[2810630061]end)())][SynapseXen_lIliililllIIil]=SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3129610684]or(function()local SynapseXen_llllllillIllIlI="wow xen is shit buy luraph ok"SynapseXen_liliil[3129610684]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3631220308,1146702406),SynapseXen_IliiliIlIll(3077571929,SynapseXen_IlIiiiiiIIiiIli[6]))-string.len(SynapseXen_llllllillIllIlI)-#{3488193487,19530105,689920557}return SynapseXen_liliil[3129610684]end)())then local SynapseXen_llIiiIiI=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[61161436]or(function(...)local SynapseXen_llllllillIllIlI="now with shitty xor string obfuscation"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3055407381,395773661)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(4147040019,4147030518)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[61161436]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2925929978,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2072236,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{1281065222}return SynapseXen_liliil[61161436]end)("iiIiil",668,2698,13322,"i"))local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]=assert(tonumber(SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]),'`for` initial value must be a number')SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1]=assert(tonumber(SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1]),'`for` limit must be a number')SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2]=assert(tonumber(SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2]),'`for` step must be a number')SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]-SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2]SynapseXen_iIIIl=SynapseXen_iIIIl+SynapseXen_iiiliIlli[1509258616]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3131411996]or(function(...)local SynapseXen_llllllillIllIlI="this is so sad, alexa play ripull.mp4"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2602868889,1805612282)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1083497359,3211401438)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3131411996]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3119887789,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3347994818,SynapseXen_IlIiiiiiIIiiIli[1]))-string.len(SynapseXen_llllllillIllIlI)-#{3388500309,3590126651,3148526696,3890459303,819515861,3676299227,3885596965,4135659884,904759620,1312302325}return SynapseXen_liliil[3131411996]end)("lIIlIIilIllIi","Il",{},3921,5543,"I",{},"Iilllll"))then local SynapseXen_llIiiIiI=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2992611009]or(function(...)local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(580532988,3212577805)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3596091400,698812752)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2992611009]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(643285781,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3147281016,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3843944549}return SynapseXen_liliil[2992611009]end)("iiI",6930,"illIIIlIll","lilIiIIllIlI")),SynapseXen_ilIIIliilIIIi)local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[385688060]or(function(...)local SynapseXen_llllllillIllIlI="luraph better then xen bros :pensive:"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1116146177,1432991310)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1203291634,3091600943)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[385688060]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(787421660,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2599840739,SynapseXen_IlIiiiiiIIiiIli[14]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3235998387,791474554,1379752470,1426929936,1192350959,4072913300,2104097122,161349866,3149751892,2712013035}return SynapseXen_liliil[385688060]end)(11739,{},{},"iIlIilIl",{},5540,"IIilll",{},4209),512),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_liIiIIlIIIiliillIl,SynapseXen_liIIlll;local SynapseXen_ilIlllIi;if SynapseXen_lIliililllIIil==1 then return elseif SynapseXen_lIliililllIIil==0 then SynapseXen_ilIlllIi=SynapseXen_liiIl else SynapseXen_ilIlllIi=SynapseXen_llIiiIiI+SynapseXen_lIliililllIIil-2 end;SynapseXen_liIIlll={}SynapseXen_liIiIIlIIIiliillIl=0;for SynapseXen_IilIllli=SynapseXen_llIiiIiI,SynapseXen_ilIlllIi do SynapseXen_liIiIIlIIIiliillIl=SynapseXen_liIiIIlIIIiliillIl+1;SynapseXen_liIIlll[SynapseXen_liIiIIlIIIiliillIl]=SynapseXen_lllilllIIilII[SynapseXen_IilIllli]end;return SynapseXen_liIIlll,SynapseXen_liIiIIlIIIiliillIl elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3855941927]or(function()local SynapseXen_llllllillIllIlI="skisploit is the superior obfuscator, clearly."SynapseXen_liliil[3855941927]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1359809923,2336501475),SynapseXen_IliiliIlIll(3664719010,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2957052354,4146422254,1657604712,641128835,1696817290,841887298,918265457,2191392658,2914155473}return SynapseXen_liliil[3855941927]end)())then local SynapseXen_llIiiIiI=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1302217792]or(function(...)local SynapseXen_llllllillIllIlI="can we have an f in chat for ripull"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(388754226,395771809)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(364063487,3930830243)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1302217792]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(433345795,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3630324833,SynapseXen_IlIiiiiiIIiiIli[9]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{1115652184,3823326400}return SynapseXen_liliil[1302217792]end)({},4218,950,5634,6696,{}),256)local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2293011105]or(function(...)local SynapseXen_llllllillIllIlI="hi devforum"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1209326892,2063568351)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(620316390,3674575763)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2293011105]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2764201435,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2549238895,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2351896082,3867648620,1195500792,2522576731,1973526764,3396552241,2398007265,2951411829}return SynapseXen_liliil[2293011105]end)({},"IlIIiIllIii",{},"liliIlIiililiI",{},{}),512)local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[264134115]or(function(...)local SynapseXen_llllllillIllIlI="https://twitter.com/Ripull_RBLX/status/1059334518581145603"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3013851196,454173775)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1760379564,1760368968)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[264134115]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(368904596,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3178016232,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3841362398,1701297712,2103000668,2143506512,1744661704,2657735402,2001512109,1428390202,478883893}return SynapseXen_liliil[264134115]end)("liIIilIIlli","iIilililIlliliiII",6678,"IlilIiiiIiIII","iIliii",{},{},{},4661),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_iiiIlll==0 then SynapseXen_iIIIl=SynapseXen_iIIIl+1;SynapseXen_iiiIlll=SynapseXen_IlIIlIlIiiIIi[SynapseXen_iIIIl][1380423165]end;local SynapseXen_liIiillilI=(SynapseXen_iiiIlll-1)*50;local SynapseXen_IlIliIlIliIII=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]if SynapseXen_lIliililllIIil==0 then SynapseXen_lIliililllIIil=SynapseXen_liiIl-SynapseXen_llIiiIiI end;for SynapseXen_IilIllli=1,SynapseXen_lIliililllIIil do SynapseXen_IlIliIlIliIII[SynapseXen_liIiillilI+SynapseXen_IilIllli]=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+SynapseXen_IilIllli]end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[169548289]or(function(...)local SynapseXen_llllllillIllIlI="xen best rerubi paste"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2420235892,1765839421)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3834530633,460363738)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[169548289]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(4166974536,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(704914915,SynapseXen_IlIiiiiiIIiiIli[6]))-string.len(SynapseXen_llllllillIllIlI)-#{1575870338,115348988,2171069754,1326429405,1425421783,2039267602,1538311443,71815075,1694257533}return SynapseXen_liliil[169548289]end)(14042,"Ii","lllilli",7270))then local SynapseXen_llIiiIiI=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1078696107]or(function()local SynapseXen_llllllillIllIlI="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."SynapseXen_liliil[1078696107]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1325344068,2577251811),SynapseXen_IliiliIlIll(3611584708,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{409505754,1715200926,1798889137,2908448331,2076740240,1400091270,1202238109,1862282672}return SynapseXen_liliil[1078696107]end)(),256)local SynapseXen_liIlIIiiiililiillIli={}for SynapseXen_IilIllli=1,#SynapseXen_IiIIIIIiil do local SynapseXen_IlllIllIilli=SynapseXen_IiIIIIIiil[SynapseXen_IilIllli]for SynapseXen_lilll=0,#SynapseXen_IlllIllIilli do local SynapseXen_IilIiiliIIIilii=SynapseXen_IlllIllIilli[SynapseXen_lilll]local SynapseXen_lllilllIIilII=SynapseXen_IilIiiliIIIilii[1]local SynapseXen_IIliIiIlIIliiIili=SynapseXen_IilIiiliIIIilii[2]if SynapseXen_lllilllIIilII==SynapseXen_IlIIllI and SynapseXen_IIliIiIlIIliiIili>=SynapseXen_llIiiIiI then SynapseXen_liIlIIiiiililiillIli[SynapseXen_IIliIiIlIIliiIili]=SynapseXen_lllilllIIilII[SynapseXen_IIliIiIlIIliiIili]SynapseXen_IilIiiliIIIilii[1]=SynapseXen_liIlIIiiiililiillIli end end end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1759614967]or(function(...)local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(262772847,2115537840)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3253316978,1041572693)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1759614967]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(323193082,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(215739532,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{3736819553,1800682467}return SynapseXen_liliil[1759614967]end)(6289,{},{},{},"IIllIiliiIiIiiIIl",{},{},{},8929))then SynapseXen_iIIIl=SynapseXen_iIIIl+SynapseXen_iiiliIlli[1509258616]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1419226632]or(function()local SynapseXen_llllllillIllIlI="print(bytecode)"SynapseXen_liliil[1419226632]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3274847545,787888987),SynapseXen_IliiliIlIll(3991060606,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{663292639,3829230815}return SynapseXen_liliil[1419226632]end)())then local SynapseXen_lIliililllIIil=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[1367189269]or(function()local SynapseXen_llllllillIllIlI="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_liliil[1367189269]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3822024846,1022969207),SynapseXen_IliiliIlIll(3742374457,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{2766296981}return SynapseXen_liliil[1367189269]end)())local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[1507673536]or(function()local SynapseXen_llllllillIllIlI="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."SynapseXen_liliil[1507673536]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(477872330,3980256623),SynapseXen_IliiliIlIll(3659233274,SynapseXen_IlIiiiiiIIiiIli[6]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{1962443297,2174836992,4294478587,324235437,1574364306}return SynapseXen_liliil[1507673536]end)(),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;SynapseXen_lllilllIIilII[SynapseXen_lllliIiIIlilIiill(SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1096156871]or(function(...)local SynapseXen_llllllillIllIlI="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1719302982,3860377164)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(469203541,3825689881)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1096156871]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2016789273,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4168098499,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3893611344}return SynapseXen_liliil[1096156871]end)(4972,"ililIII",6661),256),SynapseXen_ilIIIliilIIIi,256)]=SynapseXen_lIliililllIIil+SynapseXen_iiiIlll elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[838944317]or(function()local SynapseXen_llllllillIllIlI="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_liliil[838944317]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3654291657,543331582),SynapseXen_IliiliIlIll(4187337455,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3787195546,2479490639,2813883615,2365526799,3344828280,693955555}return SynapseXen_liliil[838944317]end)())then local SynapseXen_llIiiIiI=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1309489654]or(function(...)local SynapseXen_llllllillIllIlI="skisploit is the superior obfuscator, clearly."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2022802370,4183419919)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3179684468,1115215684)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1309489654]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1308772612,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2298204503,SynapseXen_IlIiiiiiIIiiIli[4]))-string.len(SynapseXen_llllllillIllIlI)-#{676126277,2685748707,4161601277,3495056013,3261718418,666371406,768683046,1562845451,12307481}return SynapseXen_liliil[1309489654]end)({},{}),256)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_iiIiliiIiIIiIl=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2]local SynapseXen_iliIiIiiliIliillII=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]+SynapseXen_iiIiliiIiIIiIl;SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]=SynapseXen_iliIiIiiliIliillII;if SynapseXen_iiIiliiIiIIiIl>0 then if SynapseXen_iliIiIiiliIliillII<=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1]then SynapseXen_iIIIl=SynapseXen_iIIIl+SynapseXen_iiiliIlli[1509258616]SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+3]=SynapseXen_iliIiIiiliIliillII end else if SynapseXen_iliIiIiiliIliillII>=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1]then SynapseXen_iIIIl=SynapseXen_iIIIl+SynapseXen_iiiliIlli[1509258616]SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+3]=SynapseXen_iliIiIiiliIliillII end end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[453179529]or(function(...)local SynapseXen_llllllillIllIlI="yed"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3066042624,1842788718)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1274222486,3020663137)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[453179529]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2635546547,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1154652041,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{2536404979,3331604030}return SynapseXen_liliil[453179529]end)(6465,711))then SynapseXen_IlIIllI[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3566116197]or(function(...)local SynapseXen_llllllillIllIlI="thats how mafia works"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3814085089,1996304004)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(489885142,489877041)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3566116197]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1167670434,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3491026345,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1982846701,1037246574,550407340}return SynapseXen_liliil[3566116197]end)(12001,"llii",5655,{},"iIiIiliiiliiIlilIlI"),256)]={}elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1308920248]or(function(...)local SynapseXen_llllllillIllIlI="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2043897002,3566323800)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3849671748,445212553)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1308920248]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(4117959004,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1525621057,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{1240815237}return SynapseXen_liliil[1308920248]end)("IiilIlIIIIiiIiliIlI","Iii",1208,"lilIi",{},5515,{},{}))then local SynapseXen_llIiiIiI=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1930279411]or(function(...)local SynapseXen_llllllillIllIlI="xen best rerubi paste"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2747774223,3941495586)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3256216248,3256205561)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1930279411]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2467916507,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(570390918,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3823488880}return SynapseXen_liliil[1930279411]end)(6421,"IliI",{},5004,{},{},{},"IilIliIiiiilIIil",11725,12299),256)local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[3357179452]or(function(...)local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(963711678,4294184632)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1850109524,2444780117)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3357179452]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1130983744,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2244730971,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2097052135,2510599046,3665252136,3653505374}return SynapseXen_liliil[3357179452]end)(1888,{},"ilIIlIlIllil",{},{},"lllIlIililIl",5741,{},"IIIiIliiiIllilIlII","IilIiIIIllii"),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_illIIiliII,SynapseXen_IlililiIIiiIl;local SynapseXen_ilIlllIi;local SynapseXen_IliiIllIllIiIIIlI=0;SynapseXen_illIIiliII={}if SynapseXen_lIliililllIIil~=1 then if SynapseXen_lIliililllIIil~=0 then SynapseXen_ilIlllIi=SynapseXen_llIiiIiI+SynapseXen_lIliililllIIil-1 else SynapseXen_ilIlllIi=SynapseXen_liiIl end;for SynapseXen_IilIllli=SynapseXen_llIiiIiI+1,SynapseXen_ilIlllIi do SynapseXen_illIIiliII[#SynapseXen_illIIiliII+1]=SynapseXen_lllilllIIilII[SynapseXen_IilIllli]end;SynapseXen_IlililiIIiiIl={SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI](unpack(SynapseXen_illIIiliII,1,SynapseXen_ilIlllIi-SynapseXen_llIiiIiI))}else SynapseXen_IlililiIIiiIl={SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]()}end;for SynapseXen_iliIiIiiliIliillII in next,SynapseXen_IlililiIIiiIl do if SynapseXen_iliIiIiiliIliillII>SynapseXen_IliiIllIllIiIIIlI then SynapseXen_IliiIllIllIiIIIlI=SynapseXen_iliIiIiiliIliillII end end;return SynapseXen_IlililiIIiiIl,SynapseXen_IliiIllIllIiIIIlI elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2568466051]or(function()local SynapseXen_llllllillIllIlI="aspect network better obfuscator"SynapseXen_liliil[2568466051]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(4210358030,1915307560),SynapseXen_IliiliIlIll(2298125295,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2082392384,4068589958,4062377770,1958349971,3295289635}return SynapseXen_liliil[2568466051]end)())then if SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[183576796]or(function(...)local SynapseXen_llllllillIllIlI="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3786348387,2836944193)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3063561861,3063553314)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[183576796]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(489406537,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1438324190,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{452515557,10608653,2936602445,1535154067,2061107152}return SynapseXen_liliil[183576796]end)({}),262144)==(SynapseXen_liliil[1024571127]or(function(...)local SynapseXen_llllllillIllIlI="i put more time into this shitty list of dead memes then i did into the obfuscator itself"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3620161377,1272661383)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3090454171,1204441677)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1024571127]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1035193949,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2742162006,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{3901001204,963499263,866694591,850147767,3801362226,1296675161,406087492,2959476644}return SynapseXen_liliil[1024571127]end)({}))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3419913158]or(function()local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"SynapseXen_liliil[3419913158]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3947522628,3493688843),SynapseXen_IliiliIlIll(881247175,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{2777693232,1004429676,4263999934,4138005309,3289219541,3189299862}return SynapseXen_liliil[3419913158]end)())]=SynapseXen_liliIiiiIlli else SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3419913158]or(function()local SynapseXen_llllllillIllIlI="imagine using some lua minifier tool and thinking you are a badass"SynapseXen_liliil[3419913158]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3947522628,3493688843),SynapseXen_IliiliIlIll(881247175,SynapseXen_IlIiiiiiIIiiIli[3]))-string.len(SynapseXen_llllllillIllIlI)-#{2777693232,1004429676,4263999934,4138005309,3289219541,3189299862}return SynapseXen_liliil[3419913158]end)())]=SynapseXen_IlIiiiiiIIiiIli[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[183576796]or(function(...)local SynapseXen_llllllillIllIlI="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3786348387,2836944193)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3063561861,3063553314)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[183576796]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(489406537,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1438324190,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{452515557,10608653,2936602445,1535154067,2061107152}return SynapseXen_liliil[183576796]end)({}),262144)]end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1407808020]or(function()local SynapseXen_llllllillIllIlI="xen doesn't come with instance caching, sorry superskater"SynapseXen_liliil[1407808020]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1620853659,2726486343),SynapseXen_IliiliIlIll(2889190361,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{3235708757,3033958754,2891602207,1220638844,2978147723,3241629299}return SynapseXen_liliil[1407808020]end)())then local SynapseXen_llIiiIiI=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2570659908]or(function(...)local SynapseXen_llllllillIllIlI="i put more time into this shitty list of dead memes then i did into the obfuscator itself"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1772641603,3768482148)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1979374736,2315521332)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2570659908]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1936615792,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2200411898,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{1905341804,3357788299,925192162,699129417,3222356695}return SynapseXen_liliil[2570659908]end)("ilIiIIIiil",3985,{},13234,{}))local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[995859481]or(function(...)local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3927621826,231546730)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1967362782,2327523279)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[995859481]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2444169387,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1985973392,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{562880738,2994292288,3861844057,485433219,3844198391,2843888359,70061172,2251106577,445539749}return SynapseXen_liliil[995859481]end)({}),512)local SynapseXen_iiiIlll=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[3866155706]or(function()local SynapseXen_llllllillIllIlI="luraph better then xen bros :pensive:"SynapseXen_liliil[3866155706]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2817610561,302622753),SynapseXen_IliiliIlIll(3072752450,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{923528647,3018973356,3104254695,525797215,3493927443,2105922252,4101383650,2995334447}return SynapseXen_liliil[3866155706]end)(),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_illIIiliII,SynapseXen_IlililiIIiiIl;local SynapseXen_ilIlllIi,SynapseXen_liIiIIlIIIiliillIl;SynapseXen_illIIiliII={}if SynapseXen_lIliililllIIil~=1 then if SynapseXen_lIliililllIIil~=0 then SynapseXen_ilIlllIi=SynapseXen_llIiiIiI+SynapseXen_lIliililllIIil-1 else SynapseXen_ilIlllIi=SynapseXen_liiIl end;SynapseXen_liIiIIlIIIiliillIl=0;for SynapseXen_IilIllli=SynapseXen_llIiiIiI+1,SynapseXen_ilIlllIi do SynapseXen_liIiIIlIIIiliillIl=SynapseXen_liIiIIlIIIiliillIl+1;SynapseXen_illIIiliII[SynapseXen_liIiIIlIIIiliillIl]=SynapseXen_lllilllIIilII[SynapseXen_IilIllli]end;SynapseXen_ilIlllIi,SynapseXen_IlililiIIiiIl=SynapseXen_lIilIliillIl(SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI](unpack(SynapseXen_illIIiliII,1,SynapseXen_ilIlllIi-SynapseXen_llIiiIiI)))else SynapseXen_ilIlllIi,SynapseXen_IlililiIIiiIl=SynapseXen_lIilIliillIl(SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI]())end;SynapseXen_liiIl=SynapseXen_llIiiIiI-1;if SynapseXen_iiiIlll~=1 then if SynapseXen_iiiIlll~=0 then SynapseXen_ilIlllIi=SynapseXen_llIiiIiI+SynapseXen_iiiIlll-2 else SynapseXen_ilIlllIi=SynapseXen_ilIlllIi+SynapseXen_llIiiIiI-1 end;SynapseXen_liIiIIlIIIiliillIl=0;for SynapseXen_IilIllli=SynapseXen_llIiiIiI,SynapseXen_ilIlllIi do SynapseXen_liIiIIlIIIiliillIl=SynapseXen_liIiIIlIIIiliillIl+1;SynapseXen_lllilllIIilII[SynapseXen_IilIllli]=SynapseXen_IlililiIIiiIl[SynapseXen_liIiIIlIIIiliillIl]end end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[834618969]or(function()local SynapseXen_llllllillIllIlI="thats how mafia works"SynapseXen_liliil[834618969]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2160804996,2622184296),SynapseXen_IliiliIlIll(3926167822,SynapseXen_IlIiiiiiIIiiIli[8]))-string.len(SynapseXen_llllllillIllIlI)-#{3872484801,2247584709,267097358,927244463,3018291039}return SynapseXen_liliil[834618969]end)())then SynapseXen_IlIIllI[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3270419690]or(function(...)local SynapseXen_llllllillIllIlI="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2654794258,560869539)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(24543282,4270358777)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3270419690]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1616207640,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(504158268,SynapseXen_IlIiiiiiIIiiIli[9]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3013534055,4013435638,3943273814,4135030994,2919599404,3751182609}return SynapseXen_liliil[3270419690]end)({},{},833,1835,13376,2257,2257,{},{}),256)]=SynapseXen_IilliilIIIililI(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[926185931]or(function()local SynapseXen_llllllillIllIlI="hi my 2.5mb script doesn't work with xen please help"SynapseXen_liliil[926185931]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3818659288,185257412),SynapseXen_IliiliIlIll(505208084,SynapseXen_IlIiiiiiIIiiIli[8]))-string.len(SynapseXen_llllllillIllIlI)-#{2933216432,2733546405}return SynapseXen_liliil[926185931]end)()),SynapseXen_ilIIIliilIIIi,512)~=0;if SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[3513824674]or(function(...)local SynapseXen_llllllillIllIlI="baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(4105074649,3381098938)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(666634818,3628257839)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3513824674]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(4101048268,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2955536574,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2255950638,685239876,2276245901,2737394276,2680337808,658869984,1366303419,4002253219,859028647}return SynapseXen_liliil[3513824674]end)({},70,{},6610,"IIiili",14295,"liiIlIlI"),512)~=0 then SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3259899319]or(function(...)local SynapseXen_llllllillIllIlI="skisploit is the superior obfuscator, clearly."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2601553750,144808003)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3227458599,1067427531)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3259899319]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2497546912,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(122219357,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{898031804,2662160156,2555720115,383545527,2010685415,2965469847,450145460,2753775047}return SynapseXen_liliil[3259899319]end)("liIIIilIIlii",915,{},3601,{}))then local SynapseXen_llIiiIiI=SynapseXen_lllliIiIIlilIiill(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2862637409]or(function()local SynapseXen_llllllillIllIlI="SECURE API, IMPOSSIBLE TO BYPASS!"SynapseXen_liliil[2862637409]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(462893635,53571821),SynapseXen_IliiliIlIll(411281749,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3127253705,222368949,199295386,1731147388,3353227746,2104100761}return SynapseXen_liliil[2862637409]end)(),256),SynapseXen_ilIIIliilIIIi,256)~=0;local SynapseXen_lIliililllIIil=SynapseXen_IilliilIIIililI(SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[764978375]or(function(...)local SynapseXen_llllllillIllIlI="wait for someone on devforum to say they are gonna deobfuscate this"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1779769977,2293482254)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2554349076,1740539612)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[764978375]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3123921376,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1488433774,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1266354036,1051030514}return SynapseXen_liliil[764978375]end)(2817,10687,1063,{},{},"IiIlIlIilllII","iiliiil","IilI",{},"illIlililIIlIIiill"),512),SynapseXen_ilIIIliilIIIi,512)local SynapseXen_iiiIlll=SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[2029289465]or(function()local SynapseXen_llllllillIllIlI="wait for someone on devforum to say they are gonna deobfuscate this"SynapseXen_liliil[2029289465]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3107024242,2783436693),SynapseXen_IliiliIlIll(2135218321,SynapseXen_IlIiiiiiIIiiIli[2]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{2229903251,2248764838,3719947197,2058320690}return SynapseXen_liliil[2029289465]end)())local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;if SynapseXen_lIliililllIIil<SynapseXen_iiiIlll~=SynapseXen_llIiiIiI then SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2450812124]or(function(...)local SynapseXen_llllllillIllIlI="luraph better then xen bros :pensive:"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1463861674,418008188)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2674833925,1620069048)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2450812124]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1849051196,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(565994388,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{299873931,4004157772,2319720599,3151231045,4144566902,238211535,2904367946,2891807249,1316147632,4103880159}return SynapseXen_liliil[2450812124]end)(5037,"llIliIliIIliIII",{},{},"iIIliIIlII",2294,13110,"lIIilliililiI","IIIl"))then local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;for SynapseXen_IilIllli=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[4090778010]or(function()local SynapseXen_llllllillIllIlI="print(bytecode)"SynapseXen_liliil[4090778010]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1369729034,3729842786),SynapseXen_IliiliIlIll(2413022366,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2214665017,1682632347,224095492,3763282498,2726392140,3623892451,2729480205,3620867275,143236594,3817354422}return SynapseXen_liliil[4090778010]end)(),256),SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[3084100031]or(function(...)local SynapseXen_llllllillIllIlI="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(16289079,3593976161)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(820144023,3474750952)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3084100031]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3790163816,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(923612305,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{1668510183}return SynapseXen_liliil[3084100031]end)(13013,4708,"II",{},"iiIIlIiIIIliIilIi",{},385))do SynapseXen_lllilllIIilII[SynapseXen_IilIllli]=nil end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3260543362]or(function(...)local SynapseXen_llllllillIllIlI="xen detects custom getfenv"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(4151816322,972560527)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(610836455,3684059740)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3260543362]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3873464756,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(675770891,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3298400766,2644425252,851268377}return SynapseXen_liliil[3260543362]end)("IIli",{},13206,9704))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1357152640]or(function()local SynapseXen_llllllillIllIlI="i put more time into this shitty list of dead memes then i did into the obfuscator itself"SynapseXen_liliil[1357152640]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(1398441949,2451725308),SynapseXen_IliiliIlIll(3244062286,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{4147910342,2498881296,2119389874,1050008742,2720746793,3451954751}return SynapseXen_liliil[1357152640]end)())]=SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[3739025544]or(function()local SynapseXen_llllllillIllIlI="thats how mafia works"SynapseXen_liliil[3739025544]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2883627008,935186888),SynapseXen_IliiliIlIll(2625232057,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2865414690,3925494731}return SynapseXen_liliil[3739025544]end)())]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[2893517282]or(function()local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"SynapseXen_liliil[2893517282]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3150225725,413432823),SynapseXen_IliiliIlIll(2739302176,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3715015202,595885937,79614802,1361069650,3315178089,2061520435,3910653316}return SynapseXen_liliil[2893517282]end)())then SynapseXen_IlIIllI[SynapseXen_IilliilIIIililI(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2564304748]or(function(...)local SynapseXen_llllllillIllIlI="yed"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2020674147,3295680806)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3992882035,302008439)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2564304748]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1115270253,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(95825470,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{3593078785,478657349,3881644289,2117728570}return SynapseXen_liliil[2564304748]end)("lIiiIlIiillliilI",8403,{})),SynapseXen_ilIIIliilIIIi,256)]=not SynapseXen_IlIIllI[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2858703982]or(function(...)local SynapseXen_llllllillIllIlI="this is so sad, alexa play ripull.mp4"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2064123689,3541895221)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1388327678,2906563225)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2858703982]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2070841969,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(637463323,SynapseXen_IlIiiiiiIIiiIli[8]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2908160525,3650888615,587180713,2535268333,2056060086,3476028653,448839421}return SynapseXen_liliil[2858703982]end)("ilIilIIIIlIlIiIi",11940,8803,{},{},"iliIl",{}),512)]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3485683651]or(function()local SynapseXen_llllllillIllIlI="wow xen is shit buy luraph ok"SynapseXen_liliil[3485683651]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2118506469,1737181149),SynapseXen_IliiliIlIll(434879060,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3875406204,1702856836,2540120665,2716876529,1130884661,1109909317,1155993728,75234015,2831592308,3569281139}return SynapseXen_liliil[3485683651]end)())then SynapseXen_ilIIIliilIIIi=SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[2473132161]or(function(...)local SynapseXen_llllllillIllIlI="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(592425000,108904001)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2758289016,1536600817)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2473132161]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2511872699,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1264060807,SynapseXen_IlIiiiiiIIiiIli[7]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{2786041079,2014050959,2266444174}return SynapseXen_liliil[2473132161]end)({}))]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3910881081]or(function()local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"SynapseXen_liliil[3910881081]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2875924523,2521265352),SynapseXen_IliiliIlIll(1023795975,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3186216721,2556196740,2505715934,1176192727,2449219393,3720490783,4066045713,753137778,111329016,2053134335}return SynapseXen_liliil[3910881081]end)())then local SynapseXen_iiIilliIiiilliiIIli=SynapseXen_Iliilii[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[456201896]or(function(...)local SynapseXen_llllllillIllIlI="SECURE API, IMPOSSIBLE TO BYPASS!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(4029992270,2833869117)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3203367553,1091538897)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[456201896]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2962769916,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3898765681,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3205690748,1588457294,3058385464,259367655,3727738792,3624560465,1351157984}return SynapseXen_liliil[456201896]end)({},"llIlllillIIlII",{},"IliiIlIlii",{},{},{},"ilii"),262144)]local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_iilIiilllIIl;local SynapseXen_IilIiIIIlIIliiilll;if SynapseXen_iiIilliIiiilliiIIli[1653475531]~=0 then SynapseXen_iilIiilllIIl={}SynapseXen_IilIiIIIlIIliiilll=setmetatable({},{__index=function(SynapseXen_iiiiIlllIIIlli,SynapseXen_IIlll)local SynapseXen_llIlllllIiIIlII=SynapseXen_iilIiilllIIl[SynapseXen_IIlll]return SynapseXen_llIlllllIiIIlII[1][SynapseXen_llIlllllIiIIlII[2]]end,__newindex=function(SynapseXen_iiiiIlllIIIlli,SynapseXen_IIlll,SynapseXen_iiIIIlllIllII)local SynapseXen_llIlllllIiIIlII=SynapseXen_iilIiilllIIl[SynapseXen_IIlll]SynapseXen_llIlllllIiIIlII[1][SynapseXen_llIlllllIiIIlII[2]]=SynapseXen_iiIIIlllIllII end})for SynapseXen_IilIllli=1,SynapseXen_iiIilliIiiilliiIIli[1653475531]do local SynapseXen_IIiilliI=SynapseXen_IlIIlIlIiiIIi[SynapseXen_iIIIl]if SynapseXen_IIiilliI[1696137756]==(SynapseXen_liliil[1069600099]or(function(...)local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2750717767,1804351632)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3699757483,595130771)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1069600099]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3166377322,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1961102905,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{1032869788,2937112397,1013450578,203563091,1985324001,1324469199,449898200,1087873206,419015972}return SynapseXen_liliil[1069600099]end)(8895,12262,"lilIIlIIIIiliiI",{},"Iliill",{},"iiilliIIllliIll",8720,14166))then SynapseXen_iilIiilllIIl[SynapseXen_IilIllli-1]={SynapseXen_lllilllIIilII,SynapseXen_IliiliIlIll(SynapseXen_IIiilliI[1155944710],SynapseXen_liliil[1562097238]or(function(...)local SynapseXen_llllllillIllIlI="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(212161429,1780838456)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2006952267,2287942463)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1562097238]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2713360610,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(104052018,SynapseXen_IlIiiiiiIIiiIli[9]))-string.len(SynapseXen_llllllillIllIlI)-#{1261890889,1366084551,776702345,2203850984,3867634695,2954711620,2459639747,1502377074,3210784995,3753849019}return SynapseXen_liliil[1562097238]end)("l","IlliIIiiiI",{}))}elseif SynapseXen_IIiilliI[1696137756]==(SynapseXen_liliil[1241127946]or(function(...)local SynapseXen_llllllillIllIlI="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(816056574,3581762184)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2869234683,1425650097)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1241127946]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2859494763,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(604654614,SynapseXen_IlIiiiiiIIiiIli[5]))-string.len(SynapseXen_llllllillIllIlI)-#{2609462807,2716352449,1034211440}return SynapseXen_liliil[1241127946]end)({},{},"lIll",{},3809,{},{},"liIl",10222))then SynapseXen_iilIiilllIIl[SynapseXen_IilIllli-1]={SynapseXen_IiIllillil,SynapseXen_IliiliIlIll(SynapseXen_IIiilliI[1155944710],SynapseXen_liliil[2504964947]or(function()local SynapseXen_llllllillIllIlI="https://twitter.com/Ripull_RBLX/status/1059334518581145603"SynapseXen_liliil[2504964947]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2762787070,3416894022),SynapseXen_IliiliIlIll(1864440116,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{2277825858,2052834675,2805184684,2554230478}return SynapseXen_liliil[2504964947]end)())}end;SynapseXen_iIIIl=SynapseXen_iIIIl+1 end;SynapseXen_IiIIIIIiil[#SynapseXen_IiIIIIIiil+1]=SynapseXen_iilIiilllIIl end;SynapseXen_lllilllIIilII[SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[780647554]or(function()local SynapseXen_llllllillIllIlI="can we have an f in chat for ripull"SynapseXen_liliil[780647554]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3133825970,3068827627),SynapseXen_IliiliIlIll(3442001547,SynapseXen_IlIiiiiiIIiiIli[9]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{2143046379,1655382636,187899592,962110310,1865736332,1293705433,351438386,451907494,3270504019,2974153767}return SynapseXen_liliil[780647554]end)(),256)]=SynapseXen_iiilIlIlilI(SynapseXen_iiIilliIiiilliiIIli,SynapseXen_iIiiiiIil,SynapseXen_IilIiIIIlIIliiilll)elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3401243602]or(function(...)local SynapseXen_llllllillIllIlI="wally bad bird"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1395572307,49996443)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3113173977,1181719753)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3401243602]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3272300979,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3214638342,SynapseXen_IlIiiiiiIIiiIli[10]))-string.len(SynapseXen_llllllillIllIlI)-#{3911163621,3406385433,2372286182,3560407153,3187339889,1107126619,3995986809,24851721,4146759814}return SynapseXen_liliil[3401243602]end)(6617,{},{},{},8455,"iilIliil",13144,{}))then local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[1888319139]or(function()local SynapseXen_llllllillIllIlI="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_liliil[1888319139]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(387956949,4199515661),SynapseXen_IliiliIlIll(3224612344,SynapseXen_IlIiiiiiIIiiIli[10]))-string.len(SynapseXen_llllllillIllIlI)-#{1707534653,3887600871,2600324351,1171376808,3958359378}return SynapseXen_liliil[1888319139]end)(),512)local SynapseXen_ilIIllIIIiIi=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]for SynapseXen_IilIllli=SynapseXen_lIliililllIIil+1,SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[22399745]or(function(...)local SynapseXen_llllllillIllIlI="pain exist is gonna connect the dots of xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(977340949,2526273505)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2684133048,1610752801)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[22399745]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1543261661,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(4145013342,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{811835003,2170811799,3498103515,1134929762,1502339634,2634272242,3797721343,2947311539,2193829012}return SynapseXen_liliil[22399745]end)("IiIiil",{},"IllIIIi",10158))do SynapseXen_ilIIllIIIiIi=SynapseXen_ilIIllIIIiIi..SynapseXen_lllilllIIilII[SynapseXen_IilIllli]end;SynapseXen_IlIIllI[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[4083777093]or(function()local SynapseXen_llllllillIllIlI="sponsored by ironbrew, jk xen is better"SynapseXen_liliil[4083777093]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2682959998,2134734416),SynapseXen_IliiliIlIll(3774024083,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{953398366,1682922991,1776796455}return SynapseXen_liliil[4083777093]end)(),256)]=SynapseXen_ilIIllIIIiIi elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[4093522611]or(function(...)local SynapseXen_llllllillIllIlI="inb4 posted on exploit reports section"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3861373546,1792726027)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(999793792,3295097812)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[4093522611]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(564556710,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3559539656,SynapseXen_IlIiiiiiIIiiIli[13]))-string.len(SynapseXen_llllllillIllIlI)-#{3772265072,1301018998,3618745519,3652884032,190371806,269794604}return SynapseXen_liliil[4093522611]end)({},"iilIIilIIiiii",10480,10243,"lliilIllIii","IilIiiIIi",{},"iilIlliliilIll",{}))then local SynapseXen_lIliililllIIil=SynapseXen_IlIIllI[SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2414557954]or(function()local SynapseXen_llllllillIllIlI="hi my 2.5mb script doesn't work with xen please help"SynapseXen_liliil[2414557954]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(4217922204,1937390395),SynapseXen_IliiliIlIll(2285137501,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{4230896561,1882876410,3350172096,586023563,3261195265,637271765,3985928737,2276659836,3696980134}return SynapseXen_liliil[2414557954]end)(),512)]if not not SynapseXen_lIliililllIIil==(SynapseXen_IilliilIIIililI(SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[3178078098]or(function()local SynapseXen_llllllillIllIlI="this is so sad, alexa play ripull.mp4"SynapseXen_liliil[3178078098]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(189599416,4047625794),SynapseXen_IliiliIlIll(2576169585,SynapseXen_IlIiiiiiIIiiIli[2]))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{3736167688,917667766,3467308079,2909448644}return SynapseXen_liliil[3178078098]end)(),512),SynapseXen_ilIIIliilIIIi,512)==0)then SynapseXen_iIIIl=SynapseXen_iIIIl+1 else SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1109871788]or(function(...)local SynapseXen_llllllillIllIlI="pain is gonna use the backspace method on xen"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2389727416,621306155)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(504289000,3790608557)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1109871788]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3797098701,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1225784840,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3818566783,63714534,2830533451,2166011036,3054980830}return SynapseXen_liliil[1109871788]end)(13513,"liliIiIiI",{},"i",{},3471,{}))]=SynapseXen_lIliililllIIil end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[1403323503]or(function(...)local SynapseXen_llllllillIllIlI="skisploit is the superior obfuscator, clearly."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(225414885,3168374312)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3968027595,326867106)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1403323503]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2505352091,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(618396397,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3368416081,2961256055,429232346,2539907140,93115420,143545279,3349292562}return SynapseXen_liliil[1403323503]end)({},{},12493,{},"IlIiiIiII",{},{},{},"iIlIIIIlIllIII"))then local SynapseXen_llIiiIiI=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1666418167]or(function()local SynapseXen_llllllillIllIlI="hi xen doesn't work on sk8r please help"SynapseXen_liliil[1666418167]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(2778648758,693631511),SynapseXen_IliiliIlIll(2364431568,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{505550756,1775175939,2422146403,76085339,3968303233}return SynapseXen_liliil[1666418167]end)(),256)local SynapseXen_iiiIlll=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[415873532]or(function()local SynapseXen_llllllillIllIlI="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_liliil[415873532]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(166059180,1800092065),SynapseXen_IliiliIlIll(1653336948,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{503808962,3049188998,371706461,1950402610,1366098631,1245062520,4231466233,2967102777,937419699}return SynapseXen_liliil[415873532]end)(),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;local SynapseXen_liIiillilI=SynapseXen_llIiiIiI+2;local SynapseXen_ilIliIilllI={SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI](SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+1],SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2])}for SynapseXen_IilIllli=1,SynapseXen_iiiIlll do SynapseXen_IlIIllI[SynapseXen_liIiillilI+SynapseXen_IilIllli]=SynapseXen_ilIliIilllI[SynapseXen_IilIllli]end;if SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+3]~=nil then SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+2]=SynapseXen_lllilllIIilII[SynapseXen_llIiiIiI+3]else SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3729195818]or(function(...)local SynapseXen_llllllillIllIlI="thats how mafia works"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1343207778,318872360)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2213474543,2081420870)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3729195818]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(566084201,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1653197252,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{547506583,1335298630,1411581035,1315985740,611991595,721671489,1470616761,3196302654,1681425190}return SynapseXen_liliil[3729195818]end)(5412))then local SynapseXen_llIiiIiI=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[3499565433]or(function(...)local SynapseXen_llllllillIllIlI="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1957189545,2015085958)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2950774077,1344121068)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3499565433]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(739525794,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(578579146,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{3866890156,2165277586,2018598721,2745511983,3715264051,3881568799,2384753261}return SynapseXen_liliil[3499565433]end)(11861,"iil",{},9403,"lilliIl",{},"II",{}),256)~=0;local SynapseXen_lIliililllIIil=SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[2164748225]or(function(...)local SynapseXen_llllllillIllIlI="hi xen crashes on my axon paste plz help"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(39852384,3561233219)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(2000233474,2294669467)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2164748225]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1595999930,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2300776990,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3970352405,2849198607,650087424,3221186664,1933196255,1317558475,3437839270,1690000028}return SynapseXen_liliil[2164748225]end)("iIiilllIiIIiIliIll",{}),512)local SynapseXen_iiiIlll=SynapseXen_IilliilIIIililI(SynapseXen_iiiliIlli[24565209],SynapseXen_liliil[3500567327]or(function(...)local SynapseXen_llllllillIllIlI="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(392759419,2989185015)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(3376923759,917968111)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3500567327]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(3666562019,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(3695028036,SynapseXen_IlIiiiiiIIiiIli[14]))-string.len(SynapseXen_llllllillIllIlI)-SynapseXen_iIllillIiIIliiIiIlII-#{106029530,1575647390,2576369515,2822668818,888410641}return SynapseXen_liliil[3500567327]end)(5793,"I"),512)local SynapseXen_lllilllIIilII=SynapseXen_IlIIllI;if SynapseXen_lIliililllIIil>255 then SynapseXen_lIliililllIIil=SynapseXen_iiIIllIIlii[SynapseXen_lIliililllIIil-256]else SynapseXen_lIliililllIIil=SynapseXen_lllilllIIilII[SynapseXen_lIliililllIIil]end;if SynapseXen_iiiIlll>255 then SynapseXen_iiiIlll=SynapseXen_iiIIllIIlii[SynapseXen_iiiIlll-256]else SynapseXen_iiiIlll=SynapseXen_lllilllIIilII[SynapseXen_iiiIlll]end;if SynapseXen_lIliililllIIil<=SynapseXen_iiiIlll~=SynapseXen_llIiiIiI then SynapseXen_iIIIl=SynapseXen_iIIIl+1 end elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[4204329453]or(function()local SynapseXen_llllllillIllIlI="i put more time into this shitty list of dead memes then i did into the obfuscator itself"SynapseXen_liliil[4204329453]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3259916327,1102237768),SynapseXen_IliiliIlIll(2212215504,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{3739951909,1203390763,3303208203,312528108,1713912687,2262909618}return SynapseXen_liliil[4204329453]end)())then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1115166740]or(function(...)local SynapseXen_llllllillIllIlI="hi devforum"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(2323844592,2364841035)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1593097179,2701804901)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII+SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[1115166740]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1766976990,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1845182093,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{471654005,1322313629,311329669,2803871289,3316534373,470645061,3114659639,3244971048,3738523167}return SynapseXen_liliil[1115166740]end)(10116,10994,7597,{})),SynapseXen_ilIIIliilIIIi)]=SynapseXen_iiIIllIIlii[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[1317292623],SynapseXen_liliil[2499498617]or(function(...)local SynapseXen_llllllillIllIlI="xen doesn't come with instance caching, sorry superskater"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(1958153581,1796503339)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(1707618883,2587275235)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[2499498617]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(1772601595,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(1960326415,SynapseXen_IlIiiiiiIIiiIli[11]))-string.len(SynapseXen_llllllillIllIlI)-#{2776536278,1554992696,164376241,89188301,4030841964,2427206202,2837064974,3790587835,799199963,2585692215}return SynapseXen_liliil[2499498617]end)({},"IIi",7060,"IIIiIiiliIllIli",7716,"lIIIIIIIilIlIiIiiIi",13707,"IliIIlI","iiiIllllil",{}))]elseif SynapseXen_iIllillIiIIliiIiIlII==(SynapseXen_liliil[3541477713]or(function(...)local SynapseXen_llllllillIllIlI="xen best rerubi paste"local SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIlIIiIiIIIlIiI(3605124760,4165163845)local SynapseXen_IlIilIliil={...}for SynapseXen_IlillIIiiilIillIlI,SynapseXen_iiiiIIlliiil in pairs(SynapseXen_IlIilIliil)do local SynapseXen_llIIililliIillIIll;local SynapseXen_iilliiIIlII=type(SynapseXen_iiiiIIlliiil)if SynapseXen_iilliiIIlII=="number"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil elseif SynapseXen_iilliiIIlII=="string"then SynapseXen_llIIililliIillIIll=SynapseXen_iiiiIIlliiil:len()elseif SynapseXen_iilliiIIlII=="table"then SynapseXen_llIIililliIillIIll=SynapseXen_iIlIIiIiIIIlIiI(4260993746,33901737)end;SynapseXen_iIilIIIliiIiIIlII=SynapseXen_iIilIIIliiIiIIlII-SynapseXen_llIIililliIillIIll end;SynapseXen_liliil[3541477713]=SynapseXen_IliiliIlIll(SynapseXen_IliiliIlIll(2336740706,SynapseXen_iIilIIIliiIiIIlII),SynapseXen_IliiliIlIll(2780857902,SynapseXen_liliIiiiIlli))-string.len(SynapseXen_llllllillIllIlI)-#{894898726,183572413,2825560196,687236921,1184199047,3512393279,2566248748,1219584892,3681955371}return SynapseXen_liliil[3541477713]end)("i",4667,1299,"liliiIiiiIlIIliii",{},{},{},{},{}))then SynapseXen_IlIIllI[SynapseXen_IliiliIlIll(SynapseXen_iiiliIlli[23535425],SynapseXen_liliil[1513255369]or(function()local SynapseXen_llllllillIllIlI="level 1 crook = luraph, level 100 boss = xen"SynapseXen_liliil[1513255369]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3704563298,92741217),SynapseXen_IliiliIlIll(3647870539,SynapseXen_liliIiiiIlli))-SynapseXen_iIllillIiIIliiIiIlII-string.len(SynapseXen_llllllillIllIlI)-#{2641487008,396528337,2546597173,3453983953,1327699872,95431936}return SynapseXen_liliil[1513255369]end)())]=-SynapseXen_IlIIllI[SynapseXen_IilliilIIIililI(SynapseXen_lllliIiIIlilIiill(SynapseXen_iiiliIlli[1155944710],SynapseXen_liliil[1162669040]or(function()local SynapseXen_llllllillIllIlI="xen detects custom getfenv"SynapseXen_liliil[1162669040]=SynapseXen_IliiliIlIll(SynapseXen_iIlIIiIiIIIlIiI(3508171240,1178459418),SynapseXen_IliiliIlIll(4178460262,SynapseXen_IlIiiiiiIIiiIli[12]))-string.len(SynapseXen_llllllillIllIlI)-#{1075348671,4163044311,2905963328,2317141943,3126623018,3759396184,3376191529,3148371624}return SynapseXen_liliil[1162669040]end)(),512),SynapseXen_ilIIIliilIIIi,512)]end end end;local SynapseXen_illIIiliII={...}for SynapseXen_IilIllli=0,SynapseXen_iiiiilllilli do if SynapseXen_IilIllli>=SynapseXen_lillii[951586879]then SynapseXen_illllll[SynapseXen_IilIllli-SynapseXen_lillii[951586879]]=SynapseXen_illIIiliII[SynapseXen_IilIllli+1]else SynapseXen_IlIIllI[SynapseXen_IilIllli]=SynapseXen_illIIiliII[SynapseXen_IilIllli+1]end end;local SynapseXen_lIliililllIIil,SynapseXen_iiiIlll=SynapseXen_lIIlliIl()if SynapseXen_lIliililllIIil and SynapseXen_iiiIlll>0 then return unpack(SynapseXen_lIliililllIIil,1,SynapseXen_iiiIlll)end;return end end;local function SynapseXen_IliliIIIIlII(SynapseXen_lIlIillIl,SynapseXen_iIiiiiIil)local SynapseXen_iiIliiiIliIII=SynapseXen_Illllii(SynapseXen_lIlIillIl)return SynapseXen_iiilIlIlilI(SynapseXen_iiIliiiIliIII,SynapseXen_iIiiiiIil or getfenv(0)),SynapseXen_iiIliiiIliIII end;return SynapseXen_IliliIIIIlII(SynapseXen_llIliiIIilIi("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"),getfenv())()
end)

BigBlackGayCock.Name = "BigBlackGayCock"
BigBlackGayCock.Parent = TextLabel
BigBlackGayCock.BackgroundColor3 = Color3.new(1, 1, 1)
BigBlackGayCock.BackgroundTransparency = 0.94999998807907
BigBlackGayCock.Position = UDim2.new(0.0549019501, 0, 4, 0)
BigBlackGayCock.Size = UDim2.new(0, 165, 0, 30)
BigBlackGayCock.Font = Enum.Font.ArialBold
BigBlackGayCock.Text = "Higher Ping"
BigBlackGayCock.TextColor3 = Color3.new(1, 1, 1)
BigBlackGayCock.TextSize = 14
BigBlackGayCock.MouseButton1Down:connect(function()
local debuginfo = {infCount = 0}

function debuginfo:new()
    local guif = {}
    local gui = Instance.new("ScreenGui")
    if syn then
        syn.protect_gui(gui)
    end
    gui.Parent = game.CoreGui.RobloxGui
    gui.Name = math.random(10000, 99999)
    gui.ResetOnSpawn = false

    function guif:newInfo(text)
        local frame = {}

        local text = text or ""

        local nText = Instance.new("TextLabel", gui)
        nText.BackgroundColor3 = Color3.fromRGB(0,0,0)
        nText.Size = UDim2.new(0, 190, 0, 22)
        nText.Position = UDim2.new(0, 0, 0, 300 + (debuginfo.infCount * 14))
        nText.Font = Enum.Font.SourceSans
        nText.TextSize = 14
        nText.TextXAlignment = Enum.TextXAlignment.Right
        nText.TextColor3 = Color3.fromRGB(255,255,255)
        nText.BorderSizePixel = 0

        function frame:updateText(newText)
            text = newText
        end

        spawn(function()
            game:GetService('RunService').RenderStepped:Connect(function()
                nText.Text = text
                nText.Size = UDim2.new(0, 10000, 0, 10000)
                nText.Size = UDim2.new(0, nText.TextBounds.X + 10, 0, nText.TextBounds.Y)
            end)
        end)

        debuginfo.infCount = debuginfo.infCount + 1

        return frame
    end

    return guif
end

local Config = {Strength = 3000, Amount = 0}

local APITarpit = debuginfo:new()
local Title = APITarpit:newInfo("// MTL Tarpit Stats \\\\")
local Strength = APITarpit:newInfo("KeepAliveRate: " .. Config.Strength)
local SEPLatency = APITarpit:newInfo("X->S SRVCheck: " .. 34832234 .. " : 3842")
local TimeBefore = os.clock()
local Resp = game.ReplicatedStorage.DefaultChatSystemChatEvents.GetInitDataRequest:InvokeServer()
repeat game:GetService('RunService').RenderStepped:Wait() until Resp
local EPSLatency = APITarpit:newInfo("EP->S Latency *LATEST_INCOMING_REQUEST: " .. os.clock()-TimeBefore .. "ms")
local SX = APITarpit:newInfo("EP->S Latency *SPCLAT: " .. math.random() .. "s")

game:GetService('RunService').RenderStepped:Connect(function()
    for i = 1, Config.Strength do
        game:GetService("LogService"):RequestServerHttpResut() 
        game:GetService("LogService"):RequestServerOuput() 
    end
end)

while wait(.05) do
   SX:updateText("EP->S Latency *SPCLAT: " .. math.random() .. "s IT->R *SPCLAT: "..math.random(1,30).."."..math.random())
   EPSLatency:updateText("LS->S Clock *SERVER_TIME_CLOCK_DIF: " .. workspace:GetServerTimeNow()-os.time()  .. 's')
end
end)

BlackGayDaddy.Name = "BlackGayDaddy"
BlackGayDaddy.Parent = TextLabel
BlackGayDaddy.BackgroundColor3 = Color3.new(1, 1, 1)
BlackGayDaddy.BackgroundTransparency = 0.94999998807907
BlackGayDaddy.Position = UDim2.new(0.0549019501, 0, 6.19999981, 0)
BlackGayDaddy.Size = UDim2.new(0, 165, 0, 30)
BlackGayDaddy.Font = Enum.Font.ArialBold
BlackGayDaddy.Text = "Leak Private Messages"
BlackGayDaddy.TextColor3 = Color3.new(1, 1, 1)
BlackGayDaddy.TextSize = 14
BlackGayDaddy.MouseButton1Down:connect(function()

-- You came here to change stuff didn't ya? I added a config to make it easier. Mobile Yield FE (0pwn)
Config = {
	enabled = true,
	spyOnMyself = false,
	public = true,
	publicItalics = true
}

PrivateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.ArialBold;
	TextSize = 15;
}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				Config.enabled = not Config.enabled
				wait(0.3)
				PrivateProperties.Text = "Spy "..(Config.enabled and "En" or "Dis").."abled!"
				StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
			elseif Config.enabled and (Config.spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and Config.public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and Config.enabled then
					if Config.public then
						saymsg:FireServer((Config.publicItalics and " " or '').."Hidden Message Revealed: [".. p.Name .."]: "..msg,"All")
					else
						PrivateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end

	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)

	PrivateProperties.Text = "Spy "..(Config.enabled and "En" or "Dis").."abled!"
	StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)

DickInMyAss.Name = "DickInMyAss"
DickInMyAss.Parent = TextLabel
DickInMyAss.BackgroundColor3 = Color3.new(1, 1, 1)
DickInMyAss.BackgroundTransparency = 0.94999998807907
DickInMyAss.Position = UDim2.new(0.0549019501, 0, 8.39999962, 0)
DickInMyAss.Size = UDim2.new(0, 165, 0, 30)
DickInMyAss.Font = Enum.Font.ArialBold
DickInMyAss.Text = "R6 Animations"
DickInMyAss.TextColor3 = Color3.new(1, 1, 1)
DickInMyAss.TextSize = 14
DickInMyAss.MouseButton1Down:connect(function()
local Energize = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local GuiBottomFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local GuiTopFrame = Instance.new("Frame")
local CloseGUI = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local CheckR = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local GlitchLevitate = Instance.new("TextButton")
local FullSwing = Instance.new("TextButton")
local MoonDance = Instance.new("TextButton")
local FullPunch = Instance.new("TextButton")
local FloorFaint = Instance.new("TextButton")
local Crouch = Instance.new("TextButton")
local SpinDance = Instance.new("TextButton")
local JumpingJacks = Instance.new("TextButton")
local ArmDetach = Instance.new("TextButton")
local MegaInsane = Instance.new("TextButton")
local WeirdMove = Instance.new("TextButton")
local DinoWalk = Instance.new("TextButton")
local FloorCrawl = Instance.new("TextButton")
local Spinner = Instance.new("TextButton")
local Faint = Instance.new("TextButton")
local Levitate = Instance.new("TextButton")
local LoopHead = Instance.new("TextButton")
local HeadThrow = Instance.new("TextButton")
local CloneIllusion = Instance.new("TextButton")
local Dab = Instance.new("TextButton")
local BarrelRoll = Instance.new("TextButton")
local Insane = Instance.new("TextButton")
local SwordSlam = Instance.new("TextButton")
local MovingDance = Instance.new("TextButton")
local ArmTurbine = Instance.new("TextButton")
local SuperPunch = Instance.new("TextButton")
local Scared = Instance.new("TextButton")
local LoopSlam = Instance.new("TextButton")
local HeroJump = Instance.new("TextButton")
local SpinDance2 = Instance.new("TextButton")
local SwordSlice = Instance.new("TextButton")
local FloatingHead = Instance.new("TextButton")
local InsaneArms = Instance.new("TextButton")
local SuperFaint = Instance.new("TextButton")
local FloatSit = Instance.new("TextButton")
local BowDown = Instance.new("TextButton")
local ScrollingFrameR15 = Instance.new("ScrollingFrame")
local FloatSlash = Instance.new("TextButton")
local ArmsOut = Instance.new("TextButton")
local DownSlash = Instance.new("TextButton")
local R15Spinner = Instance.new("TextButton")
local WeirdZombie = Instance.new("TextButton")
local CrazySlash = Instance.new("TextButton")
local Pull = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local CircleArm = Instance.new("TextButton")
local Bend = Instance.new("TextButton")
local RotateSlash = Instance.new("TextButton")
local FlingArms = Instance.new("TextButton")
local SideFrame = Instance.new("Frame")
local OpenGUI = Instance.new("TextButton")
local SideFrameTitle = Instance.new("TextLabel")
--Properties:
Energize.Name = "Energize"
Energize.Parent = game.CoreGui
Energize.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = Energize
MainFrame.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
MainFrame.BackgroundTransparency = 0.15000000596046
MainFrame.Position = UDim2.new(0.502199888, 0, 0.552243114, 0)
MainFrame.Size = UDim2.new(0, 426, 0, 258)

GuiBottomFrame.Name = "Gui BottomFrame"
GuiBottomFrame.Parent = MainFrame
GuiBottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
GuiBottomFrame.BackgroundTransparency = 1
GuiBottomFrame.Position = UDim2.new(0, 0, 0.901309371, 0)
GuiBottomFrame.Size = UDim2.new(0, 426, 0, 25)

Credits.Name = "Credits"
Credits.Parent = GuiBottomFrame
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 1
Credits.Size = UDim2.new(0, 426, 0, 25)
Credits.Font = Enum.Font.SourceSansSemibold
Credits.Text = "By illremember - FE Animations Gui / Remade by vuln01"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextSize = 17

GuiTopFrame.Name = "Gui TopFrame"
GuiTopFrame.Parent = MainFrame
GuiTopFrame.BackgroundColor3 = Color3.new(1, 1, 1)
GuiTopFrame.BackgroundTransparency = 1
GuiTopFrame.Position = UDim2.new(0, 0, -0.00178042857, 0)
GuiTopFrame.Size = UDim2.new(0, 426, 0, 25)

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = GuiTopFrame
CloseGUI.BackgroundColor3 = Color3.new(0, 0, 0)
CloseGUI.BackgroundTransparency = 0.15000000596046
CloseGUI.BorderSizePixel = 0
CloseGUI.Position = UDim2.new(0.967136145, 0, 0, 0)
CloseGUI.Size = UDim2.new(0, 15, 0, 15)
CloseGUI.Font = Enum.Font.SourceSansSemibold
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(1, 1, 1)
CloseGUI.TextSize = 14

Title.Name = "Title"
Title.Parent = GuiTopFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.653472185, 0, 0, 0)
Title.Size = UDim2.new(0, 105, 0, 25)
Title.Font = Enum.Font.SourceSansSemibold
Title.Text = "Energize Remake"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 17

CheckR.Name = "CheckR"
CheckR.Parent = GuiTopFrame
CheckR.BackgroundColor3 = Color3.new(1, 1, 1)
CheckR.BackgroundTransparency = 1
CheckR.Position = UDim2.new(0.0234741792, 0, 0, 0)
CheckR.Size = UDim2.new(0, 194, 0, 24)
CheckR.Font = Enum.Font.SourceSansSemibold
CheckR.Text = "Text"
CheckR.TextColor3 = Color3.new(1, 1, 1)
CheckR.TextSize = 17
CheckR.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 0.60000002384186
ScrollingFrame.Position = UDim2.new(0, 0, 0.0951187983, 0)
ScrollingFrame.Size = UDim2.new(0, 426, 0, 207)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1.29999995, 0)
ScrollingFrame.ScrollBarThickness = 10

GlitchLevitate.Name = "GlitchLevitate"
GlitchLevitate.Parent = ScrollingFrame
GlitchLevitate.BackgroundColor3 = Color3.new(0, 0, 0)
GlitchLevitate.BackgroundTransparency = 0.30000001192093
GlitchLevitate.Position = UDim2.new(0.0469483584, 0, 0.0273178034, 0)
GlitchLevitate.Size = UDim2.new(0, 90, 0, 30)
GlitchLevitate.Font = Enum.Font.SourceSansSemibold
GlitchLevitate.Text = "Glitch Levitate"
GlitchLevitate.TextColor3 = Color3.new(1, 1, 1)
GlitchLevitate.TextSize = 15

FullSwing.Name = "FullSwing"
FullSwing.Parent = ScrollingFrame
FullSwing.BackgroundColor3 = Color3.new(0, 0, 0)
FullSwing.BackgroundTransparency = 0.30000001192093
FullSwing.Position = UDim2.new(0.267605633, 0, 0.0273178034, 0)
FullSwing.Size = UDim2.new(0, 90, 0, 30)
FullSwing.Font = Enum.Font.SourceSansSemibold
FullSwing.Text = "Full Swing"
FullSwing.TextColor3 = Color3.new(1, 1, 1)
FullSwing.TextSize = 15

MoonDance.Name = "MoonDance"
MoonDance.Parent = ScrollingFrame
MoonDance.BackgroundColor3 = Color3.new(0, 0, 0)
MoonDance.BackgroundTransparency = 0.30000001192093
MoonDance.Position = UDim2.new(0.713614941, 0, 0.0273178034, 0)
MoonDance.Size = UDim2.new(0, 90, 0, 30)
MoonDance.Font = Enum.Font.SourceSansSemibold
MoonDance.Text = "Moon Dance"
MoonDance.TextColor3 = Color3.new(1, 1, 1)
MoonDance.TextSize = 15

FullPunch.Name = "FullPunch"
FullPunch.Parent = ScrollingFrame
FullPunch.BackgroundColor3 = Color3.new(0, 0, 0)
FullPunch.BackgroundTransparency = 0.30000001192093
FullPunch.Position = UDim2.new(0.492957741, 0, 0.0273178034, 0)
FullPunch.Size = UDim2.new(0, 90, 0, 30)
FullPunch.Font = Enum.Font.SourceSansSemibold
FullPunch.Text = "Full Punch"
FullPunch.TextColor3 = Color3.new(1, 1, 1)
FullPunch.TextSize = 15

FloorFaint.Name = "FloorFaint"
FloorFaint.Parent = ScrollingFrame
FloorFaint.BackgroundColor3 = Color3.new(0, 0, 0)
FloorFaint.BackgroundTransparency = 0.30000001192093
FloorFaint.Position = UDim2.new(0.0469483584, 0, 0.134652346, 0)
FloorFaint.Size = UDim2.new(0, 90, 0, 30)
FloorFaint.Font = Enum.Font.SourceSansSemibold
FloorFaint.Text = "Floor Faint"
FloorFaint.TextColor3 = Color3.new(1, 1, 1)
FloorFaint.TextSize = 15

Crouch.Name = "Crouch"
Crouch.Parent = ScrollingFrame
Crouch.BackgroundColor3 = Color3.new(0, 0, 0)
Crouch.BackgroundTransparency = 0.30000001192093
Crouch.Position = UDim2.new(0.267605633, 0, 0.134652346, 0)
Crouch.Size = UDim2.new(0, 90, 0, 30)
Crouch.Font = Enum.Font.SourceSansSemibold
Crouch.Text = "Crouch"
Crouch.TextColor3 = Color3.new(1, 1, 1)
Crouch.TextSize = 15

SpinDance.Name = "SpinDance"
SpinDance.Parent = ScrollingFrame
SpinDance.BackgroundColor3 = Color3.new(0, 0, 0)
SpinDance.BackgroundTransparency = 0.30000001192093
SpinDance.Position = UDim2.new(0.713614941, 0, 0.134652346, 0)
SpinDance.Size = UDim2.new(0, 90, 0, 30)
SpinDance.Font = Enum.Font.SourceSansSemibold
SpinDance.Text = "Spin Dance"
SpinDance.TextColor3 = Color3.new(1, 1, 1)
SpinDance.TextSize = 15

JumpingJacks.Name = "JumpingJacks"
JumpingJacks.Parent = ScrollingFrame
JumpingJacks.BackgroundColor3 = Color3.new(0, 0, 0)
JumpingJacks.BackgroundTransparency = 0.30000001192093
JumpingJacks.Position = UDim2.new(0.492957741, 0, 0.134652346, 0)
JumpingJacks.Size = UDim2.new(0, 90, 0, 30)
JumpingJacks.Font = Enum.Font.SourceSansSemibold
JumpingJacks.Text = "Jumping Jacks"
JumpingJacks.TextColor3 = Color3.new(1, 1, 1)
JumpingJacks.TextSize = 15

ArmDetach.Name = "ArmDetach"
ArmDetach.Parent = ScrollingFrame
ArmDetach.BackgroundColor3 = Color3.new(0, 0, 0)
ArmDetach.BackgroundTransparency = 0.30000001192093
ArmDetach.Position = UDim2.new(0.0469483584, 0, 0.241986871, 0)
ArmDetach.Size = UDim2.new(0, 90, 0, 30)
ArmDetach.Font = Enum.Font.SourceSansSemibold
ArmDetach.Text = "Arm Detach"
ArmDetach.TextColor3 = Color3.new(1, 1, 1)
ArmDetach.TextSize = 15

MegaInsane.Name = "MegaInsane"
MegaInsane.Parent = ScrollingFrame
MegaInsane.BackgroundColor3 = Color3.new(0, 0, 0)
MegaInsane.BackgroundTransparency = 0.30000001192093
MegaInsane.Position = UDim2.new(0.267605633, 0, 0.241986871, 0)
MegaInsane.Size = UDim2.new(0, 90, 0, 30)
MegaInsane.Font = Enum.Font.SourceSansSemibold
MegaInsane.Text = "Mega Insane"
MegaInsane.TextColor3 = Color3.new(1, 1, 1)
MegaInsane.TextSize = 15

WeirdMove.Name = "WeirdMove"
WeirdMove.Parent = ScrollingFrame
WeirdMove.BackgroundColor3 = Color3.new(0, 0, 0)
WeirdMove.BackgroundTransparency = 0.30000001192093
WeirdMove.Position = UDim2.new(0.713614941, 0, 0.241986871, 0)
WeirdMove.Size = UDim2.new(0, 90, 0, 30)
WeirdMove.Font = Enum.Font.SourceSansSemibold
WeirdMove.Text = "Weird Move"
WeirdMove.TextColor3 = Color3.new(1, 1, 1)
WeirdMove.TextSize = 15

DinoWalk.Name = "DinoWalk"
DinoWalk.Parent = ScrollingFrame
DinoWalk.BackgroundColor3 = Color3.new(0, 0, 0)
DinoWalk.BackgroundTransparency = 0.30000001192093
DinoWalk.Position = UDim2.new(0.492957741, 0, 0.241986871, 0)
DinoWalk.Size = UDim2.new(0, 90, 0, 30)
DinoWalk.Font = Enum.Font.SourceSansSemibold
DinoWalk.Text = "Dino Walk"
DinoWalk.TextColor3 = Color3.new(1, 1, 1)
DinoWalk.TextSize = 15

FloorCrawl.Name = "FloorCrawl"
FloorCrawl.Parent = ScrollingFrame
FloorCrawl.BackgroundColor3 = Color3.new(0, 0, 0)
FloorCrawl.BackgroundTransparency = 0.30000001192093
FloorCrawl.Position = UDim2.new(0.492957741, 0, 0.349321395, 0)
FloorCrawl.Size = UDim2.new(0, 90, 0, 30)
FloorCrawl.Font = Enum.Font.SourceSansSemibold
FloorCrawl.Text = "Floor Crawl"
FloorCrawl.TextColor3 = Color3.new(1, 1, 1)
FloorCrawl.TextSize = 15

Spinner.Name = "Spinner"
Spinner.Parent = ScrollingFrame
Spinner.BackgroundColor3 = Color3.new(0, 0, 0)
Spinner.BackgroundTransparency = 0.30000001192093
Spinner.Position = UDim2.new(0.267605633, 0, 0.349321395, 0)
Spinner.Size = UDim2.new(0, 90, 0, 30)
Spinner.Font = Enum.Font.SourceSansSemibold
Spinner.Text = "Spinner"
Spinner.TextColor3 = Color3.new(1, 1, 1)
Spinner.TextSize = 15

Faint.Name = "Faint"
Faint.Parent = ScrollingFrame
Faint.BackgroundColor3 = Color3.new(0, 0, 0)
Faint.BackgroundTransparency = 0.30000001192093
Faint.Position = UDim2.new(0.713614941, 0, 0.349321395, 0)
Faint.Size = UDim2.new(0, 90, 0, 30)
Faint.Font = Enum.Font.SourceSansSemibold
Faint.Text = "Faint"
Faint.TextColor3 = Color3.new(1, 1, 1)
Faint.TextSize = 15

Levitate.Name = "Levitate"
Levitate.Parent = ScrollingFrame
Levitate.BackgroundColor3 = Color3.new(0, 0, 0)
Levitate.BackgroundTransparency = 0.30000001192093
Levitate.Position = UDim2.new(0.0469483584, 0, 0.349321395, 0)
Levitate.Size = UDim2.new(0, 90, 0, 30)
Levitate.Font = Enum.Font.SourceSansSemibold
Levitate.Text = "Levitate"
Levitate.TextColor3 = Color3.new(1, 1, 1)
Levitate.TextSize = 15

LoopHead.Name = "LoopHead"
LoopHead.Parent = ScrollingFrame
LoopHead.BackgroundColor3 = Color3.new(0, 0, 0)
LoopHead.BackgroundTransparency = 0.30000001192093
LoopHead.Position = UDim2.new(0.0469483584, 0, 0.456655949, 0)
LoopHead.Size = UDim2.new(0, 90, 0, 30)
LoopHead.Font = Enum.Font.SourceSansSemibold
LoopHead.Text = "Loop Head"
LoopHead.TextColor3 = Color3.new(1, 1, 1)
LoopHead.TextSize = 15

HeadThrow.Name = "HeadThrow"
HeadThrow.Parent = ScrollingFrame
HeadThrow.BackgroundColor3 = Color3.new(0, 0, 0)
HeadThrow.BackgroundTransparency = 0.30000001192093
HeadThrow.Position = UDim2.new(0.267605633, 0, 0.456655949, 0)
HeadThrow.Size = UDim2.new(0, 90, 0, 30)
HeadThrow.Font = Enum.Font.SourceSansSemibold
HeadThrow.Text = "Head Throw"
HeadThrow.TextColor3 = Color3.new(1, 1, 1)
HeadThrow.TextSize = 15

CloneIllusion.Name = "CloneIllusion"
CloneIllusion.Parent = ScrollingFrame
CloneIllusion.BackgroundColor3 = Color3.new(0, 0, 0)
CloneIllusion.BackgroundTransparency = 0.30000001192093
CloneIllusion.Position = UDim2.new(0.713614941, 0, 0.456655949, 0)
CloneIllusion.Size = UDim2.new(0, 90, 0, 30)
CloneIllusion.Font = Enum.Font.SourceSansSemibold
CloneIllusion.Text = "Clone Illusion"
CloneIllusion.TextColor3 = Color3.new(1, 1, 1)
CloneIllusion.TextSize = 15

Dab.Name = "Dab"
Dab.Parent = ScrollingFrame
Dab.BackgroundColor3 = Color3.new(0, 0, 0)
Dab.BackgroundTransparency = 0.30000001192093
Dab.Position = UDim2.new(0.492957741, 0, 0.456655949, 0)
Dab.Size = UDim2.new(0, 90, 0, 30)
Dab.Font = Enum.Font.SourceSansSemibold
Dab.Text = "Dab"
Dab.TextColor3 = Color3.new(1, 1, 1)
Dab.TextSize = 15

BarrelRoll.Name = "BarrelRoll"
BarrelRoll.Parent = ScrollingFrame
BarrelRoll.BackgroundColor3 = Color3.new(0, 0, 0)
BarrelRoll.BackgroundTransparency = 0.30000001192093
BarrelRoll.Position = UDim2.new(0.492957741, 0, 0.563990533, 0)
BarrelRoll.Size = UDim2.new(0, 90, 0, 30)
BarrelRoll.Font = Enum.Font.SourceSansSemibold
BarrelRoll.Text = "Barrel Roll"
BarrelRoll.TextColor3 = Color3.new(1, 1, 1)
BarrelRoll.TextSize = 15

Insane.Name = "Insane"
Insane.Parent = ScrollingFrame
Insane.BackgroundColor3 = Color3.new(0, 0, 0)
Insane.BackgroundTransparency = 0.30000001192093
Insane.Position = UDim2.new(0.267605633, 0, 0.563990533, 0)
Insane.Size = UDim2.new(0, 90, 0, 30)
Insane.Font = Enum.Font.SourceSansSemibold
Insane.Text = "Insane"
Insane.TextColor3 = Color3.new(1, 1, 1)
Insane.TextSize = 15

SwordSlam.Name = "SwordSlam"
SwordSlam.Parent = ScrollingFrame
SwordSlam.BackgroundColor3 = Color3.new(0, 0, 0)
SwordSlam.BackgroundTransparency = 0.30000001192093
SwordSlam.Position = UDim2.new(0.713614941, 0, 0.563990533, 0)
SwordSlam.Size = UDim2.new(0, 90, 0, 30)
SwordSlam.Font = Enum.Font.SourceSansSemibold
SwordSlam.Text = "Sword Slam"
SwordSlam.TextColor3 = Color3.new(1, 1, 1)
SwordSlam.TextSize = 15

MovingDance.Name = "MovingDance"
MovingDance.Parent = ScrollingFrame
MovingDance.BackgroundColor3 = Color3.new(0, 0, 0)
MovingDance.BackgroundTransparency = 0.30000001192093
MovingDance.Position = UDim2.new(0.0469483584, 0, 0.563990533, 0)
MovingDance.Size = UDim2.new(0, 90, 0, 30)
MovingDance.Font = Enum.Font.SourceSansSemibold
MovingDance.Text = "Moving Dance"
MovingDance.TextColor3 = Color3.new(1, 1, 1)
MovingDance.TextSize = 15

ArmTurbine.Name = "ArmTurbine"
ArmTurbine.Parent = ScrollingFrame
ArmTurbine.BackgroundColor3 = Color3.new(0, 0, 0)
ArmTurbine.BackgroundTransparency = 0.30000001192093
ArmTurbine.Position = UDim2.new(0.267605633, 0, 0.671325028, 0)
ArmTurbine.Size = UDim2.new(0, 90, 0, 30)
ArmTurbine.Font = Enum.Font.SourceSansSemibold
ArmTurbine.Text = "Arm Turbine"
ArmTurbine.TextColor3 = Color3.new(1, 1, 1)
ArmTurbine.TextSize = 15

SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = ScrollingFrame
SuperPunch.BackgroundColor3 = Color3.new(0, 0, 0)
SuperPunch.BackgroundTransparency = 0.30000001192093
SuperPunch.Position = UDim2.new(0.0469483584, 0, 0.671325028, 0)
SuperPunch.Size = UDim2.new(0, 90, 0, 30)
SuperPunch.Font = Enum.Font.SourceSansSemibold
SuperPunch.Text = "Super Punch"
SuperPunch.TextColor3 = Color3.new(1, 1, 1)
SuperPunch.TextSize = 15

Scared.Name = "Scared"
Scared.Parent = ScrollingFrame
Scared.BackgroundColor3 = Color3.new(0, 0, 0)
Scared.BackgroundTransparency = 0.30000001192093
Scared.Position = UDim2.new(0.267605633, 0, 0.778659523, 0)
Scared.Size = UDim2.new(0, 90, 0, 30)
Scared.Font = Enum.Font.SourceSansSemibold
Scared.Text = "Scared"
Scared.TextColor3 = Color3.new(1, 1, 1)
Scared.TextSize = 15

LoopSlam.Name = "LoopSlam"
LoopSlam.Parent = ScrollingFrame
LoopSlam.BackgroundColor3 = Color3.new(0, 0, 0)
LoopSlam.BackgroundTransparency = 0.30000001192093
LoopSlam.Position = UDim2.new(0.713614941, 0, 0.671325028, 0)
LoopSlam.Size = UDim2.new(0, 90, 0, 30)
LoopSlam.Font = Enum.Font.SourceSansSemibold
LoopSlam.Text = "Loop Slam"
LoopSlam.TextColor3 = Color3.new(1, 1, 1)
LoopSlam.TextSize = 15

HeroJump.Name = "HeroJump"
HeroJump.Parent = ScrollingFrame
HeroJump.BackgroundColor3 = Color3.new(0, 0, 0)
HeroJump.BackgroundTransparency = 0.30000001192093
HeroJump.Position = UDim2.new(0.0469483584, 0, 0.778659523, 0)
HeroJump.Size = UDim2.new(0, 90, 0, 30)
HeroJump.Font = Enum.Font.SourceSansSemibold
HeroJump.Text = "Hero Jump"
HeroJump.TextColor3 = Color3.new(1, 1, 1)
HeroJump.TextSize = 15

SpinDance2.Name = "SpinDance2"
SpinDance2.Parent = ScrollingFrame
SpinDance2.BackgroundColor3 = Color3.new(0, 0, 0)
SpinDance2.BackgroundTransparency = 0.30000001192093
SpinDance2.Position = UDim2.new(0.713614941, 0, 0.778659523, 0)
SpinDance2.Size = UDim2.new(0, 90, 0, 30)
SpinDance2.Font = Enum.Font.SourceSansSemibold
SpinDance2.Text = "Spin Dance 2"
SpinDance2.TextColor3 = Color3.new(1, 1, 1)
SpinDance2.TextSize = 15

SwordSlice.Name = "SwordSlice"
SwordSlice.Parent = ScrollingFrame
SwordSlice.BackgroundColor3 = Color3.new(0, 0, 0)
SwordSlice.BackgroundTransparency = 0.30000001192093
SwordSlice.Position = UDim2.new(0.492957741, 0, 0.671325028, 0)
SwordSlice.Size = UDim2.new(0, 90, 0, 30)
SwordSlice.Font = Enum.Font.SourceSansSemibold
SwordSlice.Text = "Sword Slice"
SwordSlice.TextColor3 = Color3.new(1, 1, 1)
SwordSlice.TextSize = 15

FloatingHead.Name = "FloatingHead"
FloatingHead.Parent = ScrollingFrame
FloatingHead.BackgroundColor3 = Color3.new(0, 0, 0)
FloatingHead.BackgroundTransparency = 0.30000001192093
FloatingHead.Position = UDim2.new(0.492957741, 0, 0.778659523, 0)
FloatingHead.Size = UDim2.new(0, 90, 0, 30)
FloatingHead.Font = Enum.Font.SourceSansSemibold
FloatingHead.Text = "Floating Head"
FloatingHead.TextColor3 = Color3.new(1, 1, 1)
FloatingHead.TextSize = 15

InsaneArms.Name = "InsaneArms"
InsaneArms.Parent = ScrollingFrame
InsaneArms.BackgroundColor3 = Color3.new(0, 0, 0)
InsaneArms.BackgroundTransparency = 0.30000001192093
InsaneArms.Position = UDim2.new(0.0469483584, 0, 0.888975561, 0)
InsaneArms.Size = UDim2.new(0, 90, 0, 30)
InsaneArms.Font = Enum.Font.SourceSansSemibold
InsaneArms.Text = "Insane Arms"
InsaneArms.TextColor3 = Color3.new(1, 1, 1)
InsaneArms.TextSize = 15

SuperFaint.Name = "SuperFaint"
SuperFaint.Parent = ScrollingFrame
SuperFaint.BackgroundColor3 = Color3.new(0, 0, 0)
SuperFaint.BackgroundTransparency = 0.30000001192093
SuperFaint.Position = UDim2.new(0.267605633, 0, 0.888975561, 0)
SuperFaint.Size = UDim2.new(0, 90, 0, 30)
SuperFaint.Font = Enum.Font.SourceSansSemibold
SuperFaint.Text = "Super Faint"
SuperFaint.TextColor3 = Color3.new(1, 1, 1)
SuperFaint.TextSize = 15

FloatSit.Name = "FloatSit"
FloatSit.Parent = ScrollingFrame
FloatSit.BackgroundColor3 = Color3.new(0, 0, 0)
FloatSit.BackgroundTransparency = 0.30000001192093
FloatSit.Position = UDim2.new(0.492957741, 0, 0.888975561, 0)
FloatSit.Size = UDim2.new(0, 90, 0, 30)
FloatSit.Font = Enum.Font.SourceSansSemibold
FloatSit.Text = "FloatSit"
FloatSit.TextColor3 = Color3.new(1, 1, 1)
FloatSit.TextSize = 15

BowDown.Name = "BowDown"
BowDown.Parent = ScrollingFrame
BowDown.BackgroundColor3 = Color3.new(0, 0, 0)
BowDown.BackgroundTransparency = 0.30000001192093
BowDown.Position = UDim2.new(0.713614941, 0, 0.888975561, 0)
BowDown.Size = UDim2.new(0, 90, 0, 30)
BowDown.Font = Enum.Font.SourceSansSemibold
BowDown.Text = "Bow Down"
BowDown.TextColor3 = Color3.new(1, 1, 1)
BowDown.TextSize = 15

ScrollingFrameR15.Name = "ScrollingFrameR15"
ScrollingFrameR15.Parent = MainFrame
ScrollingFrameR15.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrameR15.BackgroundTransparency = 0.60000002384186
ScrollingFrameR15.Position = UDim2.new(-0.00150352798, 0, 0.0951187983, 0)
ScrollingFrameR15.Size = UDim2.new(0, 427, 0, 207)
ScrollingFrameR15.CanvasSize = UDim2.new(0, 0, 0.430000007, 0)
ScrollingFrameR15.ScrollBarThickness = 10

FloatSlash.Name = "FloatSlash"
FloatSlash.Parent = ScrollingFrameR15
FloatSlash.BackgroundColor3 = Color3.new(0, 0, 0)
FloatSlash.BackgroundTransparency = 0.30000001192093
FloatSlash.Position = UDim2.new(0.0563380271, 0, 0.0405257866, 0)
FloatSlash.Size = UDim2.new(0, 90, 0, 30)
FloatSlash.Font = Enum.Font.SourceSansSemibold
FloatSlash.Text = "Float Slash"
FloatSlash.TextColor3 = Color3.new(1, 1, 1)
FloatSlash.TextSize = 15

ArmsOut.Name = "ArmsOut"
ArmsOut.Parent = ScrollingFrameR15
ArmsOut.BackgroundColor3 = Color3.new(0, 0, 0)
ArmsOut.BackgroundTransparency = 0.30000001192093
ArmsOut.Position = UDim2.new(0.28169015, 0, 0.0405257866, 0)
ArmsOut.Size = UDim2.new(0, 90, 0, 30)
ArmsOut.Font = Enum.Font.SourceSansSemibold
ArmsOut.Text = " Arms Out"
ArmsOut.TextColor3 = Color3.new(1, 1, 1)
ArmsOut.TextSize = 15

DownSlash.Name = "DownSlash"
DownSlash.Parent = ScrollingFrameR15
DownSlash.BackgroundColor3 = Color3.new(0, 0, 0)
DownSlash.BackgroundTransparency = 0.30000001192093
DownSlash.Position = UDim2.new(0.507042229, 0, 0.0405257866, 0)
DownSlash.Size = UDim2.new(0, 90, 0, 30)
DownSlash.Font = Enum.Font.SourceSansSemibold
DownSlash.Text = "Down Slash"
DownSlash.TextColor3 = Color3.new(1, 1, 1)
DownSlash.TextSize = 15

R15Spinner.Name = "R15Spinner"
R15Spinner.Parent = ScrollingFrameR15
R15Spinner.BackgroundColor3 = Color3.new(0, 0, 0)
R15Spinner.BackgroundTransparency = 0.30000001192093
R15Spinner.Position = UDim2.new(0.732394338, 0, 0.0405257866, 0)
R15Spinner.Size = UDim2.new(0, 90, 0, 30)
R15Spinner.Font = Enum.Font.SourceSansSemibold
R15Spinner.Text = "Spinner"
R15Spinner.TextColor3 = Color3.new(1, 1, 1)
R15Spinner.TextSize = 15

WeirdZombie.Name = "WeirdZombie"
WeirdZombie.Parent = ScrollingFrameR15
WeirdZombie.BackgroundColor3 = Color3.new(0, 0, 0)
WeirdZombie.BackgroundTransparency = 0.30000001192093
WeirdZombie.Position = UDim2.new(0.28169015, 0, 0.213602722, 0)
WeirdZombie.Size = UDim2.new(0, 90, 0, 30)
WeirdZombie.Font = Enum.Font.SourceSansSemibold
WeirdZombie.Text = "Weird Zombie"
WeirdZombie.TextColor3 = Color3.new(1, 1, 1)
WeirdZombie.TextSize = 15

CrazySlash.Name = "CrazySlash"
CrazySlash.Parent = ScrollingFrameR15
CrazySlash.BackgroundColor3 = Color3.new(0, 0, 0)
CrazySlash.BackgroundTransparency = 0.30000001192093
CrazySlash.Position = UDim2.new(0.0563380271, 0, 0.213602722, 0)
CrazySlash.Size = UDim2.new(0, 90, 0, 30)
CrazySlash.Font = Enum.Font.SourceSansSemibold
CrazySlash.Text = "Crazy Slash"
CrazySlash.TextColor3 = Color3.new(1, 1, 1)
CrazySlash.TextSize = 15

Pull.Name = "Pull"
Pull.Parent = ScrollingFrameR15
Pull.BackgroundColor3 = Color3.new(0, 0, 0)
Pull.BackgroundTransparency = 0.30000001192093
Pull.Position = UDim2.new(0.507042229, 0, 0.213602722, 0)
Pull.Size = UDim2.new(0, 90, 0, 30)
Pull.Font = Enum.Font.SourceSansSemibold
Pull.Text = "Pull"
Pull.TextColor3 = Color3.new(1, 1, 1)
Pull.TextSize = 15

Open.Name = "Open"
Open.Parent = ScrollingFrameR15
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.30000001192093
Open.Position = UDim2.new(0.732394338, 0, 0.213602722, 0)
Open.Size = UDim2.new(0, 90, 0, 30)
Open.Font = Enum.Font.SourceSansSemibold
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 15

CircleArm.Name = "CircleArm"
CircleArm.Parent = ScrollingFrameR15
CircleArm.BackgroundColor3 = Color3.new(0, 0, 0)
CircleArm.BackgroundTransparency = 0.30000001192093
CircleArm.Position = UDim2.new(0.0563380271, 0, 0.386679649, 0)
CircleArm.Size = UDim2.new(0, 90, 0, 30)
CircleArm.Font = Enum.Font.SourceSansSemibold
CircleArm.Text = "Circle Arm"
CircleArm.TextColor3 = Color3.new(1, 1, 1)
CircleArm.TextSize = 15

Bend.Name = "Bend"
Bend.Parent = ScrollingFrameR15
Bend.BackgroundColor3 = Color3.new(0, 0, 0)
Bend.BackgroundTransparency = 0.30000001192093
Bend.Position = UDim2.new(0.28169015, 0, 0.386679649, 0)
Bend.Size = UDim2.new(0, 90, 0, 30)
Bend.Font = Enum.Font.SourceSansSemibold
Bend.Text = "Bend"
Bend.TextColor3 = Color3.new(1, 1, 1)
Bend.TextSize = 15

RotateSlash.Name = "RotateSlash"
RotateSlash.Parent = ScrollingFrameR15
RotateSlash.BackgroundColor3 = Color3.new(0, 0, 0)
RotateSlash.BackgroundTransparency = 0.30000001192093
RotateSlash.Position = UDim2.new(0.507042229, 0, 0.386679649, 0)
RotateSlash.Size = UDim2.new(0, 90, 0, 30)
RotateSlash.Font = Enum.Font.SourceSansSemibold
RotateSlash.Text = "Rotate Slash"
RotateSlash.TextColor3 = Color3.new(1, 1, 1)
RotateSlash.TextSize = 15

FlingArms.Name = "FlingArms"
FlingArms.Parent = ScrollingFrameR15
FlingArms.BackgroundColor3 = Color3.new(0, 0, 0)
FlingArms.BackgroundTransparency = 0.30000001192093
FlingArms.Position = UDim2.new(0.732394338, 0, 0.386679649, 0)
FlingArms.Size = UDim2.new(0, 90, 0, 30)
FlingArms.Font = Enum.Font.SourceSansSemibold
FlingArms.Text = "Fling Arms"
FlingArms.TextColor3 = Color3.new(1, 1, 1)
FlingArms.TextSize = 15

SideFrame.Name = "SideFrame"
SideFrame.Active = true
SideFrame.Draggable = true
SideFrame.Visible = false
SideFrame.Parent = Energize
SideFrame.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
SideFrame.BackgroundTransparency = 0.15000000596046
SideFrame.Position = UDim2.new(0.502199769, 0, 0.55104512, 0)
SideFrame.Size = UDim2.new(0, 426, 0, 25)

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideFrame
OpenGUI.BackgroundColor3 = Color3.new(0, 0, 0)
OpenGUI.BackgroundTransparency = 0.15000000596046
OpenGUI.BorderSizePixel = 0
OpenGUI.Position = UDim2.new(0.967136145, 0, 0, 0)
OpenGUI.Size = UDim2.new(0, 15, 0, 15)
OpenGUI.Font = Enum.Font.SourceSansSemibold
OpenGUI.Text = "X"
OpenGUI.TextColor3 = Color3.new(1, 1, 1)
OpenGUI.TextSize = 14

SideFrameTitle.Name = "SideFrameTitle"
SideFrameTitle.Parent = SideFrame
SideFrameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SideFrameTitle.BackgroundTransparency = 1
SideFrameTitle.Position = UDim2.new(0.364739805, 0, 0, 0)
SideFrameTitle.Size = UDim2.new(0, 115, 0, 25)
SideFrameTitle.Font = Enum.Font.SourceSansSemibold
SideFrameTitle.Text = "Energize Remake"
SideFrameTitle.TextColor3 = Color3.new(1, 1, 1)
SideFrameTitle.TextSize = 17
-- Scripts:
col = Color3.fromRGB(0, 0, 0)
loc = Color3.fromRGB(255, 117, 19)
rcol = Color3.fromRGB(0, 0, 0)
rloc = Color3.fromRGB(255, 117, 19)

CloseGUI.MouseButton1Click:connect(function()
MainFrame.Visible = false
SideFrame.Visible = true
SideFrame.Position = MainFrame.Position
end)

OpenGUI.MouseButton1Click:connect(function()
MainFrame.Visible = true
SideFrame.Visible = false
MainFrame.Position = SideFrame.Position
end)

if (game:GetService"Players".LocalPlayer.Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15) then
	ScrollingFrame.Visible = false
	ScrollingFrameR15.Visible = true
	CheckR.Text = "Showing R15 Animations"
else
	ScrollingFrame.Visible = true
	ScrollingFrameR15.Visible = false
	CheckR.Text = "Showing R6 Animations"
end

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeadThrowACTIVE = false
HeadThrow.MouseButton1Click:connect(function()
	HeadThrowACTIVE = not HeadThrowACTIVE
	if HeadThrowACTIVE then
		HeadThrow.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeadThrowACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeadThrow.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://121572214"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatingHeadACTIVE = false
FloatingHead.MouseButton1Click:connect(function()
	FloatingHeadACTIVE = not FloatingHeadACTIVE
	if FloatingHeadACTIVE then
		track:Play(.1, 1, 1)
		FloatingHead.BackgroundColor3 = loc
	else
		track:Stop()
		FloatingHead.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://182724289"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrouchACTIVE = false
Crouch.MouseButton1Click:connect(function()
	CrouchACTIVE = not CrouchACTIVE
	if CrouchACTIVE then
		track:Play(.1, 1, 1)
		Crouch.BackgroundColor3 = loc
	else
		track:Stop()
		Crouch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorCrawlACTIVE = false
FloorCrawl.MouseButton1Click:connect(function()
	FloorCrawlACTIVE = not FloorCrawlACTIVE
	if FloorCrawlACTIVE then
		track:Play(.1, 1, 1)
		FloorCrawl.BackgroundColor3 = loc
	else
		track:Stop()
		FloorCrawl.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204328711"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DinoWalkACTIVE = false
DinoWalk.MouseButton1Click:connect(function()
	DinoWalkACTIVE = not DinoWalkACTIVE
	if DinoWalkACTIVE then
		track:Play(.1, 1, 1)
		DinoWalk.BackgroundColor3 = loc
	else
		track:Stop()
		DinoWalk.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429681631"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local JumpingJacksACTIVE = false
JumpingJacks.MouseButton1Click:connect(function()
	JumpingJacksACTIVE = not JumpingJacksACTIVE
	if JumpingJacksACTIVE then
		track:Play(.1, 1, 1)
		JumpingJacks.BackgroundColor3 = loc
	else
		track:Stop()
		JumpingJacks.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopHeadACTIVE = false
LoopHead.MouseButton1Click:connect(function()
	LoopHeadACTIVE = not LoopHeadACTIVE
	if LoopHeadACTIVE then
		LoopHead.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopHeadACTIVE then
				track:Play(.5, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		LoopHead.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeroJumpACTIVE = false
HeroJump.MouseButton1Click:connect(function()
	HeroJumpACTIVE = not HeroJumpACTIVE
	if HeroJumpACTIVE then
		HeroJump.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeroJumpACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeroJump.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181526230"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FaintACTIVE = false
Faint.MouseButton1Click:connect(function()
	FaintACTIVE = not FaintACTIVE
	if FaintACTIVE then
		track:Play(.1, 1, 1)
		Faint.BackgroundColor3 = loc
	else
		track:Stop()
		Faint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorFaintACTIVE = false
FloorFaint.MouseButton1Click:connect(function()
	FloorFaintACTIVE = not FloorFaintACTIVE
	if FloorFaintACTIVE then
		FloorFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FloorFaintACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		FloorFaint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperFaintACTIVE = false
SuperFaint.MouseButton1Click:connect(function()
	SuperFaintACTIVE = not SuperFaintACTIVE
	if SuperFaintACTIVE then
		SuperFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperFaintACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		SuperFaint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LevitateACTIVE = false
Levitate.MouseButton1Click:connect(function()
	LevitateACTIVE = not LevitateACTIVE
	if LevitateACTIVE then
		track:Play(.1, 1, 1)
		Levitate.BackgroundColor3 = loc
	else
		track:Stop()
		Levitate.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://183412246"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DabACTIVE = false
Dab.MouseButton1Click:connect(function()
	DabACTIVE = not DabACTIVE
	if DabACTIVE then
		Dab.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if DabACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Dab.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://188632011"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinACTIVE = false
Spinner.MouseButton1Click:connect(function()
	SpinACTIVE = not SpinACTIVE
	if SpinACTIVE then
		Spinner.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		Spinner.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://179224234"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSitACTIVE = false
FloatSit.MouseButton1Click:connect(function()
	FloatSitACTIVE = not FloatSitACTIVE
	if FloatSitACTIVE then
		track:Play(.1, 1, 1)
		FloatSit.BackgroundColor3 = loc
	else
		track:Stop()
		FloatSit.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429703734"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MovingDanceACTIVE = false
MovingDance.MouseButton1Click:connect(function()
	MovingDanceACTIVE = not MovingDanceACTIVE
	if MovingDanceACTIVE then
		MovingDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MovingDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MovingDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local WeirdMoveACTIVE = false
WeirdMove.MouseButton1Click:connect(function()
	WeirdMoveACTIVE = not WeirdMoveACTIVE
	if WeirdMoveACTIVE then
		track:Play(.1, 1, 1)
		WeirdMove.BackgroundColor3 = loc
	else
		track:Stop()
		WeirdMove.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CloneIllusionACTIVE = false
CloneIllusion.MouseButton1Click:connect(function()
	CloneIllusionACTIVE = not CloneIllusionACTIVE
	if CloneIllusionACTIVE then
		track:Play(.5, 1, 1e7)
		CloneIllusion.BackgroundColor3 = loc
	else
		track:Stop()
		CloneIllusion.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local GlitchLevitateACTIVE = false
GlitchLevitate.MouseButton1Click:connect(function()
	GlitchLevitateACTIVE = not GlitchLevitateACTIVE
	if GlitchLevitateACTIVE then
		track:Play(.5, 1, 1e7)
		GlitchLevitate.BackgroundColor3 = loc
	else
		track:Stop()
		GlitchLevitate.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429730430"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDanceACTIVE = false
SpinDance.MouseButton1Click:connect(function()
	SpinDanceACTIVE = not SpinDanceACTIVE
	if SpinDanceACTIVE then
		SpinDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://45834924"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MoonDanceACTIVE = false
MoonDance.MouseButton1Click:connect(function()
	MoonDanceACTIVE = not MoonDanceACTIVE
	if MoonDanceACTIVE then
		MoonDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MoonDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MoonDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204062532"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullPunchACTIVE = false
FullPunch.MouseButton1Click:connect(function()
	FullPunchACTIVE = not FullPunchACTIVE
	if FullPunchACTIVE then
		FullPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullPunchACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullPunch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://186934910"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDance2ACTIVE = false
SpinDance2.MouseButton1Click:connect(function()
	SpinDance2ACTIVE = not SpinDance2ACTIVE
	if SpinDance2ACTIVE then
		SpinDance2.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDance2ACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance2.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204292303"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BowDownACTIVE = false
BowDown.MouseButton1Click:connect(function()
	BowDownACTIVE = not BowDownACTIVE
	if BowDownACTIVE then
		BowDown.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BowDownACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		BowDown.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSlamACTIVE = false
SwordSlam.MouseButton1Click:connect(function()
	SwordSlamACTIVE = not SwordSlamACTIVE
	if SwordSlamACTIVE then
		SwordSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SwordSlamACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SwordSlam.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopSlamACTIVE = false
LoopSlam.MouseButton1Click:connect(function()
	LoopSlamACTIVE = not LoopSlamACTIVE
	if LoopSlamACTIVE then
		LoopSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopSlamACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		LoopSlam.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MegaInsaneACTIVE = false
MegaInsane.MouseButton1Click:connect(function()
	MegaInsaneACTIVE = not MegaInsaneACTIVE
	if MegaInsaneACTIVE then
		MegaInsane.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MegaInsaneACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		MegaInsane.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://126753849"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperPunchACTIVE = false
SuperPunch.MouseButton1Click:connect(function()
	SuperPunchACTIVE = not SuperPunchACTIVE
	if SuperPunchACTIVE then
		SuperPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperPunchACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		SuperPunch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://218504594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullSwingACTIVE = false
FullSwing.MouseButton1Click:connect(function()
	FullSwingACTIVE = not FullSwingACTIVE
	if FullSwingACTIVE then
		FullSwing.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullSwingACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullSwing.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://259438880"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmTurbineACTIVE = false
ArmTurbine.MouseButton1Click:connect(function()
	ArmTurbineACTIVE = not ArmTurbineACTIVE
	if ArmTurbineACTIVE then
		track:Play(.1, 1, 1e3)
		ArmTurbine.BackgroundColor3 = loc
	else
		track:Stop()
		ArmTurbine.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://136801964"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BarrelRollACTIVE = false
BarrelRoll.MouseButton1Click:connect(function()
	BarrelRollACTIVE = not BarrelRollACTIVE
	if BarrelRollACTIVE then
		BarrelRoll.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BarrelRollACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		BarrelRoll.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://180612465"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ScaredACTIVE = false
Scared.MouseButton1Click:connect(function()
	ScaredACTIVE = not ScaredACTIVE
	if ScaredACTIVE then
		Scared.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ScaredACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Scared.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33796059"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneACTIVE = false
Insane.MouseButton1Click:connect(function()
	InsaneACTIVE = not InsaneACTIVE
	if InsaneACTIVE then
		track:Play(.1, 1, 1e8)
		Insane.BackgroundColor3 = loc
	else
		track:Stop()
		Insane.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33169583"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmDetachACTIVE = false
ArmDetach.MouseButton1Click:connect(function()
	ArmDetachACTIVE = not ArmDetachACTIVE
	if ArmDetachACTIVE then
		ArmDetach.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ArmDetachACTIVE then
				track:Play(.1, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		ArmDetach.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35978879"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSliceACTIVE = false
SwordSlice.MouseButton1Click:connect(function()
	SwordSliceACTIVE = not SwordSliceACTIVE
	if SwordSliceACTIVE then
		track:Play(.1, 1, 1)
		SwordSlice.BackgroundColor3 = loc
	else
		track:Stop()
		SwordSlice.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://27432691"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneArmsACTIVE = false
InsaneArms.MouseButton1Click:connect(function()
	InsaneArmsACTIVE = not InsaneArmsACTIVE
	if InsaneArmsACTIVE then
		InsaneArms.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if InsaneArmsACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		InsaneArms.BackgroundColor3 = col
	end
end)
-- R15
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://674871189"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrazySlashACTIVE = false
CrazySlash.MouseButton1Click:connect(function()
	CrazySlashACTIVE = not CrazySlashACTIVE
	if CrazySlashACTIVE then
		CrazySlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CrazySlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CrazySlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582855105"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local OpenACTIVE = false
Open.MouseButton1Click:connect(function()
	OpenACTIVE = not OpenACTIVE
	if OpenACTIVE then
		Open.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if OpenACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Open.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754658275"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local R15SpinnerACTIVE = false
R15Spinner.MouseButton1Click:connect(function()
	R15SpinnerACTIVE = not R15SpinnerACTIVE
	if R15SpinnerACTIVE then
		R15Spinner.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if R15SpinnerACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		R15Spinner.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582384156"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmsOutACTIVE = false
ArmsOut.MouseButton1Click:connect(function()
	ArmsOutACTIVE = not ArmsOutACTIVE
	if ArmsOutACTIVE then
		ArmsOut.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if ArmsOutACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		ArmsOut.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://717879555"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSlashACTIVE = false
FloatSlash.MouseButton1Click:connect(function()
	FloatSlashACTIVE = not FloatSlashACTIVE
	if FloatSlashACTIVE then
		FloatSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FloatSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FloatSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://708553116"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
WeirdZombieACTIVE = false
WeirdZombie.MouseButton1Click:connect(function()
	WeirdZombieACTIVE = not WeirdZombieACTIVE
	if WeirdZombieACTIVE then
		WeirdZombie.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if WeirdZombieACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		WeirdZombie.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://746398327"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
DownSlashACTIVE = false
DownSlash.MouseButton1Click:connect(function()
	DownSlashACTIVE = not DownSlashACTIVE
	if DownSlashACTIVE then
		DownSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if DownSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		DownSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025795"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
PullACTIVE = false
Pull.MouseButton1Click:connect(function()
	PullACTIVE = not PullACTIVE
	if PullACTIVE then
		Pull.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if PullACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Pull.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://698251653"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
CircleArmACTIVE = false
CircleArm.MouseButton1Click:connect(function()
	CircleArmACTIVE = not CircleArmACTIVE
	if CircleArmACTIVE then
		CircleArm.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CircleArmACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CircleArm.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://696096087"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
BendACTIVE = false
Bend.MouseButton1Click:connect(function()
	BendACTIVE = not BendACTIVE
	if BendACTIVE then
		Bend.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if BendACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Bend.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025570"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
RotateSlashACTIVE = false
RotateSlash.MouseButton1Click:connect(function()
	RotateSlashACTIVE = not RotateSlashACTIVE
	if RotateSlashACTIVE then
		RotateSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if RotateSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		RotateSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754656200"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
FlingArmsACTIVE = false
FlingArms.MouseButton1Click:connect(function()
	FlingArmsACTIVE = not FlingArmsACTIVE
	if FlingArmsACTIVE then
		FlingArms.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FlingArmsACTIVE then
				track:Play(.1, 1, 10)
			end
		 end
		end
	else
		track:Stop()
		FlingArms.BackgroundColor3 = rcol
	end
end)
end)

button5.Name = "button5"
button5.Parent = TextLabel
button5.BackgroundColor3 = Color3.new(1, 1, 1)
button5.BackgroundTransparency = 0.94999998807907
button5.Position = UDim2.new(0.0549019501, 0, 10.5499992, 0)
button5.Size = UDim2.new(0, 165, 0, 30)
button5.Font = Enum.Font.ArialBold
button5.Text = "ButtonText"
button5.TextColor3 = Color3.new(1, 1, 1)
button5.TextSize = 14
button5.MouseButton1Down:connect(function()
--scripthere
end)

button10.Name = "button10"
button10.Parent = TextLabel
button10.BackgroundColor3 = Color3.new(1, 1, 1)
button10.BackgroundTransparency = 0.94999998807907
button10.Position = UDim2.new(0.559151232, 0, 10.5499992, 0)
button10.Size = UDim2.new(0, 165, 0, 30)
button10.Font = Enum.Font.ArialBold
button10.Text = "ButtonText"
button10.TextColor3 = Color3.new(1, 1, 1)
button10.TextSize = 14
button10.MouseButton1Down:connect(function()
--scripthere
end)

button9.Name = "button9"
button9.Parent = TextLabel
button9.BackgroundColor3 = Color3.new(1, 1, 1)
button9.BackgroundTransparency = 0.94999998807907
button9.Position = UDim2.new(0.559151232, 0, 8.39999962, 0)
button9.Size = UDim2.new(0, 165, 0, 30)
button9.Font = Enum.Font.ArialBold
button9.Text = "ButtonText"
button9.TextColor3 = Color3.new(1, 1, 1)
button9.TextSize = 14
button9.MouseButton1Down:connect(function()
--scripthere
end)

button8.Name = "button8"
button8.Parent = TextLabel
button8.BackgroundColor3 = Color3.new(1, 1, 1)
button8.BackgroundTransparency = 0.94999998807907
button8.Position = UDim2.new(0.559151232, 0, 6.19999981, 0)
button8.Size = UDim2.new(0, 165, 0, 30)
button8.Font = Enum.Font.ArialBold
button8.Text = "ButtonText"
button8.TextColor3 = Color3.new(1, 1, 1)
button8.TextSize = 14
button8.MouseButton1Down:connect(function()
--scripthere
end)

button7.Name = "button7"
button7.Parent = TextLabel
button7.BackgroundColor3 = Color3.new(1, 1, 1)
button7.BackgroundTransparency = 0.94999998807907
button7.Position = UDim2.new(0.559151232, 0, 4, 0)
button7.Size = UDim2.new(0, 165, 0, 30)
button7.Font = Enum.Font.ArialBold
button7.Text = "ButtonText"
button7.TextColor3 = Color3.new(1, 1, 1)
button7.TextSize = 14
button7.MouseButton1Down:connect(function()
--scripthere
end)

button6.Name = "button6"
button6.Parent = TextLabel
button6.BackgroundColor3 = Color3.new(1, 1, 1)
button6.BackgroundTransparency = 0.94999998807907
button6.Position = UDim2.new(0.559151232, 0, 1.74999988, 0)
button6.Size = UDim2.new(0, 165, 0, 30)
button6.Font = Enum.Font.ArialBold
button6.Text = "ButtonText"
button6.TextColor3 = Color3.new(1, 1, 1)
button6.TextSize = 14
button6.MouseButton1Down:connect(function()
--scripthere
end)

local script = Instance.new('Script', CumInMyAss)

function close()
script.Parent.Parent.Visible = false
pcall(function() getgenv().CockAndBalls = false end)
end

local function GayNiggerSex() -- CumInMyAss.Script
script.Parent.MouseButton1Click:connect(close)

end
coroutine.wrap(GayNiggerSex)()