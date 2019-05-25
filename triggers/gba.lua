function gba_detectInput()
	moviemode = movie.mode();
	frame = emu.framecount();
	if moviemode == "PLAY" then
		input_array = movie.getinput(frame);
		Buttons = {
			["A"] = "P"..controllerView_value.." A",
			["B"] = "P"..controllerView_value.." B",
			["DU"] = "P"..controllerView_value.." Up",
			["DD"] = "P"..controllerView_value.." Down",
			["DL"] = "P"..controllerView_value.." Left",
			["DR"] = "P"..controllerView_value.." Right",
			["L"] = "P"..controllerView_value.." L",
			["R"] = "P"..controllerView_value.." R",
			["START"] = "P"..controllerView_value.." Start",
			["SELECT"] = "P"..controllerView_value.." Select",
		};
	else
		input_array = joypad.get();
		Buttons = {
			["A"] = "A",
			["B"] = "B",
			["DU"] = "Up",
			["DD"] = "Down",
			["DL"] = "Left",
			["DR"] = "Right",
			["L"] = "L",
			["R"] = "R",
			["START"] = "Start",
			["SELECT"] = "Select",
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
		
	if input_array[Buttons.START] then
		press_st = 1;
	else
		press_st = 0;
	end
	
	if input_array[Buttons.SELECT] then
		press_se = 1;
	else
		press_se = 0;
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
end