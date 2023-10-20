// PLAYER SHIT

freeslot('sfx_mach1')
freeslot('sfx_mach2')
freeslot('sfx_mach3')
freeslot('sfx_mach4')

freeslot('sfx_pskid')
freeslot('sfx_drift')

freeslot('SPR2_MAC2')
freeslot('SPR2_MAC3')
freeslot('SPR2_JUMT')
freeslot('SPR2_FALT')

freeslot('SPR2_PLAN')

freeslot('SPR2_DSPD')

freeslot('SPR2_SPDH')

freeslot('SPR2_HLST')
freeslot('SPR2_HLID')
freeslot('SPR2_HLFT')
freeslot('SPR2_HLFL')
freeslot('SPR2_HLLA')
freeslot('SPR2_HLWA')

freeslot('SPR2_BLSL')

freeslot('S_PEPPINO_JUMPTRNS')
freeslot('S_PEPPINO_FALLTRNS')

freeslot('S_PEPPINO_MACH1')
freeslot('S_PEPPINO_MACH2')
freeslot('S_PEPPINO_MACH3')
freeslot('S_PEPPINO_MACH4')

freeslot('S_PEPPINO_LAND')

freeslot('S_PEPPINO_SECONDJUMPTRNS')
freeslot('S_PEPPINO_SECONDJUMP')

freeslot('S_PEPPINO_MACH3JUMP')

freeslot('S_PEPPINO_MACH3HIT')

freeslot('S_PEPPINO_MACHSKIDTRNS')
freeslot('S_PEPPINO_MACHSKID')
freeslot('S_PEPPINO_MACHSKIDEND')

freeslot('S_PEPPINO_MACHDRIFTTRNS2')
freeslot('S_PEPPINO_MACHDRIFTTRNS3')

freeslot('S_PEPPINO_MACHDRIFT2')
freeslot('S_PEPPINO_MACHDRIFT3')

freeslot('S_PEPPINO_DASHPAD')

freeslot('S_PEPPINO_SUPLEXDASH')

freeslot('S_PEPPINO_HAULINGSTART')
freeslot('S_PEPPINO_HAULINGIDLE')
freeslot('S_PEPPINO_HAULINGFALLTRNS')
freeslot('S_PEPPINO_HAULINGFALL')
freeslot('S_PEPPINO_HAULINGLAND')
freeslot('S_PEPPINO_HAULINGWALK')

// call me lazy but no reason to type a shit ton of code when you can just
for i = 1,5 do
	freeslot('SPR2_FIB'..i)
	freeslot('S_PEPPINO_FINISHINGBLOW'..i)
end

freeslot('S_PEPPINO_BELLYSLIDE')

states[S_PEPPINO_JUMPTRNS] = {SPR_PLAY, SPR2_JUMT|FF_ANIMATE|A, 6*2, nil, 5, 2, S_PLAY_SPRING}
states[S_PEPPINO_FALLTRNS] = {SPR_PLAY, SPR2_FALT, 4, nil, 0, 0, S_PLAY_FALL}

states[S_PEPPINO_LAND] = {SPR_PLAY, SPR2_PLAN|FF_ANIMATE|A, 4*2, nil, 3, 2, S_PLAY_STND}

states[S_PEPPINO_MACH1] = {SPR_PLAY, SPR2_RUN_, 2, nil, 0, 0, S_PEPPINO_MACH1}
states[S_PEPPINO_MACH2] = {SPR_PLAY, SPR2_MAC2, 2, nil, 0, 0, S_PEPPINO_MACH2}
states[S_PEPPINO_MACH3] = {SPR_PLAY, SPR2_MAC3, 2, nil, 0, 0, S_PEPPINO_MACH3}
states[S_PEPPINO_MACH4] = {SPR_PLAY, SPR2_DASH, 2, nil, 0, 0, S_PEPPINO_MACH4}

states[S_PEPPINO_DASHPAD] = {SPR_PLAY, SPR2_DSPD|FF_ANIMATE|A, 8*2, nil, 7, 2, S_PEPPINO_MACH3}

states[S_PEPPINO_SECONDJUMP] = {SPR_PLAY, SPR2_FLY_, 2, nil, 0, 0, S_PEPPINO_SECONDJUMP}
states[S_PEPPINO_SECONDJUMPTRNS] = {SPR_PLAY, SPR2_SPIN|FF_ANIMATE|A, 9*2, nil, 8, 2, S_PEPPINO_SECONDJUMP}

states[S_PEPPINO_MACH3JUMP] = {SPR_PLAY, SPR2_CLMB|FF_ANIMATE|A, 4*2, nil, 3, 2, S_PEPPINO_MACH3}

states[S_PEPPINO_MACH3HIT] = {SPR_PLAY, SPR2_SWIM|FF_ANIMATE|A, 5*2, nil, 4, 2, S_PEPPINO_MACH3}

states[S_PEPPINO_MACHSKIDTRNS] = {SPR_PLAY, SPR2_LAND|FF_ANIMATE|A, 7*2, nil, 6, 2, S_PEPPINO_MACHSKID}
states[S_PEPPINO_MACHSKID] = {SPR_PLAY, SPR2_MLEE, 2, nil, 0, 0, S_PEPPINO_MACHSKID}
states[S_PEPPINO_MACHSKIDEND] = {SPR_PLAY, SPR2_MLEL|FF_ANIMATE|A, 6*2, nil, 5, 2, S_PLAY_STND}

states[S_PEPPINO_MACHDRIFTTRNS2] = {SPR_PLAY, SPR2_TWIN|FF_ANIMATE|A, 11*2, nil, 10, 2, S_PEPPINO_MACHDRIFT2}
states[S_PEPPINO_MACHDRIFTTRNS3] = {SPR_PLAY, SPR2_BNCE|FF_ANIMATE|A, 13*2, nil, 12, 2, S_PEPPINO_MACHDRIFT3}

states[S_PEPPINO_MACHDRIFT2] = {SPR_PLAY, SPR2_FIRE, 2, nil, 0, 0, S_PEPPINO_MACHDRIFT2}
states[S_PEPPINO_MACHDRIFT3] = {SPR_PLAY, SPR2_FLT_, 2, nil, 0, 0, S_PEPPINO_MACHDRIFT3}

states[S_PEPPINO_SUPLEXDASH] = {SPR_PLAY, SPR2_SPDH, 2, nil, 0, 0, S_PEPPINO_SUPLEXDASH}

states[S_PEPPINO_HAULINGSTART] = {SPR_PLAY, SPR2_HLST|FF_ANIMATE|A, 5*2, nil, 4, 2, S_PEPPINO_HAULINGSTART}
states[S_PEPPINO_HAULINGIDLE] = {SPR_PLAY, SPR2_HLID, 2, nil, 0, 0, S_PEPPINO_HAULINGIDLE}
states[S_PEPPINO_HAULINGFALLTRNS] = {SPR_PLAY, SPR2_HLFT|FF_ANIMATE|A, 6*2, nil, 5, 2, S_PEPPINO_HAULINGFALL}
states[S_PEPPINO_HAULINGFALL] = {SPR_PLAY, SPR2_HLFL, 2, nil, 0, 0, S_PEPPINO_HAULINGFALL}
states[S_PEPPINO_HAULINGLAND] = {SPR_PLAY, SPR2_HLLA|FF_ANIMATE|A, 5*2, nil, 4, 2, S_PEPPINO_HAULINGIDLE}
states[S_PEPPINO_HAULINGWALK] = {SPR_PLAY, SPR2_HLWA, 2, nil, 4, 2, S_PEPPINO_HAULINGWALK}

states[S_PEPPINO_BELLYSLIDE] = {SPR_PLAY, SPR2_BLSL, 2, nil, 0, 0, S_PEPPINO_BELLYSLIDE}

// unfortunately the same cant be applied here
states[S_PEPPINO_FINISHINGBLOW1] = {SPR_PLAY, SPR2_FIB1, 2, nil, 0, 0, S_PEPPINO_FINISHINGBLOW1}
states[S_PEPPINO_FINISHINGBLOW2] = {SPR_PLAY, SPR2_FIB2, 2, nil, 0, 0, S_PEPPINO_FINISHINGBLOW2}
states[S_PEPPINO_FINISHINGBLOW3] = {SPR_PLAY, SPR2_FIB3, 2, nil, 0, 0, S_PEPPINO_FINISHINGBLOW3}
states[S_PEPPINO_FINISHINGBLOW4] = {SPR_PLAY, SPR2_FIB4, 2, nil, 0, 0, S_PEPPINO_FINISHINGBLOW4}
states[S_PEPPINO_FINISHINGBLOW5] = {SPR_PLAY, SPR2_FIB5, 2, nil, 0, 0, S_PEPPINO_FINISHINGBLOW5}

// you may be wondering why im doing it like this
// surprisingly this is kinda how pt handles it lmfao
// atleast i think from how i looked at it

// SHIT FOR GRABBING

freeslot('MT_GRABBEDMOBJ')

mobjinfo[MT_GRABBEDMOBJ] = {
	doomednum = -1,
	spawnstate = S_PLAY_WAIT,
	flags = MF_NOCLIP|MF_NOBLOCKMAP|MF_NOCLIPHEIGHT|MF_NOGRAVITY
}

//code by luigi
//LUIGI BUDD WAS HERE!!
//fix whatever nick was doing
rawset(_G, "SpawnGrabbedObject",function(tm,source)
	if not (tm and tm.valid and source and source.valid) then return end
	local ragdoll = P_SpawnMobjFromMobj(tm,0,0,tm.height,MT_GRABBEDMOBJ)
	tm.tics = -1
	ragdoll.sprite = tm.sprite
	ragdoll.color = tm.color
	ragdoll.angle = source.angle
	ragdoll.frame = tm.frame
	ragdoll.height = tm.height
	ragdoll.radius = tm.radius
	ragdoll.scale = tm.scale
	ragdoll.timealive = 1
	ragdoll.target = source
	ragdoll.flags = MF_NOCLIP|MF_NOCLIPHEIGHT|MF_NOGRAVITY|MF_NOCLIPTHING
	ragdoll.ragdoll = true
	ragdoll.tics = -1
	P_RemoveMobj(tm)

	return ragdoll
end)

// MOBJ (EFFECTS, PARTICLES) SHIT

freeslot('MT_NTOPP_AFTERIMAGE')

freeslot('MT_LINEPARTICLE')
freeslot('MT_PARTICLE')

freeslot('S_LINEPARTICLE_MACHDUST')
freeslot('SPR_MCDS')

freeslot('S_LINEPARTICLE_RUNDUST')
freeslot('SPR_SDSC')

states[S_LINEPARTICLE_MACHDUST] = {SPR_MCDS, FF_PAPERSPRITE|FF_ANIMATE|A, 6*2, nil, 5, 2, S_NULL}
states[S_LINEPARTICLE_RUNDUST] = {SPR_SDSC, FF_PAPERSPRITE|FF_ANIMATE|A, 5*2, nil, 4, 2, S_NULL}

mobjinfo[MT_LINEPARTICLE] = {
	doomednum = -1,
	spawnstate = S_LINEPARTICLE_MACHDUST,
	flags = MF_NOCLIP|MF_NOBLOCKMAP|MF_NOCLIPHEIGHT|MF_NOGRAVITY
}

mobjinfo[MT_NTOPP_AFTERIMAGE] = {
	doomednum = -1,
	spawnstate = S_LINEPARTICLE_MACHDUST,
	flags = MF_NOCLIP|MF_NOBLOCKMAP|MF_NOCLIPHEIGHT|MF_NOGRAVITY
}