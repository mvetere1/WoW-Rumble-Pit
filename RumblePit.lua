RumblePit = { }

function RumblePit:HelloWorld()
    message('Hello ' ..UnitName("player")..' '..UnitLevel("player") )
end

function RumblePit:HideGryphons()
    MainMenuBarLeftEndCap:Hide()
    MainMenuBarRightEndCap:Hide()
end

function RumblePit:counter(a, b, c)
	
	local answer = a * b + c
	
	
	
	print(answer)
	return answer
end

function RumblePit:getDmg()
	
local damageActor = Details:GetActor ("current", DETAILS_ATTRIBUTE_DAMAGE, Details.playername)
local healingActor = Details:GetActor ("current", DETAILS_ATTRIBUTE_HEAL, Details.playername)

local totalDamage, totalHeal = damageActor.total, healingActor.total

local effectiveDps, effectiveHps = totalDamage / combat:GetCombatTime(), totalHeal / combat:GetCombatTime()
local activeDps, activeHps = totalDamage / damageActor:Tempo(), totalHeal / healingActor:Tempo()
print(totalDamage)

end

function RumblePit:createBox()
--MyFrame = CreateFrame("Frame")
MyFrame:ClearAllPoints()
MyFrame:SetBackdrop(StaticPopup1:GetBackdrop())
MyFrame:SetHeight(200)
MyFrame:SetWidth(200)


MyFrame.text = MyFrame:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
MyFrame.text:SetAllPoints()
MyFrame.text:SetText("Insert BP Here")
MyFrame:SetPoint("CENTER", 500, 0)


end
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

--local currentCombat = Details:GetCurrentCombat() --may be useful for getting current combat
local returnValue = RumblePit:counter(4,3,5)
print(returnValue)
--RumblePit:RumblePit()
--RumblePit:createBox()
newBox=RumblePit:createRedBox()
RumblePit:setBoxColorBlack(newBox)
