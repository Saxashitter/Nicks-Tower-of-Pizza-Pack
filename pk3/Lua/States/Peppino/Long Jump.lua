fsmstates[enums.LONGJUMP]['npeppino'] = {
	name = "Long Jump",
	enter = function(self, player)
		player.pvars.forcedstate = S_PEPPINO_LONGJUMP
		player.mo.state = S_PEPPINO_LONGJUMPTRNS
	end,
	think = function(self, player)
		if not (player.mo) then return end
		if not (player.pvars or player.playerstate == PST_DEAD) then
			player.pvars = Init()
			if (player.playerstate == PST_DEAD) then
				return
			end
		end
		
		if (P_IsObjectOnGround(player.mo)) then
			fsm.ChangeState(player, GetMachSpeedEnum(player.pvars.movespeed))
		end
		
		player.pvars.drawangle = player.drawangle
		
		P_InstaThrust(player.mo, player.drawangle, player.pvars.movespeed)
		P_MovePlayer(player)
		
		if (player.cmd.buttons & BT_CUSTOM2) and not P_IsObjectOnGround(player.mo) then
			fsm.ChangeState(player, enums.DIVE)
		end
		
		if (player.cmd.buttons & BT_CUSTOM1 and not (player.prevkeys and player.prevkeys & BT_CUSTOM1)) then
			fsm.ChangeState(player, enums.GRAB)
		end
	end,
	exit = function(self, player, state)
		if (state == enums.BASE) then
			player.pvars.movespeed = 8*FU
			if (player.mo) then
				player.mo.momx = 0
				player.mo.momy = 0
			end
		end
	end
}