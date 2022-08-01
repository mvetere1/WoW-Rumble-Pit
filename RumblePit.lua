function RumbleUpdate()
   if (UnitAffectingCombat("insanobank") == true) then
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
f:SetScript("OnUpdate", function(self, sinceLastUpdate) f:onUpdate(sinceLastUpdate); end);


function f:onUpdate(sinceLastUpdate)
   self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate;
   if ( self.sinceLastUpdate >= 1 ) then -- in seconds
      --RumblePit:HelloWorld()
      --print('it worked')
      RumbleUpdate()
      self.sinceLastUpdate = 0;
   end
end
