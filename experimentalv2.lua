RumblePit = {
    enable = true,
    currentDPS = 0,
    currentBoxOpacity = 0;
    maxDPS = 0;
    inCombat = false,
    dpsBox = 0
    
 }
 
 function createRedBox()
    print("Rumble Pit Started")
    local RedBox = CreateFrame("Frame", nil, UIParent)
    RedBox:SetSize(250, 250)
    RedBox:SetPoint("CENTER", 550, -200)
    RedBox.texture = RedBox:CreateTexture(nil, "BACKGROUND")
    RedBox.texture:SetAllPoints(true)
    --RedBox.texture:SetTexture(1.0, 0.0, 0.0, 0.5)
    RedBox.texture:SetColorTexture(0, 0, 0, 1)
    return RedBox
 end
 
 function setBoxColorRed(a,b)
    a.texture:SetColorTexture(b, 0.0, 0.0, 1)
    return 
 end
 
 function HelloWorld()
    print("hello world")   
 end
 
 function setBoxColorBlack(a)
    
    a.texture:SetColorTexture(0.0, 0.0, 0.0, 1)
    return 
 end
 
 
 
 function RumblePit:new (max)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.maxDPS = max
    self.dpsBox = createRedBox()
    
    return o
    
 end
 
 function RumblePit:printStats()
    print(self.currentDPS)
    print(self.inCombat)
 end
 
 function calcDPS()
    local combat = Details:GetCurrentCombat()
    local damageContainer = combat:GetContainer (DETAILS_ATTRIBUTE_DAMAGE)
    
    local actorsFound = 0
    local totalDps = 0;
    for i, actor in damageContainer:ListActors() do
       if(actor:IsGroupPlayer()) then
          actorsFound = actorsFound + 1
          local totalDamage = actor.total
          print('Total dmg: ', totalDamage)
          local playerDps = totalDamage / (combat:GetCombatTime() + 1)
          totalDps = totalDps + playerDps 
          print('DPS: ',playerDps)
          
          
       end
    end
    print('Players Found: ',actorsFound)
    return totalDps
 end
 
 function RumblePit:updateBox()
    if (self.enable == true) then
       --If in combat
       if (UnitAffectingCombat(UnitName("player")) == true) then
          print("Update Box Called in combat")
          self.currentDPS = calcDPS()
          self.currentBoxOpacity =  self.currentDPS / self.maxDPS
          setBoxColorRed(self.dpsBox,self.currentBoxOpacity)
          print('Total DPS:', self.currentDPS)
          print("# of players:", actorsFound) 
          
       else
          -- Not in comnbat, go dark
          print("Update Box Called NOT in combat")
          setBoxColorBlack(self.dpsBox)
          
       end
    end
    
 end
 
 --local f = CreateFrame("Frame");
 
 
 
 ---function f:onUpdate(sinceLastUpdate, box)
 ---  self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate;
 ---  if ( self.sinceLastUpdate >= 1 ) then -- in seconds
 --RumblePit:HelloWorld()
 --print('it worked')
 ---     RumbleUpdate(box)
 ---     self.sinceLastUpdate = 0;
 ---   end
 ---end
 
 
 
 --newBox=createRedBox()
 --setBoxColorBlack(newBox)
 newRumbleObj = RumblePit:new(50)
 --f:SetScript("OnUpdate", function(self, sinceLastUpdate) f:onUpdate(sinceLastUpdate); end);
 --newObj:printStats()
 
 
 --C_Timer.NewTicker(2.5, function() print(GetTime()) end, 4)
 yadur = C_Timer.NewTicker(1, function() newRumbleObj:updateBox() end, 0)
 ---yadur:Cancel()
 
 --while (toRun == true)
 --do
 -- os.time()
 -- print("go 1")
 --end
 
 
 
 