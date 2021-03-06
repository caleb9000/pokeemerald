Route130_MapScripts:: @ 81F735F
	map_script 3, Route130_MapScript1_1F7365
	.byte 0

Route130_MapScript1_1F7365: @ 81F7365
	compare VAR_0x405E, 4
	call_if 4, Route130_EventScript_1F73B5
	specialvar VAR_RESULT, IsMirageIslandPresent
	compare VAR_RESULT, 1
	goto_eq Route130_EventScript_1F73B1
	setflag FLAG_TEMP_11
	setflag FLAG_TEMP_12
	setflag FLAG_TEMP_13
	setflag FLAG_TEMP_14
	setflag FLAG_TEMP_15
	setflag FLAG_TEMP_16
	setflag FLAG_TEMP_17
	setflag FLAG_TEMP_18
	setflag FLAG_TEMP_19
	setflag FLAG_TEMP_1A
	setflag FLAG_TEMP_1B
	setflag FLAG_TEMP_1C
	setflag FLAG_TEMP_1D
	setflag FLAG_TEMP_1E
	setflag FLAG_TEMP_1F
	setmaplayoutindex 263
	end

Route130_EventScript_1F73B1:: @ 81F73B1
	setmaplayoutindex 46
	end

Route130_EventScript_1F73B5:: @ 81F73B5
	checkflag FLAG_SYS_WEATHER_CTRL
	call_if 1, Route130_EventScript_27207A
	return

Route130_EventScript_1F73BF:: @ 81F73BF
	trainerbattle 0, TRAINER_RODNEY, 0, Route130_Text_2A328A, Route130_Text_2A32E6
	msgbox Route130_Text_2A3300, 6
	end

Route130_EventScript_1F73D6:: @ 81F73D6
	trainerbattle 0, TRAINER_KATIE, 0, Route130_Text_2A3363, Route130_Text_2A33AC
	msgbox Route130_Text_2A33F5, 6
	end

Route130_EventScript_1F73ED:: @ 81F73ED
	trainerbattle 0, TRAINER_SANTIAGO, 0, Route130_Text_2A343A, Route130_Text_2A346D
	msgbox Route130_Text_2A3494, 6
	end

