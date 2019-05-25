button_size = 16;
controllerView_value = 1;

selected_skin = "Default";

function getgameConsole()
	gameConsole = emu.getsystemid();
end

getgameConsole();

-- Input
function getControllerInput()
	if gameConsole == "N64" then
		require "triggers.n64"
		n64_detectInput();
	elseif gameConsole == "GBA" then
		require "triggers.gba"
		gba_detectInput();
	end
end

function copySkinToTable()
	selected_skin_table = {};
	if gameConsole == "N64" then
		require "skins.n64"
		if n64_skins.skins[selected_skin] ~= nil then
			selected_skin_table = n64_skins.skins[selected_skin];
		end
	elseif gameConsole == "GBA" then
		require "skins.gba"
		if gba_skins.skins[selected_skin] ~= nil then
			selected_skin_table = gba_skins.skins[selected_skin];
		end
	end
end

function getListOfSkins()
	list_of_skins = {};
	if gameConsole == "N64" then
		require "skins.n64"
		print(n64_skins.skins)
	elseif gameConsole == "GBA" then
		require "skins.gba"
		print(gba_skins.skins)
	end
end

function getInputViewerPresets()
	if gameConsole == "N64" then
		offset_x = 700;
		offset_y = 90;
		size = 4;
	elseif gameConsole == "GBA" then
		offset_x = 185;
		offset_y = 35;
		size = 1;
	end
end

getInputViewerPresets();
		
function drawUI()
	if selected_skin_table == nil then
		copySkinToTable();
	else
		getControllerInput();
		if gameConsole == "N64" then
			require "ui.n64"
			require "skins.n64"
			require "triggers.n64"
			
			n64_drawUI();
		elseif gameConsole == "GBA" then
			require "ui.gba"
			require "skins.gba"
			require "triggers.gba"
			gba_drawUI();
		end
	end
end

function eachFrame()
	drawUI();
end

eachFrame();

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
	inputdisplay_x = 60;
	inputdisplay_y = 15;
	inputdisplay_scale = size;
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