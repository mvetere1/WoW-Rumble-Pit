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
    local RedBox = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    RedBox:SetSize(350, 350)
    RedBox:SetPoint("CENTER", 550, -200)
    RedBox:SetBackdrop(BACKDROP_TUTORIAL_16_16)
    
    RedBox.text = RedBox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    RedBox.text:SetPoint("BOTTOM", RedBox, "TOP", 0, -20)
    baseText = "Rumble Pit v2 0%"
    
    RedBox.text:SetText(baseText)
    
    RedBox:SetMovable(true)
    RedBox:EnableMouse(true)
    RedBox:RegisterForDrag("LeftButton")
    RedBox:SetScript("OnDragStart", function(self, button)
          self:StartMoving()
          print("OnDragStart", button)
    end)
    RedBox:SetScript("OnDragStop", function(self)
          self:StopMovingOrSizing()
          print("OnDragStop")
    end)
    
    
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
          
          percentage = self.currentBoxOpacity
          
          baseText = "Rumble Pit v2 %.2f %%"
          print(string.format(baseText, self.currentBoxOpacity))
          
          self.dpsBox.text:SetText(string.format(baseText, self.currentBoxOpacity*100))
          
          print('Total DPS:', self.currentDPS)
          print("# of players:", actorsFound) 
          
       else
          -- Not in comnbat, go dark
          print("Update Box Called NOT in combat")
          setBoxColorBlack(self.dpsBox)
          self.currentDPS = 0
          self.dpsBox.text:SetText("Rumble Pit v2 0 %")
          
       end
    end
    
 end
 
 
 newRumbleObj = RumblePit:new(50)
 
 yadur = C_Timer.NewTicker(1, function() newRumbleObj:updateBox() end, 0)
 ---yadur:Cancel()
 
 
 
 
 