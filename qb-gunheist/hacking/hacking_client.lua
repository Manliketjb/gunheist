local scaleform = nil
local ClickReturn 
local lives = 5 --7 Lives in GTA Online
local gamePassword = "GIVEMEGUNS" --You could make a table with passwords and assign them as passwords in random order.

local hacking = false
local weWON = false

function StartHacking()
	weWON = false

	local function Initialize(scaleform)
		local scaleform = RequestScaleformMovieInteractive(scaleform)
		while not HasScaleformMovieLoaded(scaleform) do
			Citizen.Wait(0)
		end

		PushScaleformMovieFunction(scaleform, "SET_LABELS") --this allows us to label every item inside My Computer
		PushScaleformMovieFunctionParameterString("Local Disk (C:)")
		PushScaleformMovieFunctionParameterString("Network")
		PushScaleformMovieFunctionParameterString("External Device (J:)")
		PushScaleformMovieFunctionParameterString("HackConnect.exe")
		PushScaleformMovieFunctionParameterString("BruteForce.exe")
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_BACKGROUND") --We can set the background of the scaleform, so far 0-6 works.
		PushScaleformMovieFunctionParameterInt(0)
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "ADD_PROGRAM") --We add My Computer application to the scaleform
		PushScaleformMovieFunctionParameterFloat(1.0) -- Position in the scaleform most left corner
		PushScaleformMovieFunctionParameterFloat(4.0)
		PushScaleformMovieFunctionParameterString("My Computer")
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "ADD_PROGRAM") --We Power off app so we can exit the scaleform
		PushScaleformMovieFunctionParameterFloat(6.0) -- Position in the scaleform most right corner
		PushScaleformMovieFunctionParameterFloat(6.0)
		PushScaleformMovieFunctionParameterString("Power Off")
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED") --BruteForce.exe Column Speed, the higher the speed, harder it gets(kinda 255 seems to be max).
		PushScaleformMovieFunctionParameterInt(0)
		PushScaleformMovieFunctionParameterInt(math.random(150,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(1)
		PushScaleformMovieFunctionParameterInt(math.random(160,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(2)
		PushScaleformMovieFunctionParameterInt(math.random(170,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(3)
		PushScaleformMovieFunctionParameterInt(math.random(190,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(4)
		PushScaleformMovieFunctionParameterInt(math.random(200,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(5)
		PushScaleformMovieFunctionParameterInt(math.random(210,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(6)
		PushScaleformMovieFunctionParameterInt(math.random(220,255))
		PopScaleformMovieFunctionVoid()

		PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
		PushScaleformMovieFunctionParameterInt(7)
		PushScaleformMovieFunctionParameterInt(255)
		PopScaleformMovieFunctionVoid()

		return scaleform
	end

	lives = 5
	scaleform = Initialize("HACKING_PC") -- THE SCALEFORM WE ARE USING: https://scaleform.devtesting.pizza/#HACKING_PC

	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(0)
	end

	hacking = true

	TriggerEvent('cosmo_hud:displayHud', false)

	while hacking do
		DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
		PushScaleformMovieFunction(scaleform, "SET_CURSOR") --We use this scaleform function to define what input is going to move the cursor
		PushScaleformMovieFunctionParameterFloat(GetControlNormal(0, 239)) 
		PushScaleformMovieFunctionParameterFloat(GetControlNormal(0, 240))
		PopScaleformMovieFunctionVoid()
		if IsDisabledControlJustPressed(0,24) then -- IF LEFT CLICK IS PRESSED WE SELECT SOMETHING IN THE SCALEFORM
			PushScaleformMovieFunction(scaleform, "SET_INPUT_EVENT_SELECT")
			ClickReturn = PopScaleformMovieFunction()
			PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
		elseif IsDisabledControlJustPressed(0, 25) then -- IF RIGHT CLICK IS PRESSED WE GO BACK.
			PushScaleformMovieFunction(scaleform, "SET_INPUT_EVENT_BACK")
			PopScaleformMovieFunctionVoid()
			PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
		end

		Citizen.Wait(0)
	end

	return weWON
end

Citizen.CreateThread(function()
	while true do
		if HasScaleformMovieLoaded(scaleform) then
			DisableControlAction(0, 24, true) --LEFT CLICK disabled while in scaleform
			DisableControlAction(0, 25, true) --RIGHT CLICK disabled while in scaleform
		else
			Citizen.Wait(250)
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		if HasScaleformMovieLoaded(scaleform) then
			FreezeEntityPosition(PlayerPedId(), true) --If the user is in scaleform we should freeze him to prevent movement.

			if GetScaleformMovieFunctionReturnBool(ClickReturn) then -- old native?
				ProgramID = GetScaleformMovieFunctionReturnInt(ClickReturn)

				if ProgramID == 82 then --HACKCONNECT.EXE (ITS SCALEFORM FUNCTIONS DOESNT SEEM TO WORK SO WE KEEP IT DISABLED)
					PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)

				elseif ProgramID == 83 then  --BRUTEFORCE.EXE
					PushScaleformMovieFunction(scaleform, "RUN_PROGRAM")
					PushScaleformMovieFunctionParameterFloat(83.0)
					PopScaleformMovieFunctionVoid()

					PushScaleformMovieFunction(scaleform, "SET_ROULETTE_WORD")
					PushScaleformMovieFunctionParameterString(gamePassword)
					PopScaleformMovieFunctionVoid()

				elseif ProgramID == 87 then --IF YOU CLICK THE WRONG LETTER IN BRUTEFORCE APP
					lives = lives - 1

					PushScaleformMovieFunction(scaleform, "SET_ROULETTE_WORD")
					PushScaleformMovieFunctionParameterString(gamePassword)
					PopScaleformMovieFunctionVoid()

					PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)
					PushScaleformMovieFunction(scaleform, "SET_LIVES")
					PushScaleformMovieFunctionParameterInt(lives) --We set how many lives our user has before he fails the bruteforce.
					PushScaleformMovieFunctionParameterInt(5)
					PopScaleformMovieFunctionVoid()

				elseif ProgramID == 92 then --IF YOU CLICK THE RIGHT LETTER IN BRUTEFORCE APP, you could add more lives here.
					PlaySoundFrontend(-1, "HACKING_CLICK_GOOD", "", false)

				elseif ProgramID == 86 then --IF YOU SUCCESSFULY GET ALL LETTERS RIGHT IN BRUTEFORCE APP
					weWON = true

					PlaySoundFrontend(-1, "HACKING_SUCCESS", "", true)
					
					PushScaleformMovieFunction(scaleform, "SET_ROULETTE_OUTCOME")
					PushScaleformMovieFunctionParameterBool(true)
					PushScaleformMovieFunctionParameterString("BRUTEFORCE SUCCESSFUL!")
					PopScaleformMovieFunctionVoid()
					
					Wait(2800) --We wait 2.8 to let the bruteforce message sink in before we continue
					PushScaleformMovieFunction(scaleform, "CLOSE_APP")
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "OPEN_LOADING_PROGRESS")
					PushScaleformMovieFunctionParameterBool(true)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_PROGRESS")
					PushScaleformMovieFunctionParameterInt(35)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_TIME")
					PushScaleformMovieFunctionParameterInt(35)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_MESSAGE")
					PushScaleformMovieFunctionParameterString("Writing data to buffer..")
					PushScaleformMovieFunctionParameterFloat(2.0)
					PopScaleformMovieFunctionVoid()
					Wait(1500)
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_MESSAGE")
					PushScaleformMovieFunctionParameterString("Executing malicious code..")
					PushScaleformMovieFunctionParameterFloat(2.0)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_TIME")
					PushScaleformMovieFunctionParameterInt(15)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "SET_LOADING_PROGRESS")
					PushScaleformMovieFunctionParameterInt(75)
					PopScaleformMovieFunctionVoid()
					
					Wait(1500)
					PushScaleformMovieFunction(scaleform, "OPEN_LOADING_PROGRESS")
					PushScaleformMovieFunctionParameterBool(false)
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "OPEN_ERROR_POPUP")
					PushScaleformMovieFunctionParameterBool(true)
					PushScaleformMovieFunctionParameterString("MEMORY LEAK DETECTED, DEVICE SHUTTING DOWN")
					PopScaleformMovieFunctionVoid()
					
					Wait(3500)
					SetScaleformMovieAsNoLongerNeeded(scaleform) --EXIT SCALEFORM
					PopScaleformMovieFunctionVoid()
					FreezeEntityPosition(PlayerPedId(), false) --unfreeze our character
				elseif ProgramID == 6 then
					Wait(500) -- WE WAIT 0.5 SECONDS TO EXIT SCALEFORM, JUST TO SIMULATE A SHUTDOWN, OTHERWISE IT CLOSES INSTANTLY
					SetScaleformMovieAsNoLongerNeeded(scaleform) --EXIT SCALEFORM
					FreezeEntityPosition(PlayerPedId(), false) --unfreeze our character
					DisableControlAction(0, 24, false) --LEFT CLICK enabled again
					DisableControlAction(0, 25, false) --RIGHT CLICK enabled again
				end

				if lives == 0 then
					PlaySoundFrontend(-1, "HACKING_FAILURE", "", true)
					PushScaleformMovieFunction(scaleform, "SET_ROULETTE_OUTCOME")
					PushScaleformMovieFunctionParameterBool(false)
					PushScaleformMovieFunctionParameterString("BRUTEFORCE FAILED!")
					PopScaleformMovieFunctionVoid()
					
					Wait(3500) --WE WAIT 3.5 seconds here aswell to let the bruteforce message sink in before exiting.
					PushScaleformMovieFunction(scaleform, "CLOSE_APP")
					PopScaleformMovieFunctionVoid()
					
					PushScaleformMovieFunction(scaleform, "OPEN_ERROR_POPUP")
					PushScaleformMovieFunctionParameterBool(true)
					PushScaleformMovieFunctionParameterString("MEMORY LEAK DETECTED, DEVICE SHUTTING DOWN")
					PopScaleformMovieFunctionVoid()
					
					Wait(2500)
					SetScaleformMovieAsNoLongerNeeded(scaleform)
					PopScaleformMovieFunctionVoid()
					FreezeEntityPosition(PlayerPedId(), false) --unfreeze our character
					DisableControlAction(0, 24, false) --LEFT CLICK enabled again
					DisableControlAction(0, 25, false) --RIGHT CLICK enabled again
				end
			end
		else
			if hacking then
				hacking = false
				TriggerEvent('cosmo_hud:displayHud', true)
				SetScaleformMovieAsNoLongerNeeded(scaleform)
			end

			Citizen.Wait(250)
		end

		Citizen.Wait(0)
	end
end)
