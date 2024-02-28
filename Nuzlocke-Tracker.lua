-- NDS Nuzlocke Tracker
-- Created by OnlySpaghettiCode, largely based on the Ironmon Tracker by besteon and other contributors
NuzlockeTracker = {}
function NuzlockeTracker.startTracker()
	local Main = dofile("nuzlocke_tracker/Main.lua")
	gui.clearImageCache()
	collectgarbage()
	local main = Main()
	main.run()
end

NuzlockeTracker.startTracker()