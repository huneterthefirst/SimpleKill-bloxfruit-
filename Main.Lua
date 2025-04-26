local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v81=v2(v0(v30,16));if v19 then local v90=v5(v81,v19);v19=nil;return v90;else return v81;end end end);local function v20(v31,v32,v33) if v33 then local v82=0 -0 ;local v83;while true do if (v82==((1065 -(68 + 997)) -0)) then v83=(v31/(2^(v32-(1 -0))))%((4 -(1272 -(226 + 1044)))^(((v33-(620 -(555 + 64))) -(v32-(932 -(857 + 74)))) + (569 -(367 + 201)))) ;return v83-(v83%(928 -(214 + 713))) ;end end else local v84=(0 -0) + 0 ;local v85;while true do if (v84==(0 + (117 -(32 + 85)))) then v85=(879 -(282 + 595))^(v32-((1606 + 32) -(1523 + 114))) ;return (((v31%(v85 + v85))>=v85) and (1 + 0)) or (0 -0) ;end end end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 1 + 1 ;return (v36 * (1213 -(892 + 65))) + v35 ;end local function v23() local v37=0 -0 ;local v38;local v39;local v40;local v41;while true do if (v37==(181 -(67 + 113))) then return (v41 * (12302277 + 4474939)) + (v40 * (121138 -(100859 -45257))) + (v39 * (189 + 67)) + v38 ;end if (v37==(0 -0)) then v38,v39,v40,v41=v1(v16,v18,v18 + (4 -1) );v18=v18 + (10 -(5 + 1)) ;v37=351 -(87 + 263) ;end end end local function v24() local v42=v23();local v43=v23();local v44=998 -(915 + 82) ;local v45=(v20(v43,(887 -(261 + 624)) -1 ,12 + 8 ) * ((2 -0)^(14 + 18))) + v42 ;local v46=v20(v43,1208 -((1899 -830) + 118) ,70 -39 );local v47=((v20(v43,462 -(44 + 386) )==(1 -0)) and  -(1 + 0)) or ((1081 -(1020 + 60)) -0) ;if (v46==(0 + (1423 -(630 + 793)))) then if (v45==0) then return v47 * (772 -(201 + 571)) ;else local v91=0 + 0 ;while true do if (v91==(1138 -(116 + 1022))) then v46=4 -3 ;v44=0 + 0 ;break;end end end elseif (v46==((25319 -17847) -5425)) then return ((v45==(0 -0)) and (v47 * ((792 -(368 + 423))/(859 -(814 + 45))))) or (v47 * NaN) ;end return v8(v47,v46-(3214 -2191) ) * (v44 + (v45/((20 -(10 + (37 -29)))^(19 + 33)))) ;end local function v25(v48) local v49;if  not v48 then local v86=0 + 0 ;while true do if (v86==(0 -0)) then v48=v23();if (v48==(1747 -(760 + 987))) then return "";end break;end end end v49=v3(v16,v18,(v18 + v48) -(1914 -(1789 + 124)) );v18=v18 + v48 ;local v50={};for v64=767 -(745 + 8 + 13) , #v49 do v50[v64]=v2(v1(v3(v49,v64,v64)));end return v6(v50);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v51=(function() return 0 + 0 ;end)();local v52=(function() return;end)();local v53=(function() return;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();while true do local v66=(function() return 0 -0 ;end)();while true do if (v66==(1 -0)) then if (v51~=(1 + 1)) then else for v99= #"!",v23() do local v100=(function() return 0 + 0 ;end)();local v101=(function() return;end)();local v102=(function() return;end)();while true do if (v100==(1 + 0)) then while true do if (0==v101) then v102=(function() return v21();end)();if (v20(v102, #":", #"<")==0) then local v124=(function() return 1636 -(1373 + 263) ;end)();local v125=(function() return;end)();local v126=(function() return;end)();local v127=(function() return;end)();local v128=(function() return;end)();while true do if (v124~=2) then else while true do if (v125== #":") then local v132=(function() return 529 -(406 + 123) ;end)();while true do if (v132==1) then v125=(function() return 1771 -(1749 + 20) ;end)();break;end if (v132==(0 + 0)) then v128=(function() return {v22(),v22(),nil,nil};end)();if (v126==(1322 -(1249 + 73))) then local v139=(function() return 0 + 0 ;end)();local v140=(function() return;end)();while true do if (v139~=(0 + 0)) then else v140=(function() return 1145 -(466 + 679) ;end)();while true do if (v140==0) then v128[ #"19("]=(function() return v22();end)();v128[ #"?id="]=(function() return v22();end)();break;end end break;end end elseif (v126== #":") then v128[ #"-19"]=(function() return v23();end)();elseif (v126==(2 -0)) then v128[ #"xnx"]=(function() return v23() -((2 -0)^(45 -29)) ;end)();elseif (v126== #"asd") then local v147=(function() return 0;end)();while true do if ((1900 -(106 + 1794))~=v147) then else v128[ #"xxx"]=(function() return v23() -(2^(6 + 10)) ;end)();v128[ #"http"]=(function() return v22();end)();break;end end end v132=(function() return 1 + 0 ;end)();end end end if (v125==(1386 -(746 + 638))) then local v133=(function() return 0 + 0 ;end)();local v134=(function() return;end)();while true do if (0==v133) then v134=(function() return 0 -0 ;end)();while true do if (v134==0) then if (v20(v127, #"[", #"~")== #"]") then v128[2]=(function() return v57[v128[343 -(218 + 123) ]];end)();end if (v20(v127,1583 -(1535 + 46) ,2 + 0 )== #"~") then v128[ #"asd"]=(function() return v57[v128[ #"19("]];end)();end v134=(function() return 585 -(57 + 527) ;end)();end if ((1428 -(41 + 1386))~=v134) then else v125=(function() return  #"nil";end)();break;end end break;end end end if (v125~= #"-19") then else if (v20(v127, #"-19", #"gha")~= #" ") then else v128[ #"xnxx"]=(function() return v57[v128[ #"asd1"]];end)();end v52[v99]=(function() return v128;end)();break;end if (v125~=(103 -(17 + 86))) then else local v136=(function() return 0;end)();local v137=(function() return;end)();while true do if (v136==(0 + 0)) then v137=(function() return 560 -(306 + 254) ;end)();while true do if (v137~=(0 + 0)) then else v126=(function() return v20(v102,3 -1 , #"91(");end)();v127=(function() return v20(v102, #"0836",17 -11 );end)();v137=(function() return 1468 -(899 + 568) ;end)();end if (v137==(1 + 0)) then v125=(function() return  #"/";end)();break;end end break;end end end end break;end if ((0 -0)==v124) then v125=(function() return 0 + 0 ;end)();v126=(function() return nil;end)();v124=(function() return 1;end)();end if (v124~=(604 -(268 + 335))) then else local v131=(function() return 290 -(60 + 230) ;end)();while true do if ((65 -(30 + 35))==v131) then v127=(function() return nil;end)();v128=(function() return nil;end)();v131=(function() return 573 -(426 + 146) ;end)();end if (v131==1) then v124=(function() return 2;end)();break;end end end end end break;end end break;end if (v100~=0) then else local v116=(function() return 0 + 0 ;end)();while true do if ((1 + 0)==v116) then v100=(function() return 1258 -(1043 + 214) ;end)();break;end if (v116~=0) then else v101=(function() return 0;end)();v102=(function() return nil;end)();v116=(function() return 1457 -(282 + 1174) ;end)();end end end end end for v103= #"}",v23() do v53[v103-#">" ]=(function() return v28();end)();end return v55;end break;end if (v66==(0 -0)) then if (v51== #"|") then local v96=(function() return 811 -(569 + 242) ;end)();while true do if (v96==(2 -1)) then for v117= #"]",v56 do local v118=(function() return 0 -0 ;end)();local v119=(function() return;end)();local v120=(function() return;end)();local v121=(function() return;end)();while true do if (v118==(0 + 0)) then local v122=(function() return 1024 -(706 + 318) ;end)();local v123=(function() return;end)();while true do if ((320 -(53 + 267))~=v122) then else v123=(function() return 0 + 0 ;end)();while true do if (1==v123) then v118=(function() return 1;end)();break;end if (0==v123) then v119=(function() return 1251 -(721 + 530) ;end)();v120=(function() return nil;end)();v123=(function() return 1;end)();end end break;end end end if (v118==(1272 -(945 + 326))) then v121=(function() return nil;end)();while true do if (v119== #"<") then if (v120== #" ") then v121=(function() return v21()~=(0 -0) ;end)();elseif (v120==(4 -2)) then v121=(function() return v24();end)();elseif (v120== #"91(") then v121=(function() return v25();end)();end v57[v117]=(function() return v121;end)();break;end if (v119~=(0 + 0)) then else local v130=(function() return 0;end)();while true do if (v130==0) then v120=(function() return v21();end)();v121=(function() return nil;end)();v130=(function() return 1 + 0 ;end)();end if (v130~=(701 -(271 + 429))) then else v119=(function() return  #"}";end)();break;end end end end break;end end end v55[ #"nil"]=(function() return v21();end)();v96=(function() return 2 + 0 ;end)();end if (v96~=(1502 -(1408 + 92))) then else v51=(function() return 2 + 0 ;end)();break;end if (v96==(1086 -(461 + 625))) then v56=(function() return v23();end)();v57=(function() return {};end)();v96=(function() return 1;end)();end end end if (v51~=(1288 -(993 + 295))) then else local v97=(function() return 0;end)();local v98=(function() return;end)();while true do if (v97~=0) then else v98=(function() return 0 + 0 ;end)();while true do if (v98==2) then v51=(function() return  #" ";end)();break;end if ((0 + 0)~=v98) then else v52=(function() return {};end)();v53=(function() return {};end)();v98=(function() return 1;end)();end if (1==v98) then v54=(function() return {};end)();v55=(function() return {v52,v53,nil,v54};end)();v98=(function() return 2;end)();end end break;end end end v66=(function() return 1;end)();end end end end local function v29(v58,v59,v60) local v61=v58[739 -(542 + 196) ];local v62=v58[3 -1 ];local v63=v58[1 + 2 ];return function(...) local v67=v61;local v68=v62;local v69=v63;local v70=v27;local v71=1 + 0 ;local v72= -(1 + 0);local v73={};local v74={...};local v75=v12("#",...) -1 ;local v76={};local v77={};for v87=0 -0 ,v75 do if (v87>=v69) then v73[v87-v69 ]=v74[v87 + 1 ];else v77[v87]=v74[v87 + 1 ];end end local v78=(v75-v69) + (1552 -(1126 + (1754 -(797 + 532)))) ;local v79;local v80;while true do v79=v67[v71];v80=v79[406 -(118 + 287) ];if ((1812<=3249) and (v80<=(11 -(6 + 2)))) then if ((1623<=1957) and (v80<=1)) then if (v80==0) then v77[v79[1123 -(118 + 1003) ]]=v60[v79[8 -5 ]];else local v107=v79[379 -(142 + (526 -291)) ];v77[v107](v77[v107 + (4 -(1 + 2)) ]);end elseif ((4412==4412) and ((v80>2) or (1421>=2104))) then v77[v79[1 + 1 ]]=v79[980 -(553 + 424) ];else v77[v79[2]]=v79[5 -2 ];end elseif (v80<=(5 + (0 -0))) then if (v80>(4 + 0)) then do return;end else do return;end end elseif (v80>(4 + 2)) then local v112=v79[1 + (754 -(239 + 514)) ];v77[v112](v77[v112 + 1 + 0 ]);else v77[v79[4 -2 ]]=v60[v79[3]];end v71=v71 + ((1 + 1) -1) ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!023Q0003053Q007072696E74032A3Q004D616465206279204D722E20436F646572206D7920646973636F72642069732064656174686C795F2Q3100043Q0012063Q00013Q001202000100024Q00013Q000200012Q00043Q00017Q00",v9(),...);
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterAttackRemote = Net:WaitForChild("RE/RegisterAttack")
local RegisterHitRemote = Net:WaitForChild("RE/RegisterHit")

-- Attack all NPCs in range
local function AttackNpcsInRange(range, mode)
    local enemiesFolder = Workspace:FindFirstChild("Enemies")
    if not enemiesFolder then return end

    local attackTargets = {}

    for _, enemy in pairs(enemiesFolder:GetChildren()) do
        if enemy:IsA("Model") and enemy.PrimaryPart then
            local distance = (enemy.PrimaryPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= range then
                table.insert(attackTargets, { enemy, enemy.PrimaryPart })
            end
        end
    end

    if #attackTargets > 0 then
        local args = {
            attackTargets[1][2], -- first NPC's part
            attackTargets,
            [4] = "756ab798", -- attack ID for NPC
            [5] = mode -- true = hold attack, false = tap
        }

        RegisterHitRemote:FireServer(unpack(args))
        RegisterAttackRemote:FireServer(0)
    end
end

-- Attack closest player using custom structure
local function AttackClosestPlayerInRange(range)
    local closestPlayer
    local closestDistance = range

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("LeftLowerLeg") then
            local part = player.Character.LeftLowerLeg
            local distance = (part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end

    if closestPlayer then
        local targetPart = closestPlayer.Character.LeftLowerLeg

        local args = {
            targetPart,
            {},
            [4] = "7566d5e3" -- attack ID for player
        }

        RegisterHitRemote:FireServer(unpack(args))
        RegisterAttackRemote:FireServer(0)
    end
end

-- Click to attack nearby player
local function ClickAttackNearbyPlayer()
    local mouse = LocalPlayer:GetMouse()
    mouse.Button1Down:Connect(function()
        AttackClosestPlayerInRange(300) -- Adjust range as needed
    end)
end

-- Key handling
local holdingB = false
local holdingN = false

task.spawn(function()
    while true do
        if holdingB then
            AttackNpcsInRange(1000, false)
        elseif holdingN then
            AttackClosestPlayerInRange(1000)
        end
        task.wait()
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.B then
        holdingB = true
    elseif input.KeyCode == Enum.KeyCode.N then
        holdingN = true
    elseif input.KeyCode == Enum.KeyCode.M then
        ClickAttackNearbyPlayer() -- Activates click-based attack on players
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.B then
        holdingB = false
    elseif input.KeyCode == Enum.KeyCode.N then
        holdingN = false
    end
end)
