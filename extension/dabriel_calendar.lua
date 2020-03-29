--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	CalendarManager.registerLunarDayHandler("dabriel", calcDabrielLunarDay);
	CalendarManager.registerMonthVarHandler("dabriel", calcDabrielMonthVar);
end

function calcDabrielLunarDay(nYear, nMonth, nDay)
	--[[
	local nZYear = nYear - 1;
	local nZYearDays = 501; -- nZYear * 365 + math.floor(nZYear / 4);
	local rDay = nDay + (nMonth-1)*30;
	if nMonth > 4 then
		rDay = rDay - 29;
	end
	if nMonth > 8 then
		rDay = rDay - 27;
		if (nYear % 4) == 0 then
			rDay = rDay + 1;
		end
	end
	rDay = (nZYearDays + rDay) % 7;
	if rDay == 0 then
		return 7;
	end
	--]]
	local rDay = (nDay % 9);
	if nMonth == 5 then
		rDay = (nDay % 6);
	end
	return rDay;
end

function calcDabrielMonthVar(nYear, nMonth)
	--[[
	if nMonth == 8 then
		local nYear = DB.getValue("calendar.current.year", 0);
		if (nYear % 4) == 0 then
			return 1;
		end
	end
	--]]

	return 0;
end
