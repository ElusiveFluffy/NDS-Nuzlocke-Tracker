-- NDS Nuzlocke Tracker
-- Created by OnlySpaghettiCode, largely based on the Ironmon Tracker by besteon and other contributors
IronmonTracker = {}
function IronmonTracker.startTracker()
	local Main = dofile("nuzlocke_tracker/Main.lua")
	gui.clearImageCache()
	collectgarbage()
	local main = Main()
	main.run()
end

IronmonTracker.startTracker()