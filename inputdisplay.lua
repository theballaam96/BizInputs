offset_x = 700;
offset_y = 90;
button_size = 16;
controllerView_value = 1;
		
-- Input
function getControllerInput()
	
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
end
		
function drawUI()
	if forms.ischecked(InputForm.UI.form_controls["Controller Checkbox"]) then
		gui.drawText(offset_x - (7 * button_size), offset_y + (2 * button_size), "P"..controllerView_value, 0xFFFFFFFF, 0x00FFFFFF, (2 * button_size), GenericSansSerif, "bold");
	end
	getControllerInput();
	-- A Button
	if press_a == 1 then
		gui.drawBox(offset_x + button_size, offset_y + button_size, offset_x + (2 * button_size), offset_y + (2 * button_size), 0xFF007FFF, 0xFF007FFF);
	else
		gui.drawBox(offset_x + button_size, offset_y + button_size, offset_x + (2 * button_size), offset_y + (2 * button_size), 0xFF002851, 0xFF002851);
	end
				
	-- B Button
	if press_b == 1 then
		gui.drawBox(offset_x, offset_y, offset_x + button_size, offset_y + button_size, 0xFF088E00, 0xFF088E00);
	else
		gui.drawBox(offset_x, offset_y, offset_x + button_size, offset_y + button_size, 0xFF033300, 0xFF033300);
	end
			
	-- C-Down Button
	if press_cd == 1 then
		gui.drawBox(offset_x + (2 * button_size), offset_y, offset_x + (3 * button_size), offset_y + button_size, 0xFFE5A300, 0xFFE5A300);
	else
		gui.drawBox(offset_x + (2 * button_size), offset_y, offset_x + (3 * button_size), offset_y + button_size, 0xFF996D00, 0xFF996D00);
	end
			
	-- C-Left Button
	if press_cl == 1 then
		gui.drawBox(offset_x + button_size, offset_y - button_size, offset_x + (2 * button_size), offset_y, 0xFFE5A300, 0xFFE5A300);
	else
		gui.drawBox(offset_x + button_size, offset_y - button_size, offset_x + (2 * button_size), offset_y, 0xFF996D00, 0xFF996D00);
	end
			
	-- C-Right Button
	if press_cr == 1 then
		gui.drawBox(offset_x + (3 * button_size), offset_y - button_size, offset_x + (4 * button_size), offset_y, 0xFFE5A300, 0xFFE5A300);
	else
		gui.drawBox(offset_x + (3 * button_size), offset_y - button_size, offset_x + (4 * button_size), offset_y, 0xFF996D00, 0xFF996D00);
	end
				
	-- C-Up Button
	if press_cu == 1 then
		gui.drawBox(offset_x + (2 * button_size), offset_y - (2 * button_size), offset_x + (3 * button_size), offset_y - button_size, 0xFFE5A300, 0xFFE5A300);
	else
		gui.drawBox(offset_x + (2 * button_size), offset_y - (2 * button_size), offset_x + (3 * button_size), offset_y - button_size, 0xFF996D00, 0xFF996D00);
	end
				
	-- Start Button
	if press_s == 1 then
		gui.drawBox(offset_x - (2 * button_size), offset_y, offset_x - button_size, offset_y + button_size, 0xFFDB0000, 0xFFDB0000);
	else
		gui.drawBox(offset_x - (2 * button_size), offset_y, offset_x - button_size, offset_y + button_size, 0xFF840000, 0xFF840000);
	end
				
	-- D-Down Button
	if press_dd == 1 then
		gui.drawBox(offset_x - (6 * button_size), offset_y, offset_x - (5 * button_size), offset_y + button_size, 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (6 * button_size), offset_y, offset_x - (5 * button_size), offset_y + button_size, 0xFF565151, 0xFF565151);
	end
			
	-- D-Up Button
	if press_du == 1 then
		gui.drawBox(offset_x - (6 * button_size), offset_y - (2 * button_size), offset_x - (5 * button_size), offset_y - button_size, 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (6 * button_size), offset_y - (2 * button_size), offset_x - (5 * button_size), offset_y - button_size, 0xFF565151, 0xFF565151);
	end
			
	-- D-Left Button
	if press_dl == 1 then
		gui.drawBox(offset_x - (7 * button_size), offset_y - button_size, offset_x - (6 * button_size), offset_y, 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (7 * button_size), offset_y - button_size, offset_x - (6 * button_size), offset_y, 0xFF565151, 0xFF565151);
	end
			
	-- D-Right Button
	if press_dr == 1 then
		gui.drawBox(offset_x - (5 * button_size), offset_y - button_size, offset_x - (4 * button_size), offset_y, 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (5 * button_size), offset_y - button_size, offset_x - (4 * button_size), offset_y, 0xFF565151, 0xFF565151);
	end
			
	-- L Button
	if press_l == 1 then
		gui.drawBox(offset_x - (7 * button_size), offset_y - (3.5 * button_size), offset_x - (4 * button_size), offset_y - (3 * button_size), 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (7 * button_size), offset_y - (3.5 * button_size), offset_x - (4 * button_size), offset_y - (3 * button_size), 0xFF565151, 0xFF565151);
	end
				
	-- R Button
	if press_r == 1 then
		gui.drawBox(offset_x + button_size, offset_y - (3.5 * button_size), offset_x + (4 * button_size), offset_y - (3 * button_size), 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x + button_size, offset_y - (3.5 * button_size), offset_x + (4 * button_size), offset_y - (3 * button_size), 0xFF565151, 0xFF565151);
	end
				
	-- Z Button
	if press_z == 1 then
		gui.drawBox(offset_x - (2 * button_size), offset_y - (3 * button_size), offset_x - button_size, offset_y - button_size, 0xFF7B7474, 0xFF7B7474);
	else
		gui.drawBox(offset_x - (2 * button_size), offset_y - (3 * button_size), offset_x - button_size, offset_y - button_size, 0xFF565151, 0xFF565151);
	end
				
	-- Analogue Stick
	gui.drawLine(offset_x - (1.5 * button_size), offset_y + (3 * button_size), offset_x - (1.5 * button_size) + ((ana_x / 128) * button_size), offset_y + (3 * button_size) - ((ana_y / 128) * button_size), 0xFF007FFF);
	gui.drawBox(offset_x - (1.65 * button_size) + ((ana_x / 128) * button_size), offset_y + (2.85 * button_size) - ((ana_y / 128) * button_size), offset_x - (1.35 * button_size) + ((ana_x / 128) * button_size), offset_y + (3.15 * button_size) - ((ana_y / 128) * button_size), 0xFFDB0000, 0xFFDB0000);
end

local function eachFrame()
	drawUI();
end

event.onframestart(eachFrame, "");
event.onloadstate(eachFrame, "");

Stats = require "lib.Stats";
lips = require "lips.init";

-- Pop-Up Dialog

InputForm = {
	warnings = false, -- Useful for debugging but annoying for end users, so default to false
	smooth_moving_angle = true,
	UI = {
		form_controls = {},
		form_padding = 8,
		form_width = 15,
		form_height = 15,
		label_offset = 5,
		dropdown_offset = 1,
		long_label_width = 140,
		button_height = 23,
	},
	bufferWidth = client.bufferwidth(),
	bufferHeight = client.bufferheight(),
};

function round(num, idp)
	return tonumber(string.format("%." .. (idp or 0) .. "f", num));
end

function DefaultSettings()
	inputdisplay_x = 70;
	inputdisplay_y = 10;
	inputdisplay_scale = 4;
	refreshCalculations();
end

function calcOffsetX()
	offset_x = 10 * inputdisplay_x;
end

function calcOffsetY()
	offset_y = 10 * inputdisplay_y;
end

function calcButtonSize()
	button_size = 4 * inputdisplay_scale;
end

function refreshCalculations()
	calcOffsetX();
	calcOffsetY();
	calcButtonSize();
end


DefaultSettings();

function increaseX()
	inputdisplay_x = inputdisplay_x + 1;
	refreshCalculations();
end

function decreaseX()
	inputdisplay_x = inputdisplay_x - 1;
	refreshCalculations();
end

function increaseY()
	inputdisplay_y = inputdisplay_y + 1;
	refreshCalculations();
end

function decreaseY()
	inputdisplay_y = inputdisplay_y - 1;
	refreshCalculations();
end

function increaseScale()
	inputdisplay_scale = inputdisplay_scale + 1;
	refreshCalculations();
end

function decreaseScale()
	if inputdisplay_scale > 1 then
		inputdisplay_scale = inputdisplay_scale - 1;
	end
	refreshCalculations();
end

function InputForm.UI.row(row_num)
	return round(InputForm.UI.form_padding + InputForm.UI.button_height * row_num, 0);
end

function InputForm.UI.col(col_num)
	return InputForm.UI.row(col_num);
end

if type(form_width) == "number" then
	InputForm.UI.form_height = form_width;
end
if type(form_height) == "number" then
	InputForm.UI.form_height = form_height;
end	

InputForm.UI.options_form = forms.newform(InputForm.UI.col(InputForm.UI.form_width), InputForm.UI.row(InputForm.UI.form_height), "Input Form");

function InputForm.UI.checkbox(col, row, tag, caption, default)
	InputForm.UI.form_controls[tag] = forms.checkbox(InputForm.UI.options_form, caption, InputForm.UI.col(col) + InputForm.UI.dropdown_offset, InputForm.UI.row(row) + InputForm.UI.dropdown_offset);
	forms.setproperty(InputForm.UI.form_controls[tag], "Height", 22);
	if default then
		forms.setproperty(InputForm.UI.form_controls[tag], "Checked", true);
	end
end

controllersDropdown = {
	"Player 1",
	"Player 2",
	"Player 3",
	"Player 4"
};

-- Display Modifier
InputForm.UI.form_controls["X Label"] = forms.label(InputForm.UI.options_form, "Input Display X:", InputForm.UI.col(0), InputForm.UI.row(0) + InputForm.UI.label_offset, 110, 24);
InputForm.UI.form_controls["Decrease X Button"] = forms.button(InputForm.UI.options_form, "-", decreaseX, InputForm.UI.col(7) - 28, InputForm.UI.row(0), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["Increase X Button"] = forms.button(InputForm.UI.options_form, "+", increaseX, InputForm.UI.col(8) - 28, InputForm.UI.row(0), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["X Value Label"] = forms.label(InputForm.UI.options_form, inputdisplay_x, InputForm.UI.col(8), InputForm.UI.row(0) + InputForm.UI.label_offset, 44, 14);

InputForm.UI.form_controls["Y Label"] = forms.label(InputForm.UI.options_form, "Input Display Y:", InputForm.UI.col(0), InputForm.UI.row(1) + InputForm.UI.label_offset, 110, 24);
InputForm.UI.form_controls["Decrease Y Button"] = forms.button(InputForm.UI.options_form, "-", decreaseY, InputForm.UI.col(7) - 28, InputForm.UI.row(1), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["Increase Y Button"] = forms.button(InputForm.UI.options_form, "+", increaseY, InputForm.UI.col(8) - 28, InputForm.UI.row(1), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["Y Value Label"] = forms.label(InputForm.UI.options_form, inputdisplay_y, InputForm.UI.col(8), InputForm.UI.row(1) + InputForm.UI.label_offset, 44, 14);

InputForm.UI.form_controls["Scale Label"] = forms.label(InputForm.UI.options_form, "Input Display Scale:", InputForm.UI.col(0), InputForm.UI.row(2) + InputForm.UI.label_offset, 134, 24);
InputForm.UI.form_controls["Decrease Scale Button"] = forms.button(InputForm.UI.options_form, "-", decreaseScale, InputForm.UI.col(7) - 28, InputForm.UI.row(2), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["Increase Scale Button"] = forms.button(InputForm.UI.options_form, "+", increaseScale, InputForm.UI.col(8) - 28, InputForm.UI.row(2), InputForm.UI.button_height, InputForm.UI.button_height);
InputForm.UI.form_controls["Scale Value Label"] = forms.label(InputForm.UI.options_form, inputdisplay_scale, InputForm.UI.col(8), InputForm.UI.row(2) + InputForm.UI.label_offset, 44, 14);

-- Return to Default Settings
InputForm.UI.form_controls["Reset to Default Button"] = forms.button(InputForm.UI.options_form, "Reset to Default", DefaultSettings, InputForm.UI.col(0), InputForm.UI.row(4), InputForm.UI.col(5), InputForm.UI.button_height);

-- Controller View
InputForm.UI.form_controls["Controller Label"] = forms.label(InputForm.UI.options_form, "Controller:", InputForm.UI.col(0), InputForm.UI.row(5) + InputForm.UI.label_offset, 72, 24);
InputForm.UI.form_controls["Controller Dropdown"] = forms.dropdown(InputForm.UI.options_form, controllersDropdown, InputForm.UI.col(3) + 2 + InputForm.UI.dropdown_offset, InputForm.UI.row(5) + InputForm.UI.dropdown_offset, InputForm.UI.col(4), InputForm.UI.button_height);
InputForm.UI.form_controls["Controller Checkbox"] = forms.checkbox(InputForm.UI.options_form, "Display Controller Number", InputForm.UI.col(0) + InputForm.UI.dropdown_offset, InputForm.UI.row(6) + 10 + InputForm.UI.dropdown_offset);

forms.setproperty(InputForm.UI.form_controls["Controller Checkbox"], "Checked", true);

function InputForm.UI.findControllerValue()
	for i = 1, #controllersDropdown do
		if controllersDropdown[i] == controllerView then
			return i;
		end
	end
	return 0;
end

function InputForm.UI.updateReadouts()
	forms.settext(InputForm.UI.form_controls["X Value Label"], inputdisplay_x);
	forms.settext(InputForm.UI.form_controls["Y Value Label"], inputdisplay_y);
	forms.settext(InputForm.UI.form_controls["Scale Value Label"], inputdisplay_scale);
	
	if controllerView ~= forms.gettext(InputForm.UI.form_controls["Controller Dropdown"]) then
		controllerView = forms.gettext(InputForm.UI.form_controls["Controller Dropdown"]);
		controllerView_value = InputForm.UI.findControllerValue();
	end
end

while true do
	InputForm.UI.updateReadouts();
	emu.yield();
	emu.frameadvance();
end