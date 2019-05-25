function n64_drawUI()
	if forms.ischecked(InputForm.UI.form_controls["Controller Checkbox"]) then
		--gui.drawText(offset_x - (7 * button_size), offset_y + (2 * button_size), "P"..controllerView_value, 0xFFFFFFFF, 0x00FFFFFF, (2 * button_size), GenericSansSerif, "bold");
	end
	getControllerInput();
	-- A Button
	if press_a == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["A"][1] * button_size), offset_y + (selected_skin_table.main["A"][2] * button_size), offset_x + ((selected_skin_table.main["A"][1] + selected_skin_table.main["A"][3]) * button_size), offset_y + ((selected_skin_table.main["A"][2] + selected_skin_table.main["A"][4]) * button_size), selected_skin_table.main["A"][5], selected_skin_table.main["A"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["A"][1] * button_size), offset_y + (selected_skin_table.main["A"][2] * button_size), offset_x + ((selected_skin_table.main["A"][1] + selected_skin_table.main["A"][3]) * button_size), offset_y + ((selected_skin_table.main["A"][2] + selected_skin_table.main["A"][4]) * button_size), selected_skin_table.main["A"][6], selected_skin_table.main["A"][6]);
	end
				
	-- B Button
	if press_b == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["B"][1] * button_size), offset_y + (selected_skin_table.main["B"][2] * button_size), offset_x + ((selected_skin_table.main["B"][1] + selected_skin_table.main["B"][3]) * button_size), offset_y + ((selected_skin_table.main["B"][2] + selected_skin_table.main["B"][4]) * button_size), selected_skin_table.main["B"][5], selected_skin_table.main["B"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["B"][1] * button_size), offset_y + (selected_skin_table.main["B"][2] * button_size), offset_x + ((selected_skin_table.main["B"][1] + selected_skin_table.main["B"][3]) * button_size), offset_y + ((selected_skin_table.main["B"][2] + selected_skin_table.main["B"][4]) * button_size), selected_skin_table.main["B"][6], selected_skin_table.main["B"][6]);
	end
			
	-- C-Down Button
	if press_cd == 1 then
		gui.drawBox(offset_x + (selected_skin_table.c["D"][1] * button_size), offset_y + (selected_skin_table.c["D"][2] * button_size), offset_x + ((selected_skin_table.c["D"][1] + selected_skin_table.c["D"][3]) * button_size), offset_y + ((selected_skin_table.c["D"][2] + selected_skin_table.c["D"][4]) * button_size), selected_skin_table.c["D"][5], selected_skin_table.c["D"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.c["D"][1] * button_size), offset_y + (selected_skin_table.c["D"][2] * button_size), offset_x + ((selected_skin_table.c["D"][1] + selected_skin_table.c["D"][3]) * button_size), offset_y + ((selected_skin_table.c["D"][2] + selected_skin_table.c["D"][4]) * button_size), selected_skin_table.c["D"][6], selected_skin_table.c["D"][6]);
	end
			
	-- C-Left Button
	if press_cl == 1 then
		gui.drawBox(offset_x + (selected_skin_table.c["L"][1] * button_size), offset_y + (selected_skin_table.c["L"][2] * button_size), offset_x + ((selected_skin_table.c["L"][1] + selected_skin_table.c["L"][3]) * button_size), offset_y + ((selected_skin_table.c["L"][2] + selected_skin_table.c["L"][4]) * button_size), selected_skin_table.c["L"][5], selected_skin_table.c["L"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.c["L"][1] * button_size), offset_y + (selected_skin_table.c["L"][2] * button_size), offset_x + ((selected_skin_table.c["L"][1] + selected_skin_table.c["L"][3]) * button_size), offset_y + ((selected_skin_table.c["L"][2] + selected_skin_table.c["L"][4]) * button_size), selected_skin_table.c["L"][6], selected_skin_table.c["L"][6]);
	end
			
	-- C-Right Button
	if press_cr == 1 then
		gui.drawBox(offset_x + (selected_skin_table.c["R"][1] * button_size), offset_y + (selected_skin_table.c["R"][2] * button_size), offset_x + ((selected_skin_table.c["R"][1] + selected_skin_table.c["R"][3]) * button_size), offset_y + ((selected_skin_table.c["R"][2] + selected_skin_table.c["R"][4]) * button_size), selected_skin_table.c["R"][5], selected_skin_table.c["R"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.c["R"][1] * button_size), offset_y + (selected_skin_table.c["R"][2] * button_size), offset_x + ((selected_skin_table.c["R"][1] + selected_skin_table.c["R"][3]) * button_size), offset_y + ((selected_skin_table.c["R"][2] + selected_skin_table.c["R"][4]) * button_size), selected_skin_table.c["R"][6], selected_skin_table.c["R"][6]);
	end
				
	-- C-Up Button
	if press_cu == 1 then
		gui.drawBox(offset_x + (selected_skin_table.c["U"][1] * button_size), offset_y + (selected_skin_table.c["U"][2] * button_size), offset_x + ((selected_skin_table.c["U"][1] + selected_skin_table.c["U"][3]) * button_size), offset_y + ((selected_skin_table.c["U"][2] + selected_skin_table.c["U"][4]) * button_size), selected_skin_table.c["U"][5], selected_skin_table.c["U"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.c["U"][1] * button_size), offset_y + (selected_skin_table.c["U"][2] * button_size), offset_x + ((selected_skin_table.c["U"][1] + selected_skin_table.c["U"][3]) * button_size), offset_y + ((selected_skin_table.c["U"][2] + selected_skin_table.c["U"][4]) * button_size), selected_skin_table.c["U"][6], selected_skin_table.c["U"][6]);
	end
				
	-- Start Button
	if press_s == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["S"][1] * button_size), offset_y + (selected_skin_table.main["S"][2] * button_size), offset_x + ((selected_skin_table.main["S"][1] + selected_skin_table.main["S"][3]) * button_size), offset_y + ((selected_skin_table.main["S"][2] + selected_skin_table.main["S"][4]) * button_size), selected_skin_table.main["S"][5], selected_skin_table.main["S"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["S"][1] * button_size), offset_y + (selected_skin_table.main["S"][2] * button_size), offset_x + ((selected_skin_table.main["S"][1] + selected_skin_table.main["S"][3]) * button_size), offset_y + ((selected_skin_table.main["S"][2] + selected_skin_table.main["S"][4]) * button_size), selected_skin_table.main["S"][6], selected_skin_table.main["S"][6]);
	end
				
	-- D-Down Button
	if press_dd == 1 then
		gui.drawBox(offset_x + (selected_skin_table.d["D"][1] * button_size), offset_y + (selected_skin_table.d["D"][2] * button_size), offset_x + ((selected_skin_table.d["D"][1] + selected_skin_table.d["D"][3]) * button_size), offset_y + ((selected_skin_table.d["D"][2] + selected_skin_table.d["D"][4]) * button_size), selected_skin_table.d["D"][5], selected_skin_table.d["D"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.d["D"][1] * button_size), offset_y + (selected_skin_table.d["D"][2] * button_size), offset_x + ((selected_skin_table.d["D"][1] + selected_skin_table.d["D"][3]) * button_size), offset_y + ((selected_skin_table.d["D"][2] + selected_skin_table.d["D"][4]) * button_size), selected_skin_table.d["D"][6], selected_skin_table.d["D"][6]);
	end
			
	-- D-Up Button
	if press_du == 1 then
		gui.drawBox(offset_x + (selected_skin_table.d["U"][1] * button_size), offset_y + (selected_skin_table.d["U"][2] * button_size), offset_x + ((selected_skin_table.d["U"][1] + selected_skin_table.d["U"][3]) * button_size), offset_y + ((selected_skin_table.d["U"][2] + selected_skin_table.d["U"][4]) * button_size), selected_skin_table.d["U"][5], selected_skin_table.d["U"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.d["U"][1] * button_size), offset_y + (selected_skin_table.d["U"][2] * button_size), offset_x + ((selected_skin_table.d["U"][1] + selected_skin_table.d["U"][3]) * button_size), offset_y + ((selected_skin_table.d["U"][2] + selected_skin_table.d["U"][4]) * button_size), selected_skin_table.d["U"][6], selected_skin_table.d["U"][6]);
	end
			
	-- D-Left Button
	if press_dl == 1 then
		gui.drawBox(offset_x + (selected_skin_table.d["L"][1] * button_size), offset_y + (selected_skin_table.d["L"][2] * button_size), offset_x + ((selected_skin_table.d["L"][1] + selected_skin_table.d["L"][3]) * button_size), offset_y + ((selected_skin_table.d["L"][2] + selected_skin_table.d["L"][4]) * button_size), selected_skin_table.d["L"][5], selected_skin_table.d["L"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.d["L"][1] * button_size), offset_y + (selected_skin_table.d["L"][2] * button_size), offset_x + ((selected_skin_table.d["L"][1] + selected_skin_table.d["L"][3]) * button_size), offset_y + ((selected_skin_table.d["L"][2] + selected_skin_table.d["L"][4]) * button_size), selected_skin_table.d["L"][6], selected_skin_table.d["L"][6]);
	end
			
	-- D-Right Button
	if press_dr == 1 then
		gui.drawBox(offset_x + (selected_skin_table.d["R"][1] * button_size), offset_y + (selected_skin_table.d["R"][2] * button_size), offset_x + ((selected_skin_table.d["R"][1] + selected_skin_table.d["R"][3]) * button_size), offset_y + ((selected_skin_table.d["R"][2] + selected_skin_table.d["R"][4]) * button_size), selected_skin_table.d["R"][5], selected_skin_table.d["R"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.d["R"][1] * button_size), offset_y + (selected_skin_table.d["R"][2] * button_size), offset_x + ((selected_skin_table.d["R"][1] + selected_skin_table.d["R"][3]) * button_size), offset_y + ((selected_skin_table.d["R"][2] + selected_skin_table.d["R"][4]) * button_size), selected_skin_table.d["R"][6], selected_skin_table.d["R"][6]);
	end
			
	-- L Button
	if press_l == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["L"][1] * button_size), offset_y + (selected_skin_table.main["L"][2] * button_size), offset_x + ((selected_skin_table.main["L"][1] + selected_skin_table.main["L"][3]) * button_size), offset_y + ((selected_skin_table.main["L"][2] + selected_skin_table.main["L"][4]) * button_size), selected_skin_table.main["L"][5], selected_skin_table.main["L"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["L"][1] * button_size), offset_y + (selected_skin_table.main["L"][2] * button_size), offset_x + ((selected_skin_table.main["L"][1] + selected_skin_table.main["L"][3]) * button_size), offset_y + ((selected_skin_table.main["L"][2] + selected_skin_table.main["L"][4]) * button_size), selected_skin_table.main["L"][6], selected_skin_table.main["L"][6]);
	end
				
	-- R Button
	if press_r == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["R"][1] * button_size), offset_y + (selected_skin_table.main["R"][2] * button_size), offset_x + ((selected_skin_table.main["R"][1] + selected_skin_table.main["R"][3]) * button_size), offset_y + ((selected_skin_table.main["R"][2] + selected_skin_table.main["R"][4]) * button_size), selected_skin_table.main["R"][5], selected_skin_table.main["R"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["R"][1] * button_size), offset_y + (selected_skin_table.main["R"][2] * button_size), offset_x + ((selected_skin_table.main["R"][1] + selected_skin_table.main["R"][3]) * button_size), offset_y + ((selected_skin_table.main["R"][2] + selected_skin_table.main["R"][4]) * button_size), selected_skin_table.main["R"][6], selected_skin_table.main["R"][6]);
	end
				
	-- Z Button
	if press_z == 1 then
		gui.drawBox(offset_x + (selected_skin_table.main["Z"][1] * button_size), offset_y + (selected_skin_table.main["Z"][2] * button_size), offset_x + ((selected_skin_table.main["Z"][1] + selected_skin_table.main["Z"][3]) * button_size), offset_y + ((selected_skin_table.main["Z"][2] + selected_skin_table.main["Z"][4]) * button_size), selected_skin_table.main["Z"][5], selected_skin_table.main["Z"][5]);
	else
		gui.drawBox(offset_x + (selected_skin_table.main["Z"][1] * button_size), offset_y + (selected_skin_table.main["Z"][2] * button_size), offset_x + ((selected_skin_table.main["Z"][1] + selected_skin_table.main["Z"][3]) * button_size), offset_y + ((selected_skin_table.main["Z"][2] + selected_skin_table.main["Z"][4]) * button_size), selected_skin_table.main["Z"][6], selected_skin_table.main["Z"][6]);
	end
				
	-- Analogue Stick
	gui.drawLine(offset_x + (selected_skin_table.analogue["Primary"][1] * button_size), offset_y + (selected_skin_table.analogue["Primary"][2] * button_size), offset_x + (selected_skin_table.analogue["Primary"][1] * button_size) + ((ana_x / (64 * selected_skin_table.analogue["Primary"][3])) * button_size), offset_y + (selected_skin_table.analogue["Primary"][2] * button_size) - ((ana_y / (64 * selected_skin_table.analogue["Primary"][4])) * button_size), selected_skin_table.analogue["Primary"][5]);
	gui.drawBox(offset_x + ((selected_skin_table.analogue["Primary"][1] - 0.15) * button_size) + ((ana_x / (64 * selected_skin_table.analogue["Primary"][3])) * button_size), offset_y + ((selected_skin_table.analogue["Primary"][2] - 0.15) * button_size) - ((ana_y / (64 * selected_skin_table.analogue["Primary"][4])) * button_size), offset_x + ((selected_skin_table.analogue["Primary"][1] + 0.15) * button_size) + ((ana_x / (64 * selected_skin_table.analogue["Primary"][3])) * button_size), offset_y + ((selected_skin_table.analogue["Primary"][2] + 0.15) * button_size) - ((ana_y / (64 * selected_skin_table.analogue["Primary"][4])) * button_size), selected_skin_table.analogue["Primary"][6], selected_skin_table.analogue["Primary"][6]);
end