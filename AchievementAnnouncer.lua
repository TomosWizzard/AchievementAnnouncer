local function OnEvent(self, event, ...)
	local achievementID, alreadyEarned = ...
	local achiev = GetAchievementLink(achievementID) 
	local printString = ("has earned the achievement " .. achiev .. "!")
	SendChatMessage(printString, "GUILD")
end

local f = CreateFrame("Frame")
f:RegisterEvent("ACHIEVEMENT_EARNED")
f:SetScript("OnEvent", OnEvent)