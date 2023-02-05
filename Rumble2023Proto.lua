RumblePit = { }

function RumblePit:createRedBox()
   local RedBox = CreateFrame("Frame", nil, UIParent)
   RedBox:SetSize(250, 250)
   RedBox:SetPoint("CENTER", 550, -200)
   RedBox.texture = RedBox:CreateTexture(nil, "BACKGROUND")
   RedBox.texture:SetAllPoints(true)
   --RedBox.texture:SetTexture(1.0, 0.0, 0.0, 0.5)
   RedBox.texture:SetColorTexture(1.0, 1.0, 1.0, 1)
   
   return RedBox
end

function RumblePit:setBoxColorRed(a,b)
   
   a.texture:SetColorTexture(b, 0.0, 0.0, 1)
   return 
end

function RumblePit:setBoxColorBlack(a)
   
   a.texture:SetColorTexture(0.0, 0.0, 0.0, 1)
   return 
end

function RumbleUpdate()
   print("Update Called")
   --print(UnitAffectingCombat("Dpsfool"))
   if (UnitAffectingCombat("Dpsfool") == true) then
      local combat = Details:GetCurrentCombat()
      local damageContainer = combat:GetContainer (DETAILS_ATTRIBUTE_DAMAGE)
      
      local actorsFound = 0
      local totalDps = 0;
      for i, actor in damageContainer:ListActors() do
         if(actor:IsGroupPlayer()) then
            actorsFound = actorsFound + 1
            local totalDamage = actor.total
            print('Total dmg: ', totalDamage)
            local playerDps = totalDamage / combat:GetCombatTime()
            totalDps = totalDps + playerDps 
            print('DPS: ',playerDps)
            
            
         end
      end
      RumblePit:setBoxColorRed(newBox,totalDps*0.1)
      print('Total DPS:', totalDps)
      print("# of players:", actorsFound) 
   end
   
end

local f = CreateFrame("Frame");



function f:onUpdate(sinceLastUpdate)
   self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate;
   if ( self.sinceLastUpdate >= 1 ) then -- in seconds
      --RumblePit:HelloWorld()
      --print('it worked')
      RumbleUpdate()
      self.sinceLastUpdate = 0;
   end
end

f:SetScript("OnUpdate", function(self, sinceLastUpdate) f:onUpdate(sinceLastUpdate); end);

newBox=RumblePit:createRedBox()
RumblePit:setBoxColorBlack(newBox)