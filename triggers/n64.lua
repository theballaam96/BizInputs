function n64_detectInput()
	moviemode = movie.mode();
	frame = emu.framecount();
	if moviemode == "PLAY" then
		input_array = movie.getinput(frame);
		Buttons = {
			["A"] = "P"..controllerView_value.." A",
			["B"] = "P"..controllerView_value.." B",
			["CU"] = "P"..controllerView_value.." C Up",
			["CD"] = "P"..controllerView_value.." C Down",
			["CL"] = "P"..controllerView_value.." C Left",
			["CR"] = "P"..controllerView_value.." C Right",
			["DU"] = "P"..controllerView_value.." DPad U",
			["DD"] = "P"..controllerView_value.." DPad D",
			["DL"] = "P"..controllerView_value.." DPad L",
			["DR"] = "P"..controllerView_value.." DPad R",
			["L"] = "P"..controllerView_value.." L",
			["R"] = "P"..controllerView_value.." R",
			["S"] = "P"..controllerView_value.." Start",
			["X"] = "P"..controllerView_value.." X Axis",
			["Y"] = "P"..controllerView_value.." Y Axis",
			["Z"] = "P"..controllerView_value.." Z",
			["AU"] = "P"..controllerView_value.." A Up",
			["AD"] = "P"..controllerView_value.." A Down",
			["AL"] = "P"..controllerView_value.." A Left",
			["AR"] = "P"..controllerView_value.." A Right",
		};
	else
		input_array = joypad.get(controllerView_value);
		Buttons = {
			["A"] = "A",
			["B"] = "B",
			["CU"] = "C Up",
			["CD"] = "C Down",
			["CL"] = "C Left",
			["CR"] = "C Right",
			["DU"] = "DPad U",
			["DD"] = "DPad D",
			["DL"] = "DPad L",
			["DR"] = "DPad R",
			["L"] = "L",
			["R"] = "R",
			["S"] = "Start",
			["X"] = "X Axis",
			["Y"] = "Y Axis",
			["Z"] = "Z",
			["AU"] = "A Up",
			["AD"] = "A Down",
			["AL"] = "A Left",
			["AR"] = "A Right",
		};
	end
	
	if input_array[Buttons.A] then
		press_a = 1;
	else
		press_a = 0;
	end
		
	if input_array[Buttons.B] then
		press_b = 1;
	else
		press_b = 0;
	end
	
	if input_array[Buttons.CD] then
		press_cd = 1;
	else
		press_cd = 0;
	end
	
	if input_array[Buttons.CL] then
		press_cl = 1;
	else
		press_cl = 0;
	end
		
	if input_array[Buttons.CR] then
		press_cr = 1;
	else
		press_cr = 0;
	end
	
	if input_array[Buttons.CU] then
		press_cu = 1;
	else
		press_cu = 0;
	end
		
	if input_array[Buttons.S] then
		press_s = 1;
	else
		press_s = 0;
	end
		
	if input_array[Buttons.DD] then
		press_dd = 1;
	else
		press_dd = 0;
	end
		
	if input_array[Buttons.DL] then
		press_dl = 1;
	else
		press_dl = 0;
	end
		
	if input_array[Buttons.DU] then
		press_du = 1;
	else
		press_du = 0;
	end
		
	if input_array[Buttons.DR] then
		press_dr = 1;
	else
		press_dr = 0;
	end
		
	if input_array[Buttons.L] then
		press_l = 1;
	else
		press_l = 0;
	end
		
	if input_array[Buttons.R] then
		press_r = 1;
	else
		press_r = 0;
	end
		
	if input_array[Buttons.Z] then
		press_z = 1;
	else
		press_z = 0;
	end
		
	if input_array[Buttons.X] ~= nil then
		ana_x = input_array[Buttons.X];
	else
		ana_x = 0;
	end
	
	if input_array[Buttons.Y] ~= nil then
		ana_y = input_array[Buttons.Y];
	else
		ana_y = 0;
	end
	
	--if we have the analog buttons, use those to override ana_x and ana_y
	if input_array[Buttons.AR] then
		ana_x = 127;
	end
	if input_array[Buttons.AL] then
		ana_x = -128;
	end
	if input_array[Buttons.AU] then
		ana_y = 128;
	end
	if input_array[Buttons.AD] then
		ana_y = -127;
	end
end