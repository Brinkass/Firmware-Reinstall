Graphics.initBlend()
Screen.clear()
Graphics.debugPrint(400, 30, "FW 3.60 Reinstaller", Color.new(255,255,255))
Graphics.debugPrint(30, 410, "By SilicaAndPina", Color.new(255,255,255))
Graphics.debugPrint(25, 460, "So many thanks to :", Color.new(255,255,255))
Graphics.debugPrint(25, 490, "CelesteBlue, Molecule team", Color.new(255,255,255))
Graphics.debugPrint(300, 200, "Press X to begin FW 3.60 reinstallation.", Color.new(255,255,255))
Graphics.termBlend()
Screen.flip()
a = true
while a do
	if Controls.check(Controls.read(), SCE_CTRL_CROSS) then
		Graphics.initBlend()
		Screen.clear()
		Graphics.debugPrint(400, 30, "FW 3.60 Reinstaller", Color.new(255,255,255))
		Graphics.debugPrint(30, 410, "By SilicaAndPina", Color.new(255,255,255))
		Graphics.debugPrint(25, 460, "So many thanks to :", Color.new(255,255,255))
		Graphics.debugPrint(25, 490, "CelesteBlue, Molecule team", Color.new(255,255,255))
		Graphics.debugPrint(340, 200, "Extracting files. Please be patient.", Color.new(255,255,255))
		Graphics.termBlend()
		Screen.flip()
		System.extractZIP("app0:updater_files.zip","ux0:/data/")
		System.executeUri("settings_dlg:updater::via_mc")
		a = false
	end
end
System.exit()