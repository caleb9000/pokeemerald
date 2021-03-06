	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	

	

	thumb_func_start sub_81A5238
sub_81A5238: @ 81A5238
	push {lr}
	ldr r1, =gUnknown_08611F84
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5238

	thumb_func_start sub_81A5258
sub_81A5258: @ 81A5258
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r6, 0
	ldrb r0, [r5]
	cmp r0, 0xA
	bls _081A5268
	b _081A5544
_081A5268:
	lsls r0, 2
	ldr r1, =_081A5278
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A5278:
	.4byte _081A52A4
	.4byte _081A52F4
	.4byte _081A531C
	.4byte _081A53B4
	.4byte _081A540C
	.4byte _081A542C
	.4byte _081A544C
	.4byte _081A5490
	.4byte _081A553E
	.4byte _081A54D4
	.4byte _081A5520
_081A52A4:
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0
	movs r3, 0x8
	bl BeginNormalPaletteFade
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	ldr r0, =gUnknown_08611F74
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_08D855E8
	movs r1, 0xF8
	lsls r1, 1
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r1, =gBattle_WIN0H
	movs r0, 0xFF
	strh r0, [r1]
	ldr r1, =gBattle_WIN0V
	movs r0, 0x70
	strh r0, [r1]
	b _081A553E
	.pool
_081A52F4:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _081A5306
	b _081A5544
_081A5306:
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl HandleBattleWindow
	b _081A553E
	.pool
_081A531C:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A5328
	b _081A5544
_081A5328:
	ldr r1, =gBattleTextBuff1
	movs r2, 0xA1
	strb r2, [r1]
	movs r0, 0xFF
	strb r0, [r1, 0x1]
	ldr r1, =gBattleTextBuff2
	strb r2, [r1]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x1]
	ldr r0, =gText_PlayerMon1Name
	bl BattleStringExpandPlaceholdersToDisplayedString
	ldr r4, =gDisplayedStringBattle
	adds r0, r4, 0
	movs r1, 0xF
	bl BattlePutTextOnWindow
	ldr r0, =gText_Vs
	movs r1, 0x10
	bl BattlePutTextOnWindow
	ldr r0, =gText_OpponentMon1Name
	bl BattleStringExpandPlaceholdersToDisplayedString
	adds r0, r4, 0
	movs r1, 0x11
	bl BattlePutTextOnWindow
	ldr r0, =gText_Mind
	movs r1, 0x12
	bl BattlePutTextOnWindow
	ldr r0, =gText_Skill
	movs r1, 0x13
	bl BattlePutTextOnWindow
	ldr r0, =gText_Body
	movs r1, 0x14
	bl BattlePutTextOnWindow
	ldr r0, =gText_Judgement
	bl BattleStringExpandPlaceholdersToDisplayedString
	adds r0, r4, 0
	movs r1, 0x15
	bl BattlePutTextOnWindow
	b _081A553E
	.pool
_081A53B4:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A53C0
	b _081A5544
_081A53C0:
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r6, 0x80
	lsls r6, 15
	movs r4, 0x7
_081A53CE:
	asrs r1, r6, 16
	ldr r0, =gUnknown_08611F5C
	movs r2, 0x54
	movs r3, 0
	bl CreateSprite
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	movs r1, 0x3
	bl StartSpriteAnim
	movs r0, 0x80
	lsls r0, 13
	adds r6, r0
	subs r4, 0x1
	cmp r4, 0
	bge _081A53CE
	b _081A553C
	.pool
_081A540C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x28
	movs r2, 0
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x28
	movs r2, 0
	b _081A5464
	.pool
_081A542C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x38
	movs r2, 0x1
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x38
	movs r2, 0x1
	b _081A5464
	.pool
_081A544C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x48
	movs r2, 0x2
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x48
	movs r2, 0x2
_081A5464:
	movs r3, 0x1
	bl sub_81A5558
	ldr r0, =gText_Judgement
	bl BattleStringExpandPlaceholdersToDisplayedString
	ldr r0, =gDisplayedStringBattle
	movs r1, 0x15
	bl BattlePutTextOnWindow
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	movs r6, 0x1
	b _081A5544
	.pool
_081A5490:
	movs r0, 0x85
	lsls r0, 1
	bl PlaySE
	ldr r0, =gBattleTextBuff1
	ldr r1, =gBattleTextBuff2
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bls _081A54BC
	movs r6, 0x2
	ldr r1, =gBattleScripting
	movs r0, 0
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54BC:
	cmp r2, r0
	bcs _081A54D0
	movs r6, 0x3
	ldr r1, =gBattleScripting
	movs r0, 0x1
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54D0:
	movs r6, 0x4
	b _081A553E
_081A54D4:
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl HandleBattleWindow
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r0, =gMPlayInfo_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0x8
	movs r3, 0
	bl BeginNormalPaletteFade
	b _081A553E
	.pool
_081A5520:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081A5544
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0xFA
	lsls r0, 2
	bl FreeSpriteTilesByTag
_081A553C:
	movs r6, 0x1
_081A553E:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
_081A5544:
	adds r0, r6, 0
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A5258

	thumb_func_start sub_81A5558
sub_81A5558: @ 81A5558
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r7, r3, 24
	movs r6, 0
	movs r1, 0
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r3, 0xA6
	lsls r3, 2
	adds r4, r0, r3
	ldr r5, =0x0000029a
	adds r3, r0, r5
	adds r5, 0x2
	adds r5, r0
	mov r8, r5
	cmp r2, 0x1
	beq _081A55C4
	cmp r2, 0x1
	bgt _081A55A8
	cmp r2, 0
	beq _081A55B0
	b _081A5612
	.pool
_081A55A8:
	mov r0, r9
	cmp r0, 0x2
	beq _081A55D8
	b _081A5612
_081A55B0:
	adds r0, r4, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r4, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55C4:
	adds r0, r3, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r3, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55D8:
	ldr r3, =gBattleMons
	mov r9, r3
	movs r5, 0x58
	adds r0, r7, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	movs r4, 0x64
	muls r0, r4
	lsls r1, r7, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r6, r0, 0
	movs r0, 0x1
	adds r1, r7, 0
	eors r1, r0
	adds r0, r1, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	muls r0, r4
	lsls r1, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r1, r0, 0
_081A5612:
	cmp r6, r1
	ble _081A5638
	movs r4, 0x2
	cmp r7, 0
	beq _081A5628
	ldr r1, =gBattleTextBuff2
	b _081A562A
	.pool
_081A5628:
	ldr r1, =gBattleTextBuff1
_081A562A:
	ldrb r0, [r1]
	adds r0, 0x2
	strb r0, [r1]
	b _081A565E
	.pool
_081A5638:
	cmp r6, r1
	bne _081A565C
	movs r4, 0x1
	cmp r7, 0
	beq _081A564C
	ldr r1, =gBattleTextBuff2
	b _081A564E
	.pool
_081A564C:
	ldr r1, =gBattleTextBuff1
_081A564E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _081A565E
	.pool
_081A565C:
	movs r4, 0
_081A565E:
	ldr r0, =gUnknown_08611F5C
	ldr r1, [sp]
	mov r2, r10
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 4
	adds r0, r6
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	adds r1, r4, 0
	bl StartSpriteAnim
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5558

	thumb_func_start sub_81A5698
sub_81A5698: @ 81A5698
	push {lr}
	adds r1, r0, 0
	ldr r0, =gBattleCommunication
	ldrb r0, [r0]
	cmp r0, 0x8
	bls _081A56AA
	adds r0, r1, 0
	bl DestroySprite
_081A56AA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5698

	thumb_func_start sub_81A56B4
sub_81A56B4: @ 81A56B4
	ldr r0, =gBattleStruct
	ldr r2, [r0]
	movs r0, 0xA6
	lsls r0, 2
	adds r1, r2, r0
	adds r0, 0x2
	adds r3, r2, r0
	adds r0, 0x2
	adds r2, r0
	movs r0, 0
	strb r0, [r1]
	strb r0, [r1, 0x1]
	strb r0, [r3]
	strb r0, [r3, 0x1]
	ldr r0, =gBattleMons
	ldrh r1, [r0, 0x28]
	strh r1, [r2]
	adds r0, 0x80
	ldrh r0, [r0]
	strh r0, [r2, 0x2]
	bx lr
	.pool
	thumb_func_end sub_81A56B4

	thumb_func_start sub_81A56E8
sub_81A56E8: @ 81A56E8
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	adds r1, r0
	ldr r2, =gBattleArenaMoveMindRatings
	ldr r0, =gCurrentMove
	ldrh r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A56E8

	thumb_func_start sub_81A5718
sub_81A5718: @ 81A5718
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	adds r6, r3, 0
	ldr r0, =gBattleStruct
	ldr r2, [r0]
	ldr r0, =0x0000029a
	adds r5, r2, r0
	ldr r0, =gHitMarker
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _081A57DA
	ldr r0, =0x000002a2
	adds r4, r2, r0
	ldrb r2, [r4]
	ldr r0, =gBitTable
	lsls r1, r3, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _081A576C
	bics r2, r1
	strb r2, [r4]
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A576C:
	ldr r0, =gMoveResultFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _081A5798
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081A5788
	ldr r0, =gBattleCommunication
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _081A57DA
_081A5788:
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A5798:
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0x6
	bne _081A57A4
	adds r1, r5, r3
	b _081A57D4
_081A57A4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A57B4
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, 0x2
	b _081A57D8
_081A57B4:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _081A57C4
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x1
	b _081A57D8
_081A57C4:
	ldr r0, =gProtectStructs
	lsls r1, r6, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 31
	cmp r0, 0
	bne _081A57DA
	adds r1, r5, r6
_081A57D4:
	ldrb r0, [r1]
	adds r0, 0x1
_081A57D8:
	strb r0, [r1]
_081A57DA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5718

	thumb_func_start sub_81A57E4
sub_81A57E4: @ 81A57E4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r1, 16
	adds r2, r1, 0
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	ldr r5, =0x0000029a
	adds r3, r0, r5
	movs r0, 0x99
	lsls r0, 1
	cmp r1, r0
	bgt _081A582A
	subs r0, 0x1
	cmp r1, r0
	bge _081A585C
	cmp r1, 0xC5
	bgt _081A581C
	cmp r1, 0xC3
	bge _081A585C
	cmp r1, 0x77
	beq _081A585C
	b _081A5864
	.pool
_081A581C:
	cmp r1, 0xC7
	blt _081A5864
	cmp r1, 0xCC
	ble _081A585C
	cmp r1, 0xCE
	beq _081A585C
	b _081A5864
_081A582A:
	ldr r0, =0x00000147
	cmp r1, r0
	beq _081A585C
	cmp r1, r0
	bgt _081A5848
	subs r0, 0x12
	cmp r1, r0
	beq _081A585C
	adds r0, 0x2
	cmp r1, r0
	beq _081A585C
	b _081A5864
	.pool
_081A5848:
	movs r0, 0xAD
	lsls r0, 1
	cmp r2, r0
	blt _081A5864
	adds r0, 0x1
	cmp r2, r0
	ble _081A585C
	adds r0, 0x3
	cmp r2, r0
	bne _081A5864
_081A585C:
	adds r1, r3, r4
	ldrb r0, [r1]
	subs r0, 0x3
	strb r0, [r1]
_081A5864:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81A57E4

	thumb_func_start sub_81A586C
sub_81A586C: @ 81A586C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleStruct
	ldr r3, [r1]
	movs r1, 0xA7
	lsls r1, 2
	adds r3, r1
	lsls r2, r0, 1
	adds r2, r3
	ldr r5, =gBattleMons
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r1, r5
	ldrh r1, [r1, 0x28]
	strh r1, [r2]
	movs r1, 0x1
	eors r0, r1
	lsls r1, r0, 1
	adds r1, r3
	muls r0, r4
	adds r0, r5
	ldrh r2, [r0, 0x28]
	ldrh r0, [r1]
	cmp r0, r2
	bls _081A58A4
	strh r2, [r1]
_081A58A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A586C

	thumb_func_start sub_81A58B4
sub_81A58B4: @ 81A58B4
	push {r4-r6,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r2, 0
	strb r2, [r1]
	ldr r1, [r4]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r2, [r0]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	cmp r5, 0
	beq _081A5914
	ldr r0, [r4]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0x80
	b _081A591E
	.pool
_081A5914:
	ldr r0, [r4]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r2, [r0]
	movs r0, 0x40
_081A591E:
	ands r2, r0
	cmp r2, 0
	bne _081A5930
	ldr r0, [r4]
	lsls r1, r5, 1
	ldr r6, =0x00000dda
	adds r0, r6
	adds r0, r1
	strh r2, [r0]
_081A5930:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gTrainerBattleOpponent_A
	movs r0, 0
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A58B4

	thumb_func_start sub_81A5964
sub_81A5964: @ 81A5964
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, =0x00000ca9
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A59B0
	cmp r0, 0x1
	bgt _081A5994
	cmp r0, 0
	beq _081A599A
	b _081A59EE
	.pool
_081A5994:
	cmp r0, 0x2
	beq _081A59C8
	b _081A59EE
_081A599A:
	ldr r0, =gSpecialVar_Result
	ldr r2, =0x00000dd8
	adds r1, r3, r2
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A59EE
	.pool
_081A59B0:
	ldr r2, =gSpecialVar_Result
	lsls r1, 1
	ldr r4, =0x00000dda
	adds r0, r3, r4
	adds r0, r1
	ldrh r0, [r0]
	b _081A59EC
	.pool
_081A59C8:
	cmp r1, 0
	beq _081A59E0
	ldr r2, =gSpecialVar_Result
	ldr r1, =0x00000cdc
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, 0x80
	b _081A59EA
	.pool
_081A59E0:
	ldr r2, =gSpecialVar_Result
	ldr r4, =0x00000cdc
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, 0x40
_081A59EA:
	ands r0, r1
_081A59EC:
	strh r0, [r2]
_081A59EE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5964

	thumb_func_start sub_81A59FC
sub_81A59FC: @ 81A59FC
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000ca9
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A5A48
	cmp r0, 0x1
	bgt _081A5A2C
	cmp r0, 0
	beq _081A5A32
	b _081A5ABA
	.pool
_081A5A2C:
	cmp r0, 0x2
	beq _081A5A60
	b _081A5ABA
_081A5A32:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000dd8
	adds r0, r2, r3
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A48:
	lsls r1, 1
	ldr r3, =0x00000dda
	adds r0, r2, r3
	adds r0, r1
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A60:
	cmp r1, 0
	beq _081A5A90
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5A80
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5A80:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x81
	negs r2, r2
	b _081A5AB6
	.pool
_081A5A90:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5AAC
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5AAC:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x41
	negs r2, r2
_081A5AB6:
	ands r1, r2
_081A5AB8:
	str r1, [r0]
_081A5ABA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A59FC

	thumb_func_start sub_81A5AC4
sub_81A5AC4: @ 81A5AC4
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5AC4

	thumb_func_start sub_81A5B08
sub_81A5B08: @ 81A5B08
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000dda
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x29
	bls _081A5B58
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FAC
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000dd8
	adds r4, r1
	b _081A5B76
	.pool
_081A5B58:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FA0
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r2, =0x00000dd8
	adds r4, r2
_081A5B76:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B08

	thumb_func_start sub_81A5B88
sub_81A5B88: @ 81A5B88
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl AddBagItem
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _081A5BD0
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gSpecialVar_Result
	strh r5, [r0]
	b _081A5BD6
	.pool
_081A5BD0:
	ldr r1, =gSpecialVar_Result
	movs r0, 0
	strh r0, [r1]
_081A5BD6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B88

	thumb_func_start sub_81A5BE0
sub_81A5BE0: @ 81A5BE0
	push {lr}
	ldr r0, =gStringVar1
	ldr r1, =gTrainerBattleOpponent_A
	ldrh r1, [r1]
	bl GetFrontierTrainerName
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BE0

	thumb_func_start sub_81A5BF8
sub_81A5BF8: @ 81A5BF8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r0, 0x1B
	mov r8, r0
	movs r5, 0x7
	movs r4, 0x1
	str r4, [sp]
	movs r6, 0x6
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0xFE
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0x20
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x31
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x33
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x34
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1C
	mov r8, r0
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x35
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x36
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	movs r6, 0x5
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x37
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x39
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3A
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000831
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000833
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000834
	movs r0, 0x1A
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000835
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000836
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BF8

	thumb_func_start sub_81A5D44
sub_81A5D44: @ 81A5D44
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r5, 0
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r6, 0x4
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x4
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1B
	mov r8, r0
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x5
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x6
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x8
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x9
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xA
	movs r2, 0x2
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xB
	movs r2, 0x1C
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xC
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xD
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xF
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x11
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A5D44

	thumb_func_start sub_81A5E74
sub_81A5E74: @ 81A5E74
	push {lr}
	ldr r1, =gUnknown_08612120
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E74

	thumb_func_start sub_81A5E94
sub_81A5E94: @ 81A5E94
	push {r4-r7,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, [r5]
	ldr r1, =0x00000ca8
	adds r0, r1
	movs r2, 0
	strb r2, [r0]
	ldr r1, [r5]
	ldr r3, =0x00000cb2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r5]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_08612164
	lsls r0, r7, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r2
	ldr r3, [r3]
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	bne _081A5F0A
	lsls r1, r7, 1
	lsls r0, r6, 2
	adds r1, r0
	ldr r2, =0x00000de2
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
	adds r2, 0x10
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
_081A5F0A:
	ldr r1, =gUnknown_03001288
	movs r0, 0
	strb r0, [r1]
	movs r2, 0
	ldr r6, =gSaveBlock1Ptr
	movs r4, 0xE7
	lsls r4, 4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A5F1C:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0
	adds r1, r4
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _081A5F1C
	movs r2, 0
	ldr r4, =gUnknown_03006298
	ldr r1, =0x0000ffff
	adds r3, r1, 0
_081A5F40:
	lsls r0, r2, 1
	adds r0, r4
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _081A5F40
	ldr r0, [r6]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gTrainerBattleOpponent_A
	movs r0, 0
	strh r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E94

	thumb_func_start sub_81A5FA8
sub_81A5FA8: @ 81A5FA8
	push {r4-r7,lr}
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r6, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A6000
	cmp r0, 0x2
	bgt _081A5FE4
	cmp r0, 0x1
	beq _081A5FEA
	b _081A6044
	.pool
_081A5FE4:
	cmp r0, 0x3
	beq _081A6030
	b _081A6044
_081A5FEA:
	ldr r3, =gSpecialVar_Result
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A603C
	.pool
_081A6000:
	ldr r4, =gSpecialVar_Result
	ldr r2, [r7]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r0, r6, 2
	lsls r1, r5, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
	b _081A6044
	.pool
_081A6030:
	ldr r3, =gSpecialVar_Result
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000df2
_081A603C:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
_081A6044:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5FA8

	thumb_func_start sub_81A6054
sub_81A6054: @ 81A6054
	push {r4-r6,lr}
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A60B4
	cmp r0, 0x2
	bgt _081A6090
	cmp r0, 0x1
	beq _081A6096
	b _081A6128
	.pool
_081A6090:
	cmp r0, 0x3
	beq _081A6108
	b _081A6128
_081A6096:
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000de2
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	strh r0, [r2]
	b _081A6128
	.pool
_081A60B4:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A60E4
	ldr r2, [r6]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A60E4:
	ldr r2, [r6]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_08612174
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A6108:
	ldr r3, =gUnknown_03001288
	ldrb r0, [r3]
	cmp r0, 0x1
	bne _081A6128
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000df2
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	movs r1, 0
	strh r0, [r2]
	strb r1, [r3]
_081A6128:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6054

	thumb_func_start sub_81A613C
sub_81A613C: @ 81A613C
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A613C

	thumb_func_start nullsub_75
nullsub_75: @ 81A6180
	bx lr
	thumb_func_end nullsub_75

	thumb_func_start nullsub_123
nullsub_123: @ 81A6184
	bx lr
	thumb_func_end nullsub_123

	thumb_func_start sub_81A6188
sub_81A6188: @ 81A6188
	push {lr}
	bl ZeroPlayerPartyMons
	bl DoBattleFactorySelectScreen
	pop {r0}
	bx r0
	thumb_func_end sub_81A6188

	thumb_func_start sub_81A6198
sub_81A6198: @ 81A6198
	push {lr}
	bl DoBattleFactorySwapScreen
	pop {r0}
	bx r0
	thumb_func_end sub_81A6198

	thumb_func_start sub_81A61A4
sub_81A61A4: @ 81A61A4
	ldr r1, =gUnknown_03001288
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A61A4

	thumb_func_start sub_81A61B0
sub_81A61B0: @ 81A61B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	str r0, [sp, 0x10]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, [r4]
	ldr r3, [sp, 0x10]
	lsls r2, r3, 1
	lsrs r0, 14
	adds r2, r0
	ldr r6, =0x00000de2
	adds r1, r6
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	ldr r2, =gFacilityTrainers
	ldr r1, =gBattleFrontierTrainers
	str r1, [r2]
	ldr r5, =0x00000cb2
	lsls r0, 24
	str r0, [sp, 0x20]
	mov r8, r0
_081A61FA:
	ldr r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	mov r2, r8
	lsrs r0, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r7, 0
	ldr r1, [r4]
	adds r0, r1, r5
	ldr r6, [sp, 0x10]
	lsls r6, 24
	str r6, [sp, 0x1C]
	ldrh r0, [r0]
	cmp r7, r0
	bge _081A6244
	ldr r2, =0x00000cb4
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r6, =gSaveBlock2Ptr
	cmp r0, r3
	beq _081A6244
	ldr r1, [r6]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	ldrh r2, [r0]
	ldr r0, =0x00000cb4
	adds r1, r0
_081A6236:
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, r2
	bge _081A6244
	ldrh r0, [r1]
	cmp r0, r3
	bne _081A6236
_081A6244:
	ldr r0, [r4]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldr r6, =gSaveBlock2Ptr
	ldrh r0, [r0]
	cmp r7, r0
	bne _081A61FA
	ldr r0, =gTrainerBattleOpponent_A
	strh r3, [r0]
	ldr r2, [r6]
	adds r1, r2, r1
	ldrh r0, [r1]
	cmp r0, 0x5
	bhi _081A626C
	adds r1, r0, 0
	lsls r1, 1
	ldr r4, =0x00000cb4
	adds r0, r2, r4
	adds r0, r1
	strh r3, [r0]
_081A626C:
	movs r7, 0
	mov r10, sp
	movs r6, 0
	lsls r6, 1
	str r6, [sp, 0x14]
	add r6, sp
	str r6, [sp, 0x18]
_081A627A:
	ldr r1, [sp, 0x1C]
	lsrs r0, r1, 24
	ldr r2, [sp, 0x20]
	lsrs r1, r2, 24
	movs r2, 0
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	ldr r4, =gFacilityTrainerMons
	ldr r2, [r4]
	lsls r1, r0, 4
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, 0xC9
	beq _081A636E
	movs r3, 0
	ldr r6, =gSaveBlock2Ptr
	mov r8, r1
	adds r5, r0, 0
	ldr r1, [r6]
_081A62A6:
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	beq _081A62C0
	adds r1, 0xC
	adds r3, 0x1
	cmp r3, 0x5
	ble _081A62A6
_081A62C0:
	cmp r3, 0x6
	bne _081A636E
	ldr r6, [sp, 0x10]
	cmp r6, 0
	bne _081A62D0
	ldr r0, =0x00000351
	cmp r9, r0
	bhi _081A636E
_081A62D0:
	movs r2, 0
	adds r4, r2, r7
	cmp r2, r4
	bge _081A6302
	ldr r1, [sp, 0x18]
	ldrh r0, [r1]
	cmp r0, r5
	beq _081A6302
	adds r6, r4, 0
	ldr r3, =gFacilityTrainerMons
	mov r12, r3
	mov r5, r8
	ldr r3, [sp, 0x14]
	add r3, sp
_081A62EC:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r6
	bge _081A6302
	mov r1, r12
	ldr r0, [r1]
	adds r0, r5, r0
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081A62EC
_081A6302:
	cmp r2, r4
	bne _081A636E
	movs r2, 0
	cmp r2, r4
	bge _081A633E
	ldr r3, =gBattleFrontierHeldItems
	mov r12, r3
	add r0, sp, 0x8
	ldr r6, [sp, 0x14]
	adds r3, r0, r6
	mov r0, r8
	str r0, [sp, 0x24]
	adds r5, r4, 0
_081A631C:
	ldrh r1, [r3]
	cmp r1, 0
	beq _081A6336
	ldr r6, =gFacilityTrainerMons
	ldr r0, [r6]
	ldr r6, [sp, 0x24]
	adds r0, r6, r0
	ldrb r0, [r0, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r1, r0
	beq _081A633E
_081A6336:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r5
	blt _081A631C
_081A633E:
	cmp r2, r4
	bne _081A636E
	lsls r4, r7, 1
	ldr r0, =gFacilityTrainerMons
	ldr r1, [r0]
	add r1, r8
	ldrh r0, [r1]
	mov r2, r10
	strh r0, [r2]
	add r2, sp, 0x8
	adds r2, r4
	ldr r3, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, =gUnknown_03006298
	adds r4, r0
	mov r3, r9
	strh r3, [r4]
	movs r4, 0x2
	add r10, r4
	adds r7, 0x1
_081A636E:
	cmp r7, 0x3
	bne _081A627A
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A61B0

	thumb_func_start sub_81A63B8
sub_81A63B8: @ 81A63B8
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	movs r1, 0
	bl SetBattleFacilityTrainerGfxId
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63B8

	thumb_func_start sub_81A63CC
sub_81A63CC: @ 81A63CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _081A63FC
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	b _081A6400
	.pool
_081A63FC:
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gSlateportBattleTentMons
_081A6400:
	str r0, [r1]
	movs r7, 0
	ldr r2, =gSaveBlock2Ptr
	mov r8, r2
_081A6408:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r7, 0x3
	lsls r4, r0, 1
	adds r4, r0
	lsls r4, 2
	adds r1, r4
	ldr r0, =gUnknown_03006298
	lsls r6, r7, 1
	adds r6, r0
	ldrh r0, [r6]
	movs r2, 0xE7
	lsls r2, 4
	adds r1, r2
	strh r0, [r1]
	movs r0, 0x64
	adds r5, r7, 0
	muls r5, r0
	ldr r0, =gEnemyParty
	adds r5, r0
	adds r0, r5, 0
	movs r1, 0x28
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e78
	adds r1, r2
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r2, =0x00000e74
	adds r1, r2
	adds r1, r4
	str r0, [r1]
	adds r0, r5, 0
	movs r1, 0x2E
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e79
	adds r1, r2
	strb r0, [r1]
	ldrh r1, [r6]
	ldr r0, =gFacilityTrainerMons
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r5, 0
	movs r1, 0xC
	bl SetMonData
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _081A6408
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63CC

	thumb_func_start sub_81A64C4
sub_81A64C4: @ 81A64C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, 0x3
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0x2
	bne _081A6500
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gSlateportBattleTentMons
	str r0, [r1]
	movs r2, 0x1E
	str r2, [sp, 0x14]
	b _081A6518
	.pool
_081A6500:
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, 0
	ands r0, r1
	movs r4, 0x32
	str r4, [sp, 0x14]
	cmp r0, 0
	beq _081A6518
	movs r5, 0x64
	str r5, [sp, 0x14]
_081A6518:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A6522
	b _081A666C
_081A6522:
	bl ZeroPlayerPartyMons
	movs r0, 0
	mov r8, r0
	mov r1, sp
	adds r1, 0x12
	str r1, [sp, 0x1C]
	ldr r2, =gFacilityTrainerMons
	mov r9, r2
_081A6534:
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r3, r10
	add r3, r8
	lsls r3, 2
	adds r1, r2, r3
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r2, r5
	adds r2, r3
	ldr r2, [r2]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl CreateMon
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	adds r5, 0x1
	str r5, [sp, 0x18]
	movs r5, 0x5
_081A6596:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A65A2
	adds r1, 0x1
_081A65A2:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A6596
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	add r1, sp, 0x10
	strh r0, [r1]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gPlayerParty
_081A65C4:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A65E2
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl SetMonData
	ldr r3, [sp, 0x20]
_081A65E2:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A65C4
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gPlayerParty
	adds r0, r4, r5
	bl CalculateMonStats
	movs r0, 0
	ldr r1, [sp, 0x1C]
	strb r0, [r1]
	movs r6, 0
_081A6602:
	mov r2, r9
	ldr r0, [r2]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl SetMonMoveAvoidReturn
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A6602
	movs r5, 0x64
	mov r4, r8
	muls r4, r5
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	ldr r2, [sp, 0x1C]
	bl SetMonData
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	adds r2, r0
	ldr r0, =0x00000e79
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	ldr r1, [sp, 0x18]
	mov r8, r1
	cmp r1, 0x2
	bgt _081A666C
	b _081A6534
_081A666C:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A667A
	cmp r0, 0x2
	beq _081A667A
	b _081A67AE
_081A667A:
	movs r2, 0
	mov r8, r2
	ldr r4, =gFacilityTrainerMons
	mov r9, r4
_081A6682:
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	mov r0, r8
	adds r0, 0x3
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r1, r3, r2
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r3, r5
	adds r3, r2
	ldr r2, [r3]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl CreateMon
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r0, r8
	adds r0, 0x1
	str r0, [sp, 0x18]
	movs r5, 0x5
_081A66E8:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A66F4
	adds r1, 0x1
_081A66F4:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A66E8
	add r4, sp, 0x10
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	strh r0, [r4]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gEnemyParty
_081A6716:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A6734
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl SetMonData
	ldr r3, [sp, 0x20]
_081A6734:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A6716
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gEnemyParty
	adds r0, r4, r5
	bl CalculateMonStats
	movs r6, 0
_081A674E:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl SetMonMoveAvoidReturn
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A674E
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r0, =gEnemyParty
	adds r4, r0
	mov r5, r9
	ldr r0, [r5]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	adds r2, r0
	ldr r5, =0x00000e9d
	adds r2, r5
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	ldr r0, [sp, 0x18]
	mov r8, r0
	cmp r0, 0x2
	bgt _081A67AE
	b _081A6682
_081A67AE:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A64C4

	thumb_func_start sub_81A67EC
sub_81A67EC: @ 81A67EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4C
	ldr r1, =gFacilityTrainers
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	mov r0, sp
	adds r0, 0xC
	str r0, [sp, 0x38]
	mov r1, sp
	adds r1, 0x18
	str r1, [sp, 0x3C]
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	movs r2, 0
	adds r3, r1, 0
	adds r1, r0, 0
	mov r0, sp
	movs r4, 0x5
	mov r8, r4
_081A681A:
	strh r2, [r0]
	strh r2, [r1]
	strh r2, [r3]
	adds r3, 0x2
	adds r1, 0x2
	adds r0, 0x2
	movs r5, 0x1
	negs r5, r5
	add r8, r5
	mov r4, r8
	cmp r4, 0
	bge _081A681A
	mov r5, r9
	ldr r0, [r5]
	ldr r7, =0x00000ca9
	adds r0, r7
	ldrb r4, [r0]
	lsls r4, 30
	lsrs r4, 30
	ldr r6, =0x000040ce
	adds r0, r6, 0
	bl VarGet
	lsls r0, 24
	ldr r1, [r5]
	lsls r4, 1
	lsrs r0, 22
	adds r4, r0
	ldr r5, =0x00000de2
	adds r1, r5
	adds r1, r4
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	adds r0, r6, 0
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	movs r2, 0
	cmp r0, 0x1
	bne _081A6878
	movs r2, 0x1
_081A6878:
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081A68B4
	movs r4, 0x1
	str r4, [sp, 0x28]
	b _081A68B8
	.pool
_081A68B4:
	movs r5, 0
	str r5, [sp, 0x28]
_081A68B8:
	adds r0, r2, 0
	ldr r1, [sp, 0x28]
	bl sub_81A6F70
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x2C]
	movs r0, 0
	mov r10, r0
	mov r8, r0
	ldr r1, [sp, 0x3C]
	str r1, [sp, 0x40]
	mov r2, sp
	str r2, [sp, 0x44]
	lsls r4, r0, 1
	str r4, [sp, 0x30]
	ldr r5, [sp, 0x38]
	adds r5, r4
	str r5, [sp, 0x34]
_081A68DE:
	ldr r0, [sp, 0x2C]
	cmp r8, r0
	bge _081A68EC
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0x1
	b _081A68F2
_081A68EC:
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0
_081A68F2:
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =gFacilityTrainerMons
	ldr r1, [r0]
	lsls r2, r7, 4
	adds r4, r2, r1
	ldrh r1, [r4]
	mov r9, r2
	cmp r1, 0xC9
	beq _081A69E2
	movs r3, 0
	mov r2, r8
	adds r6, r3, r2
	cmp r3, r6
	bge _081A6950
	ldr r5, [sp, 0x34]
	ldrh r0, [r5]
	cmp r0, r7
	beq _081A6950
	mov r12, r4
	adds r2, r1, 0
	lsls r4, r3, 1
	ldr r1, [sp, 0x30]
	add r1, sp
	str r6, [sp, 0x48]
_081A6928:
	ldrh r0, [r1]
	cmp r0, r2
	bne _081A693A
	mov r0, r10
	cmp r0, 0
	bne _081A6950
	mov r5, r12
	ldrh r5, [r5]
	mov r10, r5
_081A693A:
	adds r4, 0x2
	adds r1, 0x2
	adds r3, 0x1
	ldr r0, [sp, 0x48]
	cmp r3, r0
	bge _081A6950
	ldr r5, [sp, 0x38]
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r0, r7
	bne _081A6928
_081A6950:
	cmp r3, r6
	bne _081A69E2
	movs r3, 0
	cmp r3, r6
	bge _081A699C
	ldr r0, =gBattleFrontierHeldItems
	mov r12, r0
	ldr r1, [sp, 0x30]
	ldr r2, [sp, 0x3C]
	adds r5, r1, r2
_081A6964:
	ldrh r4, [r5]
	cmp r4, 0
	beq _081A6994
	ldr r1, =gFacilityTrainerMons
	ldr r0, [r1]
	mov r2, r9
	adds r1, r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r4, r0
	bne _081A6994
	ldrh r0, [r1]
	cmp r0, r10
	bne _081A699C
	movs r4, 0
	mov r10, r4
	b _081A699C
	.pool
_081A6994:
	adds r5, 0x2
	adds r3, 0x1
	cmp r3, r6
	blt _081A6964
_081A699C:
	cmp r3, r6
	bne _081A69E2
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r5, r8
	lsls r3, r5, 1
	adds r0, r3, r5
	lsls r0, 2
	adds r1, r0
	movs r0, 0xE7
	lsls r0, 4
	adds r1, r0
	strh r7, [r1]
	ldr r2, =gFacilityTrainerMons
	ldr r1, [r2]
	add r1, r9
	ldrh r0, [r1]
	ldr r4, [sp, 0x44]
	strh r0, [r4]
	ldr r2, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	ldr r5, [sp, 0x40]
	strh r0, [r5]
	ldr r0, [sp, 0x38]
	adds r3, r0, r3
	strh r7, [r3]
	adds r5, 0x2
	str r5, [sp, 0x40]
	adds r4, 0x2
	str r4, [sp, 0x44]
	movs r1, 0x1
	add r8, r1
_081A69E2:
	mov r2, r8
	cmp r2, 0x6
	beq _081A69EA
	b _081A68DE
_081A69EA:
	add sp, 0x4C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A67EC

	thumb_func_start sub_81A6A08
sub_81A6A08: @ 81A6A08
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	movs r4, 0
	add r5, sp, 0x14
	ldr r7, =gSpecialVar_Result
	movs r1, 0
_081A6A1E:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x11
	bls _081A6A1E
	movs r4, 0
	ldr r0, =gUnknown_03006298
	mov r8, r0
	ldr r0, =gFacilityTrainerMons
	ldr r6, [r0]
	ldr r1, =gBaseStats
	mov r12, r1
_081A6A3C:
	lsls r0, r4, 1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r2, r12
	adds r3, r0, r2
	ldrb r2, [r3, 0x6]
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldrb r1, [r3, 0x7]
	cmp r2, r1
	beq _081A6A70
	ldrb r0, [r3, 0x7]
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_081A6A70:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6A3C
	movs r0, 0
	strb r0, [r5]
	strb r0, [r5, 0x1]
	movs r4, 0x1
	adds r3, r5, 0
_081A6A84:
	ldrb r0, [r3]
	add r0, sp
	mov r2, sp
	adds r1, r2, r4
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bcs _081A6AAC
	strb r4, [r5]
	b _081A6AB2
	.pool
_081A6AAC:
	cmp r2, r0
	bne _081A6AB2
	strb r4, [r3, 0x1]
_081A6AB2:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x11
	bls _081A6A84
	ldrb r1, [r5]
	mov r4, sp
	adds r0, r4, r1
	ldrb r2, [r0]
	cmp r2, 0
	beq _081A6ADA
	ldrb r3, [r5, 0x1]
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r2, r0
	bhi _081A6AD6
	cmp r1, r3
	bne _081A6ADA
_081A6AD6:
	strh r1, [r7]
	b _081A6ADE
_081A6ADA:
	movs r0, 0x12
	strh r0, [r7]
_081A6ADE:
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A6A08

	thumb_func_start sub_81A6AEC
sub_81A6AEC: @ 81A6AEC
	push {r4-r7,lr}
	sub sp, 0x8
	movs r7, 0
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	movs r4, 0
	movs r1, 0
_081A6AFC:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _081A6AFC
	movs r4, 0
_081A6B0E:
	ldr r1, =gUnknown_03006298
	lsls r0, r4, 1
	adds r0, r1
	ldrh r6, [r0]
	movs r5, 0
_081A6B18:
	ldr r0, =gFacilityTrainerMons
	ldr r1, [r0]
	lsls r0, r6, 4
	adds r0, r1
	lsls r1, r5, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r0, [r0]
	bl sub_81A6BA4
	lsls r0, 24
	lsrs r0, 24
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _081A6B18
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6B0E
	ldr r1, =gSpecialVar_Result
	movs r0, 0
	strh r0, [r1]
	movs r4, 0x1
	adds r5, r1, 0
	ldr r3, =gBattleFactoryStyleRequiredMoveCounts
	adds r2, r5, 0
_081A6B5C:
	mov r1, sp
	adds r0, r1, r4
	subs r1, r4, 0x1
	adds r1, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _081A6B74
	strh r4, [r2]
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_081A6B74:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _081A6B5C
	cmp r7, 0x2
	bls _081A6B86
	movs r0, 0x8
	strh r0, [r5]
_081A6B86:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6AEC

	thumb_func_start sub_81A6BA4
sub_81A6BA4: @ 81A6BA4
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r2, 0
	ldr r6, =gBattleFactoryStyleMoveListPointers
_081A6BAE:
	movs r3, 0
	lsls r0, r2, 2
	adds r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	adds r4, r2, 0x1
	cmp r0, 0
	beq _081A6BE4
	lsls r0, r4, 24
	lsrs r2, r0, 24
_081A6BC2:
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _081A6BD4
	adds r0, r2, 0
	b _081A6BEE
	.pool
_081A6BD4:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _081A6BC2
_081A6BE4:
	lsls r0, r4, 24
	lsrs r2, r0, 24
	cmp r2, 0x6
	bls _081A6BAE
	movs r0, 0
_081A6BEE:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A6BA4

	thumb_func_start sub_81A6BF4
sub_81A6BF4: @ 81A6BF4
	push {lr}
	movs r2, 0
	ldr r1, =gMapHeader
	ldr r3, =0xfffffea5
	adds r0, r3, 0
	ldrh r1, [r1, 0x12]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _081A6C0C
	movs r2, 0x1
_081A6C0C:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6BF4

	thumb_func_start sub_81A6C1C
sub_81A6C1C: @ 81A6C1C
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _081A6C48
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gBattleFrontierMons
	b _081A6C4C
	.pool
_081A6C48:
	ldr r1, =gFacilityTrainerMons
	ldr r0, =gSlateportBattleTentMons
_081A6C4C:
	str r0, [r1]
	movs r4, 0
_081A6C50:
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r2, r1
	movs r1, 0xE7
	lsls r1, 4
	adds r2, r1
	ldrh r2, [r2]
	ldr r1, =gFacilityTrainerMons
	ldr r1, [r1]
	lsls r2, 4
	adds r2, r1
	ldrb r2, [r2, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6C50
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6C1C

	thumb_func_start sub_81A6CA8
sub_81A6CA8: @ 81A6CA8
	push {lr}
	lsls r0, 24
	lsls r1, 24
	lsrs r1, 24
	negs r2, r1
	orrs r2, r1
	lsrs r2, 31
	lsrs r1, r0, 24
	cmp r1, 0x8
	bls _081A6CBE
	movs r1, 0x7
_081A6CBE:
	ldr r0, =gUnknown_08612184
	lsls r1, 1
	adds r1, r2, r1
	adds r1, r0
	ldrb r0, [r1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6CA8

	thumb_func_start sub_81A6CD0
sub_81A6CD0: @ 81A6CD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	str r0, [sp, 0x2C]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r1, [r4]
	ldr r3, [sp, 0x2C]
	lsls r2, r3, 1
	lsrs r0, 22
	adds r2, r0
	ldr r7, =0x00000de2
	adds r1, r7
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r1, r0, 24
	str r1, [sp, 0x30]
	movs r2, 0x80
	lsls r2, 18
	adds r0, r2
	lsrs r0, 24
	movs r1, 0
	bl sub_81A6CA8
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	bl SetFacilityPtrsGetLevel
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x20]
	movs r3, 0
	mov r9, r3
	ldr r1, [r4]
	ldrb r4, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r4, r0
	str r4, [sp, 0x28]
_081A6D4C:
	ldr r0, [sp, 0x2C]
	ldr r1, [sp, 0x30]
	movs r2, 0
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r7, =gFacilityTrainerMons
	ldr r1, [r7]
	lsls r0, r5, 4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0xC9
	bne _081A6D6A
	b _081A6EB8
_081A6D6A:
	ldr r0, [sp, 0x20]
	cmp r0, 0x32
	bne _081A6D78
	ldr r0, =0x00000351
	cmp r5, r0
	bls _081A6D78
	b _081A6EB8
_081A6D78:
	movs r2, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	movs r3, 0xE7
	lsls r3, 4
	adds r0, r3
	ldrh r0, [r0]
	cmp r5, r0
	beq _081A6DA2
	adds r4, r1, 0
	movs r1, 0
_081A6D8E:
	adds r1, 0xC
	adds r2, 0x1
	cmp r2, 0x5
	bgt _081A6DA2
	ldr r0, [r4]
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	cmp r5, r0
	bne _081A6D8E
_081A6DA2:
	cmp r2, 0x6
	beq _081A6DA8
	b _081A6EB8
_081A6DA8:
	movs r4, 0
	cmp r4, r9
	bge _081A6DDC
	add r2, sp, 0xC
	ldr r7, =gFacilityTrainerMons
	ldr r0, [r7]
	lsls r1, r5, 4
	adds r0, r1, r0
	ldrh r2, [r2]
	adds r7, r1, 0
	ldrh r0, [r0]
	cmp r2, r0
	beq _081A6DDC
	ldr r6, =gFacilityTrainerMons
	adds r3, r7, 0
	add r2, sp, 0xC
_081A6DC8:
	adds r2, 0x2
	adds r4, 0x1
	cmp r4, r9
	bge _081A6DDC
	ldr r0, [r6]
	adds r0, r3, r0
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081A6DC8
_081A6DDC:
	cmp r4, r9
	bne _081A6EB8
	movs r4, 0
	cmp r4, r9
	bge _081A6E0C
	ldr r7, =gBattleFrontierHeldItems
	ldr r6, =gFacilityTrainerMons
	add r2, sp, 0x14
	lsls r3, r5, 4
_081A6DEE:
	ldrh r1, [r2]
	cmp r1, 0
	beq _081A6E04
	ldr r0, [r6]
	adds r0, r3, r0
	ldrb r0, [r0, 0xA]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	beq _081A6E0C
_081A6E04:
	adds r2, 0x2
	adds r4, 0x1
	cmp r4, r9
	blt _081A6DEE
_081A6E0C:
	cmp r4, r9
	bne _081A6EB8
	mov r0, r9
	lsls r2, r0, 1
	mov r1, sp
	adds r1, r2
	adds r1, 0xC
	ldr r3, =gFacilityTrainerMons
	ldr r4, [r3]
	lsls r5, 4
	mov r8, r5
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r1]
	add r1, sp, 0x14
	adds r1, r2
	ldr r2, =gBattleFrontierHeldItems
	ldrb r0, [r4, 0xA]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, 0x64
	mov r5, r9
	muls r5, r0
	ldr r6, =gEnemyParty
	adds r0, r5, r6
	ldrh r1, [r4]
	ldr r7, [sp, 0x20]
	lsls r2, r7, 24
	ldrb r3, [r4, 0xC]
	ldr r7, [sp, 0x24]
	str r7, [sp]
	ldrb r4, [r4, 0xB]
	str r4, [sp, 0x4]
	ldr r4, [sp, 0x28]
	str r4, [sp, 0x8]
	lsrs r2, 24
	bl CreateMonWithEVSpreadPersonalityOTID
	add r0, sp, 0x1C
	movs r7, 0
	strb r7, [r0]
	movs r4, 0
	mov r7, r8
	mov r10, r0
	movs r0, 0x1
	add r0, r9
	mov r8, r0
_081A6E6E:
	ldr r1, =gFacilityTrainerMons
	ldr r0, [r1]
	adds r0, r7, r0
	lsls r1, r4, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r5, r6
	bl SetMonMoveAvoidReturn
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A6E6E
	movs r0, 0x64
	mov r4, r9
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	mov r2, r10
	bl SetMonData
	ldr r2, =gFacilityTrainerMons
	ldr r0, [r2]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r9, r8
_081A6EB8:
	mov r3, r9
	cmp r3, 0x3
	beq _081A6EC0
	b _081A6D4C
_081A6EC0:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6CD0

	thumb_func_start sub_81A6EF0
sub_81A6EF0: @ 81A6EF0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r4, 0x8
	negs r1, r0
	orrs r1, r0
	asrs r1, 31
	ands r1, r4
	adds r4, r1, 0
	cmp r3, 0x6
	bhi _081A6F2C
	cmp r2, 0
	beq _081A6F20
	ldr r2, =gUnknown_08612194
	adds r1, r3
	adds r1, 0x1
	b _081A6F38
	.pool
_081A6F20:
	ldr r2, =gUnknown_08612194
	adds r1, r3
	b _081A6F38
	.pool
_081A6F2C:
	adds r1, r3, 0
	cmp r1, 0x7
	beq _081A6F34
	movs r1, 0x7
_081A6F34:
	ldr r2, =gUnknown_08612194
	adds r1, r4, r1
_081A6F38:
	lsls r1, 2
	adds r0, r2, 0x2
	adds r0, r1, r0
	adds r1, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	subs r0, r4
	adds r0, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r5, 0
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, r4
	lsls r4, 16
	lsrs r0, r4, 16
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6EF0

	thumb_func_start sub_81A6F70
sub_81A6F70: @ 81A6F70
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000df2
	adds r2, r0
	adds r2, r1
	ldrb r1, [r2]
	movs r0, 0
	cmp r1, 0xE
	bls _081A6FA8
	movs r0, 0x1
	cmp r1, 0x15
	bls _081A6FA8
	movs r0, 0x2
	cmp r1, 0x1C
	bls _081A6FA8
	movs r0, 0x3
	cmp r1, 0x23
	bls _081A6FA8
	movs r0, 0x5
	cmp r1, 0x2A
	bhi _081A6FA8
	movs r0, 0x4
_081A6FA8:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6F70

	thumb_func_start GetAiScriptsInBattleFactory
GetAiScriptsInBattleFactory: @ 81A6FB4
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	cmp r4, 0x2
	beq _081A6FF8
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, [r5]
	lsls r2, r4, 1
	lsrs r0, 14
	adds r2, r0
	ldr r0, =0x00000de2
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	beq _081A7018
	cmp r2, 0x1
	bgt _081A7014
_081A6FF8:
	movs r0, 0
	b _081A701E
	.pool
_081A7014:
	cmp r2, 0x3
	ble _081A701C
_081A7018:
	movs r0, 0x7
	b _081A701E
_081A701C:
	movs r0, 0x1
_081A701E:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end GetAiScriptsInBattleFactory

	thumb_func_start SetMonMoveAvoidReturn
SetMonMoveAvoidReturn: @ 81A7024
	push {lr}
	lsls r1, 16
	lsls r2, 24
	lsrs r2, 24
	lsrs r1, 16
	cmp r1, 0xD8
	bne _081A7034
	movs r1, 0xDA
_081A7034:
	bl SetMonMoveSlot
	pop {r0}
	bx r0
	thumb_func_end SetMonMoveAvoidReturn

	thumb_func_start sub_81A703C
sub_81A703C: @ 81A703C
	push {lr}
	ldr r1, =gUnknown_086125F8
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A703C

	thumb_func_start sub_81A705C
sub_81A705C: @ 81A705C
	push {lr}
	bl sub_81A79EC
	ldr r1, =gUnknown_0300128C
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A705C

	thumb_func_start sub_81A7070
sub_81A7070: @ 81A7070
	push {r4-r7,lr}
	ldr r0, =0x00004010
	movs r1, 0x1C
	bl VarSet
	ldr r0, =0x00004011
	movs r1, 0xE2
	bl VarSet
	movs r4, 0x1
	movs r6, 0
	movs r5, 0
	movs r7, 0
	ldr r0, =gUnknown_0300128C
	ldrb r0, [r0]
	cmp r0, 0x8
	bhi _081A7132
	lsls r0, 2
	ldr r1, =_081A70AC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A70AC:
	.4byte _081A70D0
	.4byte _081A70DA
	.4byte _081A70DE
	.4byte _081A70E8
	.4byte _081A70FC
	.4byte _081A70D6
	.4byte _081A7100
	.4byte _081A7108
	.4byte _081A710E
_081A70D0:
	movs r0, 0
	bl sub_81A82A4
_081A70D6:
	movs r4, 0
	b _081A711A
_081A70DA:
	movs r5, 0x1C
	b _081A711A
_081A70DE:
	bl sub_81A7B58
	lsls r0, 24
	lsrs r5, r0, 24
	b _081A711A
_081A70E8:
	movs r5, 0x30
	ldr r0, =gUnknown_0300128D
	ldrb r0, [r0]
	movs r7, 0xE1
	cmp r0, 0x1
	bne _081A7118
	movs r7, 0xE2
	b _081A7118
	.pool
_081A70FC:
	movs r5, 0x30
	b _081A711A
_081A7100:
	movs r0, 0x1
	bl sub_81A82A4
	b _081A7114
_081A7108:
	bl sub_81A8374
	b _081A70D6
_081A710E:
	movs r0, 0x5
	bl SetFrontierBrainEventObjGfx
_081A7114:
	movs r7, 0x1C
	movs r4, 0
_081A7118:
	movs r6, 0x1
_081A711A:
	cmp r4, 0x1
	bne _081A7126
	ldr r0, =0x00004010
	adds r1, r5, 0
	bl VarSet
_081A7126:
	cmp r6, 0x1
	bne _081A7132
	ldr r0, =0x00004011
	adds r1, r7, 0
	bl VarSet
_081A7132:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7070

	thumb_func_start sub_81A7140
sub_81A7140: @ 81A7140
	push {lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r2, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x4
	bhi _081A723A
	lsls r0, 2
	ldr r1, =_081A7174
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A7174:
	.4byte _081A7188
	.4byte _081A71A0
	.4byte _081A71C4
	.4byte _081A71E8
	.4byte _081A720C
_081A7188:
	ldr r0, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000e02
	adds r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A723A
	.pool
_081A71A0:
	ldr r2, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e04
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A71C4:
	ldr r2, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e08
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A71E8:
	ldr r2, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e0c
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A720C:
	cmp r2, 0
	beq _081A7228
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 4
	b _081A7236
	.pool
_081A7228:
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
_081A7236:
	ands r0, r1
_081A7238:
	strh r0, [r2]
_081A723A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7140

	thumb_func_start sub_81A7248
sub_81A7248: @ 81A7248
	push {r4,r5,lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r3, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r2, r1, 0
	cmp r0, 0x4
	bls _081A7264
	b _081A73AA
_081A7264:
	lsls r0, 2
	ldr r1, =_081A7280
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A7280:
	.4byte _081A7294
	.4byte _081A72AC
	.4byte _081A72D8
	.4byte _081A7314
	.4byte _081A7344
_081A7294:
	ldr r0, [r2]
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	ldr r5, =0x00000e02
	adds r0, r5
	strh r1, [r0]
	b _081A73AA
	.pool
_081A72AC:
	ldr r0, =gSpecialVar_0x8006
	ldrh r3, [r0]
	ldr r0, =0x0000270f
	cmp r3, r0
	bls _081A72B8
	b _081A73AA
_081A72B8:
	ldr r0, [r2]
	ldr r2, =0x00000ca9
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r5, =0x00000e04
	b _081A732C
	.pool
_081A72D8:
	ldr r0, =gSpecialVar_0x8006
	ldrh r4, [r0]
	adds r3, r4, 0
	ldr r0, =0x0000270f
	cmp r3, r0
	bhi _081A73AA
	ldr r1, [r2]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r2, r0, 30
	lsrs r0, r2, 29
	ldr r5, =0x00000e08
	adds r1, r5
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r3
	bcs _081A73AA
	lsrs r0, r2, 29
	adds r0, r1, r0
	strh r4, [r0]
	b _081A73AA
	.pool
_081A7314:
	ldr r0, =gSpecialVar_0x8006
	ldrh r3, [r0]
	ldr r0, =0x0000270f
	cmp r3, r0
	bhi _081A73AA
	ldr r0, [r2]
	ldr r2, =0x00000ca9
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r5, =0x00000e0c
_081A732C:
	adds r0, r5
	adds r0, r1
	strh r3, [r0]
	b _081A73AA
	.pool
_081A7344:
	cmp r3, 0
	beq _081A737C
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A7368
	ldr r0, [r2]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 4
	orrs r1, r2
	b _081A73A8
	.pool
_081A7368:
	ldr r0, [r2]
	ldr r2, =0x00000cdc
	adds r0, r2
	ldr r1, [r0]
	ldr r2, =0xfffff7ff
	b _081A73A6
	.pool
_081A737C:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A739C
	ldr r0, [r2]
	ldr r5, =0x00000cdc
	adds r0, r5
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 3
	orrs r1, r2
	b _081A73A8
	.pool
_081A739C:
	ldr r0, [r2]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r1, [r0]
	ldr r2, =0xfffffbff
_081A73A6:
	ands r1, r2
_081A73A8:
	str r1, [r0]
_081A73AA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7248

	thumb_func_start sub_81A73B8
sub_81A73B8: @ 81A73B8
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0xE
	bls _081A73DC
	ldr r1, =gSpecialVar_Result
	movs r0, 0x1
	b _081A73E0
	.pool
_081A73DC:
	ldr r1, =gSpecialVar_Result
	movs r0, 0
_081A73E0:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A73B8

	thumb_func_start sub_81A73EC
sub_81A73EC: @ 81A73EC
	ldr r0, =gSpecialVar_Result
	ldr r1, =gUnknown_0300128C
	ldrb r1, [r1]
	strh r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A73EC

	thumb_func_start sub_81A7400
sub_81A7400: @ 81A7400
	ldr r1, =gUnknown_0300128E
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A7400

	thumb_func_start sub_81A740C
sub_81A740C: @ 81A740C
	ldr r1, =gUnknown_0300128E
	movs r0, 0
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A740C

	thumb_func_start sub_81A7418
sub_81A7418: @ 81A7418
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl save_serialize_map
	movs r0, 0x1
	bl TrySavingData
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7418

	thumb_func_start nullsub_76
nullsub_76: @ 81A7460
	bx lr
	thumb_func_end nullsub_76

	thumb_func_start nullsub_124
nullsub_124: @ 81A7464
	bx lr
	thumb_func_end nullsub_124

	thumb_func_start sub_81A7468
sub_81A7468: @ 81A7468
	push {lr}
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	cmp r0, 0x20
	beq _081A748E
	cmp r0, 0x20
	bhi _081A7484
	cmp r0, 0x7
	beq _081A74BC
	cmp r0, 0x10
	beq _081A7498
	b _081A74C2
	.pool
_081A7484:
	cmp r0, 0x40
	beq _081A74B0
	cmp r0, 0x80
	beq _081A74A4
	b _081A74C2
_081A748E:
	ldr r1, =gSpecialVar_Result
	movs r0, 0
	b _081A74C0
	.pool
_081A7498:
	ldr r1, =gSpecialVar_Result
	movs r0, 0x1
	b _081A74C0
	.pool
_081A74A4:
	ldr r1, =gSpecialVar_Result
	movs r0, 0x2
	b _081A74C0
	.pool
_081A74B0:
	ldr r1, =gSpecialVar_Result
	movs r0, 0x3
	b _081A74C0
	.pool
_081A74BC:
	ldr r1, =gSpecialVar_Result
	movs r0, 0x4
_081A74C0:
	strh r0, [r1]
_081A74C2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7468

	thumb_func_start sub_81A74CC
sub_81A74CC: @ 81A74CC
	ldr r0, =gSpecialVar_Result
	ldr r1, =gUnknown_0300128D
	ldrb r1, [r1]
	strh r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A74CC

	thumb_func_start sub_81A74E0
sub_81A74E0: @ 81A74E0
	push {r4,lr}
	bl Random
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	movs r0, 0x1
	ands r4, r0
	adds r4, 0x1
	adds r0, r4, 0
	bl sub_81A7F38
	ldr r0, =gSpecialVar_Result
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A74E0

	thumb_func_start sub_81A7508
sub_81A7508: @ 81A7508
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0x4
	bhi _081A7538
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x2]
	b _081A7560
	.pool
_081A7538:
	cmp r0, 0xA
	bhi _081A7554
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x3]
	b _081A7560
	.pool
_081A7554:
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x4]
_081A7560:
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_086123E4
	adds r0, r1
	bl FrontierSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7508

	thumb_func_start sub_81A7580
sub_81A7580: @ 81A7580
	push {lr}
	ldr r0, =sub_81A7EE4
	movs r1, 0x2
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7580

	thumb_func_start sub_81A7594
sub_81A7594: @ 81A7594
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r4, 0
	movs r1, 0
_081A759E:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A759E
	adds r0, r5, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r2, r0, 16
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	lsrs r2, 24
	strb r2, [r0, 0x1]
	adds r0, r5, 0
	movs r1, 0x39
	mov r2, sp
	bl SetMonData
	adds r0, r5, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
_081A75DA:
	adds r1, r4, 0
	adds r1, 0xD
	adds r0, r5, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	adds r2, r4, 0
	bl CalculatePPWithBonus
	mov r1, sp
	strb r0, [r1]
	adds r1, r4, 0
	adds r1, 0x11
	adds r0, r5, 0
	mov r2, sp
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A75DA
	mov r0, sp
	movs r1, 0
	strb r1, [r0]
	strb r1, [r0, 0x1]
	strb r1, [r0, 0x2]
	strb r1, [r0, 0x3]
	adds r0, r5, 0
	movs r1, 0x37
	mov r2, sp
	bl SetMonData
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A7594

	thumb_func_start sub_81A7628
sub_81A7628: @ 81A7628
	push {r4,lr}
	adds r4, r1, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	cmp r4, 0x20
	beq _081A7652
	cmp r4, 0x20
	bhi _081A7648
	cmp r4, 0x7
	beq _081A7664
	cmp r4, 0x10
	beq _081A7658
	b _081A7674
_081A7648:
	cmp r4, 0x40
	beq _081A765E
	cmp r4, 0x80
	beq _081A766E
	b _081A7674
_081A7652:
	cmp r0, 0x28
	bne _081A7674
	b _081A7672
_081A7658:
	cmp r0, 0x29
	bne _081A7674
	b _081A7672
_081A765E:
	cmp r0, 0x7
	bne _081A7674
	b _081A7672
_081A7664:
	cmp r0, 0xF
	beq _081A7672
	cmp r0, 0x48
	bne _081A7674
	b _081A7672
_081A766E:
	cmp r0, 0x11
	bne _081A7674
_081A7672:
	movs r1, 0x1
_081A7674:
	adds r0, r1, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7628

	thumb_func_start sub_81A767C
sub_81A767C: @ 81A767C
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	movs r3, 0
	cmp r1, 0x20
	beq _081A76C4
	cmp r1, 0x20
	bhi _081A7696
	cmp r1, 0x7
	beq _081A771C
	cmp r1, 0x10
	beq _081A7704
	b _081A771C
_081A7696:
	cmp r1, 0x40
	beq _081A76E0
	cmp r1, 0x80
	bne _081A771C
	ldr r1, =gBaseStats
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x6]
	cmp r2, 0x8
	beq _081A771A
	cmp r2, 0x3
	beq _081A771A
	ldrb r0, [r0, 0x7]
	cmp r0, 0x8
	beq _081A771A
	cmp r0, 0x3
	bne _081A771C
	b _081A771A
	.pool
_081A76C4:
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x6]
	cmp r0, 0xF
	beq _081A771A
	ldrb r0, [r1, 0x7]
	cmp r0, 0xF
	bne _081A771C
	b _081A771A
	.pool
_081A76E0:
	ldr r1, =gBaseStats
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x6]
	cmp r2, 0x4
	beq _081A771A
	cmp r2, 0xD
	beq _081A771A
	ldrb r0, [r0, 0x7]
	cmp r0, 0x4
	beq _081A771A
	cmp r0, 0xD
	bne _081A771C
	b _081A771A
	.pool
_081A7704:
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x6]
	cmp r0, 0xA
	beq _081A771A
	ldrb r0, [r1, 0x7]
	cmp r0, 0xA
	bne _081A771C
_081A771A:
	movs r3, 0x1
_081A771C:
	adds r0, r3, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A767C

	thumb_func_start sub_81A7728
sub_81A7728: @ 81A7728
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r6, 0
_081A7736:
	mov r1, sp
	adds r0, r1, r6
	strb r6, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A7736
	movs r4, 0
	mov r8, r4
_081A774A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r6, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	adds r2, r1, r6
	ldrb r3, [r2]
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x9
	bls _081A774A
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r4, =0x00000cb2
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x1
	mov r10, r1
	cmp r0, 0x4
	bls _081A77A8
	movs r4, 0x3
	mov r10, r4
	cmp r0, 0x9
	bhi _081A77A8
	movs r0, 0x2
	mov r10, r0
_081A77A8:
	movs r1, 0
	str r1, [sp, 0x4]
	ldr r7, =gUnknown_03001290
_081A77AE:
	movs r4, 0
	mov r9, r4
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x22
	bhi _081A77DC
	movs r0, 0x80
	b _081A77FC
	.pool
_081A77DC:
	cmp r0, 0x3B
	bhi _081A77E4
	movs r0, 0x20
	b _081A77FC
_081A77E4:
	cmp r0, 0x4F
	bhi _081A77EC
	movs r0, 0x40
	b _081A77FC
_081A77EC:
	cmp r1, 0x59
	bhi _081A77FA
	movs r0, 0x7
	b _081A77FC
_081A77F4:
	movs r0, 0x1
	mov r9, r0
	b _081A786E
_081A77FA:
	movs r0, 0x10
_081A77FC:
	str r0, [r7]
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	ldr r1, [sp, 0x4]
	cmp r1, r0
	beq _081A7874
	str r0, [sp, 0x4]
	movs r4, 0
	mov r8, r4
	movs r6, 0
_081A7810:
	mov r1, sp
	adds r0, r1, r6
	ldrb r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A7860
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A7860
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r1, [r7]
	adds r0, r4, 0
	bl sub_81A767C
	lsls r0, 24
	cmp r0, 0
	beq _081A77F4
_081A7860:
	cmp r8, r10
	beq _081A786E
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A7810
_081A786E:
	mov r4, r8
	cmp r4, 0
	beq _081A78CC
_081A7874:
	mov r0, r9
	cmp r0, 0
	beq _081A77AE
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	cmp r0, 0x20
	beq _081A7898
	cmp r0, 0x20
	bhi _081A78D0
	cmp r0, 0x7
	beq _081A78D0
	cmp r0, 0x10
	beq _081A78A4
	b _081A78D0
	.pool
_081A7898:
	ldr r1, =gUnknown_0300128D
	movs r0, 0x1
	b _081A78D4
	.pool
_081A78A4:
	bl Random
	lsls r0, 16
	lsrs r1, r0, 16
	movs r2, 0x1
	ands r1, r2
	cmp r1, 0
	beq _081A78C0
	ldr r0, =gUnknown_0300128D
	strb r2, [r0]
	b _081A78D6
	.pool
_081A78C0:
	ldr r0, =gUnknown_0300128D
	strb r1, [r0]
	b _081A78D6
	.pool
_081A78CC:
	movs r0, 0
	b _081A7956
_081A78D0:
	ldr r1, =gUnknown_0300128D
	movs r0, 0
_081A78D4:
	strb r0, [r1]
_081A78D6:
	movs r1, 0
	mov r8, r1
	movs r6, 0
_081A78DC:
	mov r4, sp
	adds r0, r4, r6
	ldrb r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A7946
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r7, =gUnknown_03001290
	ldr r1, [r7]
	adds r0, r5, 0
	bl sub_81A7628
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	ldr r1, [r7]
	adds r0, r4, 0
	bl sub_81A767C
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	adds r0, r5, 0
	movs r1, 0x37
	adds r2, r7, 0
	bl SetMonData
_081A7946:
	cmp r8, r10
	beq _081A7954
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A78DC
_081A7954:
	movs r0, 0x1
_081A7956:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7728

	thumb_func_start sub_81A7974
sub_81A7974: @ 81A7974
	push {r4-r7,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	movs r7, 0x1
	cmp r0, 0x4
	bls _081A798E
	movs r7, 0x3
	cmp r0, 0x9
	bhi _081A798E
	movs r7, 0x2
_081A798E:
	movs r6, 0
	movs r5, 0
	b _081A79A2
	.pool
_081A799C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_081A79A2:
	cmp r5, 0x2
	bhi _081A79D8
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A79D4
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A79D4
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A79D4:
	cmp r6, r7
	bne _081A799C
_081A79D8:
	cmp r6, 0
	beq _081A79E4
	movs r0, 0x1
	b _081A79E6
	.pool
_081A79E4:
	movs r0, 0
_081A79E6:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7974

	thumb_func_start sub_81A79EC
sub_81A79EC: @ 81A79EC
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	movs r4, 0xE1
	lsls r4, 4
	adds r0, r4
	ldrb r2, [r0]
	movs r3, 0x78
	ands r3, r2
	adds r5, r1, 0
	cmp r3, 0x40
	bne _081A7A10
	lsls r0, r2, 25
	lsrs r0, 28
	b _081A7B48
	.pool
_081A7A10:
	ldr r0, =gSpecialVar_0x8007
	lsls r1, r2, 29
	ldrh r0, [r0]
	lsrs r1, 29
	cmp r0, r1
	bne _081A7A34
	cmp r3, 0x18
	bne _081A7A24
	bl sub_81A7728
_081A7A24:
	ldr r0, [r5]
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	b _081A7B48
	.pool
_081A7A34:
	movs r2, 0
	ldr r3, =gUnknown_0861266C
	movs r1, 0
_081A7A3A:
	mov r4, sp
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7A3A
	movs r4, 0x8
	ldr r0, [r5]
	movs r6, 0xE1
	lsls r6, 4
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	adds r0, r3
	ldrb r1, [r0]
	movs r2, 0
	adds r5, r3, 0
	movs r3, 0x1
_081A7A64:
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, r1
	bne _081A7A78
	mov r6, sp
	adds r0, r6, r2
	strb r3, [r0]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7A78:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7A64
	mov r0, sp
	ldrb r0, [r0, 0x7]
	cmp r0, 0x1
	beq _081A7AA0
	bl sub_81A8554
	lsls r0, 24
	cmp r0, 0
	bne _081A7AA0
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x7]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AA0:
	mov r0, sp
	ldrb r0, [r0, 0x3]
	cmp r0, 0x1
	beq _081A7ABE
	bl sub_81A7974
	lsls r0, 24
	cmp r0, 0
	bne _081A7ABE
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x3]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7ABE:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A7AFA
	mov r0, sp
	ldrb r0, [r0, 0x1]
	cmp r0, 0x1
	beq _081A7AE6
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x1]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AE6:
	mov r0, sp
	ldrb r0, [r0, 0x4]
	cmp r0, 0x1
	beq _081A7AFA
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x4]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AFA:
	adds r0, r4, 0
	bl AllocZeroed
	adds r5, r0, 0
	movs r3, 0
	movs r2, 0
_081A7B06:
	mov r6, sp
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _081A7B1C
	adds r1, r3, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r1, r5, r1
	strb r2, [r1]
_081A7B1C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7B06
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __modsi3
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r5, 0
	bl Free
	cmp r4, 0x3
	bne _081A7B46
	bl sub_81A7728
_081A7B46:
	adds r0, r4, 0
_081A7B48:
	add sp, 0x8
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A79EC

	thumb_func_start sub_81A7B58
sub_81A7B58: @ 81A7B58
	push {r4,lr}
	ldr r4, =gUnknown_03001294
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x19
	bl __umodsi3
	strb r0, [r4]
	ldr r1, =gUnknown_0861231C
	ldrb r0, [r4]
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7B58

	thumb_func_start sub_81A7B84
sub_81A7B84: @ 81A7B84
	ldr r0, =gUnknown_0300128E
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A7B84

	thumb_func_start TryGenerateBattlePikeWildMon
TryGenerateBattlePikeWildMon: @ 81A7B90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	bl GetBattlePikeWildMonHeaderId
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gUnknown_08612314
	lsrs r0, 28
	adds r0, r1
	ldr r0, [r0]
	str r0, [sp, 0x4]
	ldr r0, =gEnemyParty
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r0, r5, 16
	lsrs r0, 16
	bl sub_81A890C
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, [r7]
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081A7C1C
	bl GetHighestLevelInPlayerParty
	adds r7, r0, 0
	cmp r7, 0x3B
	ble _081A7C08
	lsls r0, r6, 2
	ldr r1, [sp, 0x4]
	adds r0, r1
	ldr r1, [r0]
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	subs r7, r0
	cmp r7, 0x3B
	bgt _081A7C32
_081A7C08:
	movs r7, 0x3C
	b _081A7C32
	.pool
_081A7C1C:
	lsls r0, r6, 2
	ldr r2, [sp, 0x4]
	adds r0, r2
	ldr r1, [r0]
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x2]
	movs r0, 0x32
	subs r7, r0, r1
_081A7C32:
	mov r0, r8
	cmp r0, 0x1
	bne _081A7C4A
	lsls r0, r7, 24
	lsrs r0, 24
	bl sub_81A88B0
	lsls r0, 24
	cmp r0, 0
	bne _081A7C4A
	movs r0, 0
	b _081A7CE2
_081A7C4A:
	ldr r0, =gEnemyParty
	ldr r1, =gBaseStats
	mov r8, r1
	lsls r6, 2
	mov r9, r6
	ldr r2, [sp, 0x4]
	add r2, r9
	mov r10, r2
	ldr r1, [r2]
	lsls r6, r5, 1
	adds r4, r6, r5
	lsls r4, 2
	adds r1, r4, r1
	ldrh r2, [r1]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x13]
	movs r1, 0xCA
	lsls r1, 1
	muls r2, r1
	lsls r1, r7, 2
	ldr r3, =gExperienceTables
	adds r1, r3
	adds r2, r1
	movs r1, 0x19
	bl SetMonData
	mov r1, r10
	ldr r0, [r1]
	adds r4, r0
	ldrh r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x17]
	mov r7, r9
	cmp r0, 0
	beq _081A7CA8
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
_081A7CA8:
	str r0, [sp]
	ldr r0, =gEnemyParty
	movs r1, 0x2E
	mov r2, sp
	bl SetMonData
	movs r4, 0
	adds r0, r6, r5
	lsls r6, r0, 2
_081A7CBA:
	ldr r2, [sp, 0x4]
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, r6, r0
	lsls r1, r4, 1
	adds r0, 0x4
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r4, 24
	lsrs r2, 24
	ldr r0, =gEnemyParty
	bl SetMonMoveSlot
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A7CBA
	ldr r0, =gEnemyParty
	bl CalculateMonStats
	movs r0, 0x1
_081A7CE2:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end TryGenerateBattlePikeWildMon

	thumb_func_start GetBattlePikeWildMonHeaderId
GetBattlePikeWildMonHeaderId: @ 81A7D00
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	adds r2, r1, 0
	movs r0, 0x8C
	lsls r0, 1
	cmp r1, r0
	bhi _081A7D34
	movs r1, 0
	b _081A7D4C
	.pool
_081A7D34:
	movs r0, 0x8C
	lsls r0, 2
	cmp r1, r0
	bhi _081A7D40
	movs r1, 0x1
	b _081A7D4C
_081A7D40:
	movs r0, 0xD2
	lsls r0, 2
	movs r1, 0x3
	cmp r2, r0
	bhi _081A7D4C
	movs r1, 0x2
_081A7D4C:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end GetBattlePikeWildMonHeaderId

	thumb_func_start sub_81A7D54
sub_81A7D54: @ 81A7D54
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r5, =gUnknown_08612688
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
_081A7D66:
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r5
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	lsls r0, 24
	cmp r0, 0
	bne _081A7D66
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7D54

	thumb_func_start sub_81A7D8C
sub_81A7D8C: @ 81A7D8C
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x14]
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081A7DA4
	subs r0, r1, 0x1
	strh r0, [r4, 0x14]
	lsls r0, 16
	cmp r0, 0
	bne _081A7DC8
_081A7DA4:
	ldrh r0, [r4, 0xA]
	strh r0, [r4, 0x14]
	ldrh r0, [r4, 0x10]
	ldrh r1, [r4, 0x16]
	adds r0, r1
	strh r0, [r4, 0x16]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x10
	ble _081A7DBC
	movs r0, 0x10
	strh r0, [r4, 0x16]
_081A7DBC:
	movs r0, 0x1
	negs r0, r0
	ldrb r1, [r4, 0x16]
	ldr r2, =0x00002d6b
	bl BlendPalettes
_081A7DC8:
	movs r2, 0x16
	ldrsh r0, [r4, r2]
	cmp r0, 0xF
	ble _081A7DDA
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0xC]
	strh r0, [r4, 0x14]
_081A7DDA:
	movs r0, 0
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7D8C

	thumb_func_start sub_81A7DE8
sub_81A7DE8: @ 81A7DE8
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x14]
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081A7E00
	subs r0, r1, 0x1
	strh r0, [r4, 0x14]
	lsls r0, 16
	cmp r0, 0
	bne _081A7E22
_081A7E00:
	ldrh r0, [r4, 0xC]
	strh r0, [r4, 0x14]
	ldrh r0, [r4, 0x16]
	ldrh r1, [r4, 0x12]
	subs r0, r1
	strh r0, [r4, 0x16]
	lsls r0, 16
	cmp r0, 0
	bge _081A7E16
	movs r0, 0
	strh r0, [r4, 0x16]
_081A7E16:
	movs r0, 0x1
	negs r0, r0
	ldrb r1, [r4, 0x16]
	ldr r2, =0x00002d6b
	bl BlendPalettes
_081A7E22:
	movs r0, 0x16
	ldrsh r1, [r4, r0]
	cmp r1, 0
	bne _081A7E56
	ldrh r0, [r4, 0xE]
	subs r0, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	cmp r0, 0
	bne _081A7E50
	ldr r0, =sub_81A7D54
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	b _081A7E56
	.pool
_081A7E50:
	ldrh r0, [r4, 0xA]
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x8]
_081A7E56:
	movs r0, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7DE8

	thumb_func_start sub_81A7E60
sub_81A7E60: @ 81A7E60
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	mov r8, r0
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, [sp, 0x18]
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 16
	lsrs r6, 16
	lsls r3, 16
	lsrs r3, 16
	ldr r0, =sub_81A7D54
	movs r1, 0x3
	str r3, [sp]
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	mov r0, r8
	strh r0, [r1, 0xA]
	strh r4, [r1, 0xC]
	strh r5, [r1, 0xE]
	strh r6, [r1, 0x10]
	ldr r3, [sp]
	strh r3, [r1, 0x12]
	strh r0, [r1, 0x14]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7E60

	thumb_func_start sub_81A7EC4
sub_81A7EC4: @ 81A7EC4
	push {lr}
	ldr r0, =sub_81A7D54
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _081A7EDC
	movs r0, 0
	b _081A7EDE
	.pool
_081A7EDC:
	movs r0, 0x1
_081A7EDE:
	pop {r1}
	bx r1
	thumb_func_end sub_81A7EC4

	thumb_func_start sub_81A7EE4
sub_81A7EE4: @ 81A7EE4
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0, 0
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r1
	ldrh r2, [r1, 0x8]
	movs r3, 0x8
	ldrsh r0, [r1, r3]
	cmp r0, 0
	bne _081A7F1C
	adds r0, r2, 0x1
	strh r0, [r1, 0x8]
	movs r0, 0x2
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x3
	movs r3, 0x2
	bl sub_81A7E60
	b _081A7F30
	.pool
_081A7F1C:
	bl sub_81A7EC4
	lsls r0, 24
	cmp r0, 0
	beq _081A7F30
	bl EnableBothScriptContexts
	adds r0, r4, 0
	bl DestroyTask
_081A7F30:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A7EE4

	thumb_func_start sub_81A7F38
sub_81A7F38: @ 81A7F38
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0
	bne _081A7F50
	b _081A807A
_081A7F50:
	movs r0, 0
	mov r8, r0
_081A7F54:
	mov r0, sp
	add r0, r8
	mov r1, r8
	strb r1, [r0]
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x2
	bls _081A7F54
	movs r5, 0
_081A7F6C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	mov r2, sp
	add r2, r8
	ldrb r3, [r2]
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _081A7F6C
	movs r1, 0
	mov r8, r1
_081A7FB0:
	movs r0, 0
	mov r10, r0
	mov r4, sp
	add r4, r8
	ldrb r1, [r4]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r7, r1, r0
	adds r0, r7, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r7, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	str r4, [sp, 0x8]
	cmp r5, r6
	bcc _081A8044
	adds r0, r7, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	beq _081A7FFC
	movs r0, 0x1
	mov r10, r0
	b _081A8048
	.pool
_081A7FFC:
	adds r0, r7, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	b _081A8014
_081A800E:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A8014:
	cmp r4, 0x3
	bhi _081A8048
	adds r1, r4, 0
	adds r1, 0xD
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r1, r9
	adds r2, r4, 0
	bl CalculatePPWithBonus
	lsls r0, 24
	lsrs r6, r0, 24
	adds r1, r4, 0
	adds r1, 0x11
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r6
	bcs _081A800E
_081A8044:
	movs r1, 0x1
	mov r10, r1
_081A8048:
	mov r0, r10
	cmp r0, 0x1
	bne _081A806C
	ldr r0, [sp, 0x8]
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	bl sub_81A7594
	ldr r0, [sp, 0x4]
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0
	beq _081A807A
_081A806C:
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x2
	bls _081A7FB0
_081A807A:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7F38

	thumb_func_start sub_81A8090
sub_81A8090: @ 81A8090
	push {r4,lr}
	ldr r4, =gSpecialVar_Result
	bl InBattlePike
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8090

	thumb_func_start InBattlePike
InBattlePike: @ 81A80A8
	push {lr}
	movs r2, 0
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r3, =0xfffffea1
	adds r0, r1, r3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _081A80CA
	movs r0, 0xB3
	lsls r0, 1
	cmp r1, r0
	beq _081A80CA
	adds r0, 0x1
	cmp r1, r0
	bne _081A80CC
_081A80CA:
	movs r2, 0x1
_081A80CC:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end InBattlePike

	thumb_func_start sub_81A80DC
sub_81A80DC: @ 81A80DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, =gSpecialVar_Result
	movs r0, 0
	strh r0, [r4]
	movs r0, 0x1
	bl sub_81A8590
	lsls r0, 24
	cmp r0, 0
	beq _081A8138
	movs r0, 0x1
	strh r0, [r4]
	bl Random
	ldr r5, =gSaveBlock2Ptr
	ldr r4, [r5]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	movs r3, 0xE1
	lsls r3, 4
	adds r4, r3
	movs r1, 0x7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r2, [r5]
	adds r2, r3
	ldrb r1, [r2]
	movs r0, 0x79
	negs r0, r0
	ands r0, r1
	movs r1, 0x40
	b _081A8248
	.pool
_081A8138:
	bl Random
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	movs r3, 0xE1
	lsls r3, 4
	adds r4, r3
	movs r1, 0x7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r7]
	adds r0, r3
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	movs r6, 0x8
	cmp r0, 0
	beq _081A8172
	movs r6, 0x6
_081A8172:
	adds r0, r6, 0
	bl AllocZeroed
	adds r5, r0, 0
	movs r2, 0
	movs r3, 0
	cmp r2, r6
	bcs _081A81BE
	adds r4, r7, 0
_081A8184:
	ldr r0, [r4]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A81B0
	cmp r2, 0x1
	beq _081A81B4
	cmp r2, 0x4
	beq _081A81B4
	adds r1, r3, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r1, r5, r1
	strb r2, [r1]
	b _081A81B4
	.pool
_081A81B0:
	adds r0, r5, r2
	strb r2, [r0]
_081A81B4:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r6
	bcc _081A8184
_081A81BE:
	bl Random
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	bl __modsi3
	adds r0, r5, r0
	ldrb r0, [r0]
	movs r6, 0xE1
	lsls r6, 4
	adds r4, r6
	movs r1, 0xF
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r4]
	movs r0, 0x79
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, 0
	bl Free
	ldr r0, [r7]
	adds r0, r6
	ldrb r1, [r0]
	movs r0, 0x78
	ands r0, r1
	cmp r0, 0x18
	bne _081A821C
	bl sub_81A7974
	lsls r0, 24
	cmp r0, 0
	bne _081A821C
	ldr r2, [r7]
	adds r2, r6
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2]
_081A821C:
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	movs r4, 0xE1
	lsls r4, 4
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x78
	ands r0, r1
	cmp r0, 0x38
	bne _081A824C
	bl sub_81A8554
	lsls r0, 24
	cmp r0, 0
	bne _081A824C
	ldr r2, [r5]
	adds r2, r4
	ldrb r1, [r2]
	movs r0, 0x79
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
_081A8248:
	orrs r0, r1
	strb r0, [r2]
_081A824C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A80DC

	thumb_func_start sub_81A825C
sub_81A825C: @ 81A825C
	ldr r1, =gSpecialVar_Result
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r2, 0xE1
	lsls r2, 4
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A825C

	thumb_func_start sub_81A827C
sub_81A827C: @ 81A827C
	ldr r2, =gSpecialVar_Result
	ldr r1, =gUnknown_0861266C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r3, 0xE1
	lsls r3, 4
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A827C

	thumb_func_start sub_81A82A4
sub_81A82A4: @ 81A82A4
	push {r4-r7,lr}
	lsls r0, 24
	movs r7, 0x6
	cmp r0, 0
	bne _081A82B0
	movs r7, 0x1
_081A82B0:
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0xE
	bl __udivsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r5, r4, 0
_081A82D2:
	lsls r0, r6, 24
	lsrs r0, 24
	adds r1, r7, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r5]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r2, r0, 0x1
	cmp r3, r2
	bge _081A831A
	ldr r0, =0x00000cb4
	adds r1, r0
	b _081A8314
	.pool
_081A830C:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A831A
_081A8314:
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A830C
_081A831A:
	ldr r0, [r5]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r3, r0
	bne _081A82D2
	ldr r5, =gTrainerBattleOpponent_A
	strh r4, [r5]
	ldr r1, =gFacilityTrainers
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	ldrh r0, [r5]
	movs r1, 0
	bl SetBattleFacilityTrainerGfxId
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xD
	bhi _081A8356
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A8356:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A82A4

	thumb_func_start sub_81A8374
sub_81A8374: @ 81A8374
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0xE
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, =gFacilityTrainers
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	lsls r7, r5, 24
	adds r6, r4, 0
_081A83A0:
	lsls r0, r5, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r6]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r2, r0, 0x1
	cmp r3, r2
	bge _081A83EE
	ldr r0, =0x00000cb4
	adds r1, r0
	b _081A83E8
	.pool
_081A83E0:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A83EE
_081A83E8:
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A83E0
_081A83EE:
	ldr r0, [r6]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r3, r0
	bne _081A83A0
	ldr r5, =gTrainerBattleOpponent_A
	strh r4, [r5]
	ldrh r0, [r5]
	movs r1, 0
	bl SetBattleFacilityTrainerGfxId
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xE
	bhi _081A8424
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A8424:
	adds r5, r3, 0
_081A8426:
	lsrs r0, r7, 24
	movs r1, 0x1
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r5]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r3, r0
	bge _081A8466
	adds r2, 0x2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _081A8466
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	subs r2, 0x2
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r0, =0x00000cb4
	adds r1, r0
_081A8458:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A8466
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A8458
_081A8466:
	ldr r0, [r5]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _081A8426
	ldr r5, =gTrainerBattleOpponent_B
	strh r4, [r5]
	ldrh r0, [r5]
	movs r1, 0x1
	bl SetBattleFacilityTrainerGfxId
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xD
	bhi _081A849A
	subs r0, 0x2
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A849A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8374

	thumb_func_start sub_81A84B4
sub_81A84B4: @ 81A84B4
	push {r4,r5,lr}
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A84C0:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r1, r4
	adds r1, r0
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xD
	bls _081A84C0
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A84B4

	thumb_func_start sub_81A84EC
sub_81A84EC: @ 81A84EC
	push {lr}
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	bne _081A8524
	ldr r3, =gTrainerBattleOpponent_A
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _081A8542
	ldr r2, =gFacilityTrainers
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl FrontierSpeechToString
	b _081A8542
	.pool
_081A8524:
	cmp r0, 0x1
	bne _081A8542
	ldr r3, =gTrainerBattleOpponent_B
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _081A8542
	ldr r2, =gFacilityTrainers
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl FrontierSpeechToString
_081A8542:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A84EC

	thumb_func_start sub_81A8554
sub_81A8554: @ 81A8554
	push {r4-r6,lr}
	ldr r5, =gPlayerParty
	movs r6, 0
	movs r4, 0
_081A855C:
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _081A856E
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A856E:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, 0x64
	cmp r4, 0x2
	bls _081A855C
	cmp r6, 0x1
	bhi _081A8588
	movs r0, 0x1
	b _081A858A
	.pool
_081A8588:
	movs r0, 0
_081A858A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A8554

	thumb_func_start sub_81A8590
sub_81A8590: @ 81A8590
	push {r4-r6,lr}
	lsls r0, 24
	movs r6, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r3, =0x00000e04
	adds r2, r3
	adds r2, r1
	lsrs r4, r0, 24
	ldrh r2, [r2]
	adds r0, r4, r2
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x5
	bl GetPlayerSymbolCountForFacility
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	blt _081A85F0
	cmp r2, 0x1
	bgt _081A85F0
	ldr r1, =gUnknown_086125DC
	adds r0, r2, 0
	adds r0, 0x14
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r1, 0x17]
	subs r0, r1
	cmp r4, r0
	bne _081A8634
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	b _081A8634
	.pool
_081A85F0:
	ldr r5, =gUnknown_086125DC
	movs r0, 0x5
	lsls r3, r0, 2
	adds r0, r3, r5
	ldrb r1, [r0]
	adds r0, r5, 0x3
	adds r0, r3, r0
	ldrb r2, [r0]
	subs r1, r2
	cmp r4, r1
	bne _081A8610
	movs r6, 0x3
	b _081A8634
	.pool
_081A8610:
	adds r0, r5, 0x1
	adds r0, r3, r0
	ldrb r1, [r0]
	subs r0, r1, r2
	cmp r4, r0
	beq _081A8632
	cmp r4, r1
	bls _081A8634
	subs r0, r4, r1
	adds r0, r2
	adds r1, r5, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A8634
_081A8632:
	movs r6, 0x4
_081A8634:
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A8590

	thumb_func_start sub_81A863C
sub_81A863C: @ 81A863C
	push {r4,lr}
	ldr r4, =gSpecialVar_Result
	movs r0, 0
	bl sub_81A8590
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A863C

	thumb_func_start sub_81A8658
sub_81A8658: @ 81A8658
	push {r4,lr}
	ldr r3, =gUnknown_08612675
	ldr r2, =gSpecialVar_0x8007
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	lsls r0, r1, 1
	adds r0, r1
	ldrh r2, [r2]
	adds r0, r2
	adds r0, r3
	ldrb r4, [r0]
	adds r0, r4, 0
	bl sub_81A7F38
	ldr r0, =gSpecialVar_Result
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8658

	thumb_func_start sub_81A869C
sub_81A869C: @ 81A869C
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8005
	ldrb r1, [r0]
	movs r0, 0xE1
	lsls r0, 4
	adds r2, r0
	lsls r1, 7
	ldrb r3, [r2]
	movs r0, 0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A869C

	thumb_func_start sub_81A86C0
sub_81A86C0: @ 81A86C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, =gSpecialVar_Result
	movs r0, 0x1
	strh r0, [r1]
	movs r0, 0
	mov r10, r0
_081A86D4:
	movs r0, 0
	mov r9, r0
	movs r0, 0x64
	mov r1, r10
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r7, r1, r0
	adds r0, r7, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r7, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, r5
	bcc _081A8762
	adds r0, r7, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A8762
	adds r0, r7, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r6, 0
	b _081A8732
	.pool
_081A872C:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A8732:
	cmp r6, 0x3
	bhi _081A8766
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r1, r8
	adds r2, r6, 0
	bl CalculatePPWithBonus
	lsls r0, 24
	lsrs r5, r0, 24
	adds r1, r6, 0
	adds r1, 0x11
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r5
	bcs _081A872C
_081A8762:
	movs r0, 0x1
	mov r9, r0
_081A8766:
	mov r0, r9
	cmp r0, 0x1
	bne _081A8778
	ldr r1, =gSpecialVar_Result
	movs r0, 0
	strh r0, [r1]
	b _081A8786
	.pool
_081A8778:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	cmp r0, 0x2
	bls _081A86D4
_081A8786:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A86C0

	thumb_func_start sub_81A8794
sub_81A8794: @ 81A8794
	push {r4-r7,lr}
	movs r5, 0
	ldr r7, =gSaveBlock1Ptr
	ldr r6, =gSaveBlock2Ptr
_081A879C:
	ldr r0, [r6]
	lsls r4, r5, 1
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	movs r2, 0xEA
	lsls r2, 1
	adds r1, r2
	ldr r0, [r7]
	adds r0, r1
	movs r1, 0xC
	bl GetMonData
	ldr r1, [r6]
	ldr r2, =0x00000e12
	adds r1, r2
	adds r1, r4
	strh r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A879C
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8794

	thumb_func_start sub_81A87E8
sub_81A87E8: @ 81A87E8
	push {r4,lr}
	movs r4, 0
_081A87EC:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r3, r4, 1
	ldr r1, =0x00000caa
	adds r0, r2, r1
	adds r0, r3
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty - 100
	adds r0, r1
	ldr r1, =0x00000e12
	adds r3, r1
	adds r2, r3
	movs r1, 0xC
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A87EC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A87E8

	thumb_func_start sub_81A8830
sub_81A8830: @ 81A8830
	push {r4-r6,lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r4, 0
	strb r4, [r1]
	ldr r1, [r3]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r4, [r0]
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r3, [r3]
	ldr r0, =0x00000cdc
	adds r2, r3, r0
	ldr r1, =gUnknown_08612690
	lsls r0, r5, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _081A887C
	lsls r1, r5, 1
	ldr r2, =0x00000e04
	adds r0, r3, r2
	adds r0, r1
	strh r4, [r0]
_081A887C:
	ldr r0, =gTrainerBattleOpponent_A
	strh r4, [r0]
	ldr r1, =gBattleOutcome
	movs r0, 0
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8830

	thumb_func_start sub_81A88B0
sub_81A88B0: @ 81A88B0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x6
	bl GetMonData
	cmp r0, 0
	bne _081A8904
	adds r0, r4, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x33
	beq _081A88D6
	cmp r0, 0x16
	bne _081A8904
_081A88D6:
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bls _081A8904
	subs r0, 0x5
	cmp r5, r0
	bgt _081A8904
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A8904
	movs r0, 0
	b _081A8906
	.pool
_081A8904:
	movs r0, 0x1
_081A8906:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A88B0

	thumb_func_start sub_81A890C
sub_81A890C: @ 81A890C
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =0x0000017b
	cmp r2, r0
	bne _081A8920
	movs r1, 0
	b _081A892A
	.pool
_081A8920:
	ldr r0, =0x00000149
	movs r1, 0x2
	cmp r2, r0
	bne _081A892A
	movs r1, 0x1
_081A892A:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A890C

	thumb_func_start sub_81A8934
@ void sub_81A8934(u8)
sub_81A8934: @ 81A8934
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gUnknown_0203CE50
	ldr r0, [r4]
	cmp r0, 0
	bne _081A894A
	movs r0, 0x44
	bl AllocZeroed
	str r0, [r4]
_081A894A:
	ldr r0, [r4]
	adds r0, 0x41
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8934

	thumb_func_start sub_81A895C
sub_81A895C: @ 81A895C
	push {r4,lr}
	ldr r4, =gUnknown_0203CE50
	ldr r0, [r4]
	cmp r0, 0
	beq _081A896E
	bl Free
	movs r0, 0
	str r0, [r4]
_081A896E:
	movs r0, 0xFF
	movs r1, 0
	movs r2, 0
	bl GetEventObjectIdByLocalIdAndMap
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, =gEventObjects
	adds r0, r1
	bl EventObjectClearHeldMovementIfFinished
	bl sub_80D338C
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A895C

	thumb_func_start sub_81A89A0
sub_81A89A0: @ 81A89A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0
	mov r9, r1
	movs r3, 0
	mov r10, r3
	mov r8, r3
_081A89C4:
	mov r0, r8
	lsls r4, r0, 1
	adds r1, r4, r0
	lsls r1, 3
	add r1, r9
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, =gUnknown_0203CE50
	ldr r0, [r0]
	adds r0, 0x41
	ldrb r0, [r0]
	movs r2, 0xA6
	lsls r2, 2
	cmp r0, 0
	bne _081A89F8
	subs r2, 0x48
_081A89F8:
	ldr r0, =0x0000024f
	cmp r1, r0
	bls _081A8AD4
	subs r1, r2
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8A08
	adds r0, r1, 0x7
_081A8A08:
	asrs r2, r0, 3
	lsls r0, r2, 24
	lsrs r0, 24
	cmp r0, 0x4
	bhi _081A8AD4
	ldr r3, [sp]
	cmp r0, r3
	bne _081A8AD4
	lsls r0, r2, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bhi _081A8AD4
	movs r1, 0
	movs r2, 0
	cmp r5, 0x1
	beq _081A8A58
	cmp r5, 0x1
	bgt _081A8A44
	cmp r5, 0
	beq _081A8A4E
	b _081A8AD4
	.pool
_081A8A44:
	cmp r5, 0x2
	beq _081A8A64
	cmp r5, 0x3
	beq _081A8A70
	b _081A8AD4
_081A8A4E:
	ldr r7, =gUnknown_08612698
	movs r1, 0x1
	b _081A8A74
	.pool
_081A8A58:
	ldr r7, =gUnknown_0861269C
	movs r2, 0x1
	b _081A8A74
	.pool
_081A8A64:
	ldr r7, =gUnknown_086126A0
	movs r1, 0xFF
	b _081A8A74
	.pool
_081A8A70:
	ldr r7, =gUnknown_086126A4
	movs r2, 0xFF
_081A8A74:
	mov r3, r8
	adds r0, r4, r3
	lsls r0, 3
	mov r3, r9
	adds r4, r0, r3
	lsls r0, r1, 24
	asrs r0, 24
	ldrh r1, [r4, 0x4]
	adds r0, r1
	strh r0, [r4, 0x4]
	lsls r0, r2, 24
	asrs r0, 24
	ldrh r3, [r4, 0x6]
	adds r0, r3
	strh r0, [r4, 0x6]
	ldrb r0, [r4]
	ldr r6, =gSaveBlock1Ptr
	ldr r2, [r6]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl GetEventObjectIdByLocalIdAndMap
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x10
	beq _081A8ACC
	mov r0, r8
	adds r1, r5, 0
	bl sub_81A8D60
	ldrb r4, [r4]
	mov r10, r4
	mov r0, r10
	ldr r2, [r6]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	adds r3, r7, 0
	bl ScriptMovement_StartObjectMovementScript
	b _081A8AD4
	.pool
_081A8ACC:
	mov r0, r8
	adds r1, r5, 0
	bl sub_81A8D94
_081A8AD4:
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x3F
	bhi _081A8AE4
	b _081A89C4
_081A8AE4:
	mov r0, r10
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A89A0

	thumb_func_start sub_81A8AF8
sub_81A8AF8: @ 81A8AF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, =gUnknown_0203CE50
	ldr r2, [r1]
	cmp r2, 0
	bne _081A8B0C
	b _081A8D4A
_081A8B0C:
	adds r0, r2, 0
	adds r0, 0x41
	ldrb r0, [r0]
	movs r3, 0xA6
	lsls r3, 2
	mov r10, r3
	cmp r0, 0
	bne _081A8B22
	movs r0, 0x94
	lsls r0, 2
	mov r10, r0
_081A8B22:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r3, 0xC7
	lsls r3, 4
	adds r7, r0, r3
	movs r0, 0
	mov r9, r0
	adds r0, r2, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r9, r0
	bcc _081A8B3C
	b _081A8D4A
_081A8B3C:
	mov r8, r1
_081A8B3E:
	mov r1, r8
	ldr r0, [r1]
	mov r2, r9
	lsls r4, r2, 2
	adds r0, r4
	ldrb r0, [r0, 0x1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 3
	adds r1, r7
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r0, 16
	mov r3, r10
	subs r1, r0, r3
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8B76
	adds r0, r1, 0x7
_081A8B76:
	asrs r0, 3
	lsls r0, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldrb r1, [r1]
	subs r0, r1
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	blt _081A8B96
	cmp r1, 0x3
	bne _081A8BAC
_081A8B96:
	movs r0, 0x3
	negs r0, r0
	movs r6, 0
	cmp r1, r0
	bne _081A8BB4
	b _081A8BB2
	.pool
_081A8BAC:
	movs r6, 0x2
	cmp r1, 0
	ble _081A8BB4
_081A8BB2:
	movs r6, 0x1
_081A8BB4:
	ldr r5, =gUnknown_0203CE50
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl GetEventObjectIdByLocalIdAndMap
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x10
	bne _081A8BDC
	b _081A8D32
_081A8BDC:
	ldr r0, =gEventObjects
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x18]
	lsls r0, 28
	lsrs r0, 28
	adds r1, r0, 0
	cmp r6, 0
	bne _081A8C9C
	cmp r0, 0x2
	beq _081A8C60
	cmp r0, 0x2
	bgt _081A8C0C
	cmp r0, 0x1
	beq _081A8C30
	b _081A8D32
	.pool
_081A8C0C:
	cmp r0, 0x3
	beq _081A8C48
	cmp r0, 0x4
	beq _081A8C16
	b _081A8D32
_081A8C16:
	ldr r3, =gUnknown_086126AE
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x7
	b _081A8C72
	.pool
_081A8C30:
	ldr r3, =gUnknown_086126A8
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0xA
	b _081A8C72
	.pool
_081A8C48:
	ldr r3, =gUnknown_086126AA
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x8
	b _081A8C72
	.pool
_081A8C60:
	ldr r3, =gUnknown_086126AC
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x9
_081A8C72:
	strb r1, [r0, 0x9]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl ScriptMovement_StartObjectMovementScript
	b _081A8D32
	.pool
_081A8C9C:
	cmp r6, 0x1
	bne _081A8D32
	cmp r0, 0x2
	beq _081A8D00
	cmp r0, 0x2
	bgt _081A8CAE
	cmp r0, 0x1
	beq _081A8CD0
	b _081A8D32
_081A8CAE:
	cmp r1, 0x3
	beq _081A8CE8
	cmp r1, 0x4
	bne _081A8D32
	ldr r3, =gUnknown_086126AA
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x8
	b _081A8D12
	.pool
_081A8CD0:
	ldr r3, =gUnknown_086126AC
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x9
	b _081A8D12
	.pool
_081A8CE8:
	ldr r3, =gUnknown_086126AE
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x7
	b _081A8D12
	.pool
_081A8D00:
	ldr r3, =gUnknown_086126A8
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0xA
_081A8D12:
	strb r1, [r0, 0x9]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl ScriptMovement_StartObjectMovementScript
_081A8D32:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r3, r8
	ldr r0, [r3]
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r9, r0
	bcs _081A8D4A
	b _081A8B3E
_081A8D4A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8AF8

	thumb_func_start sub_81A8D60
sub_81A8D60: @ 81A8D60
	push {r4,lr}
	ldr r4, =gUnknown_0203CE50
	ldr r3, [r4]
	adds r2, r3, 0
	adds r2, 0x40
	ldrb r2, [r2]
	lsls r2, 2
	adds r3, r2
	strb r0, [r3, 0x1]
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0x40
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0
	strb r1, [r2]
	ldr r1, [r4]
	adds r1, 0x40
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8D60

	thumb_func_start sub_81A8D94
sub_81A8D94: @ 81A8D94
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r5, r0, r1
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r1, r5
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gUnknown_0203CE50
	ldr r0, [r0]
	adds r0, 0x41
	ldrb r0, [r0]
	movs r1, 0xA6
	lsls r1, 2
	cmp r0, 0
	bne _081A8DDA
	subs r1, 0x48
_081A8DDA:
	subs r1, r2, r1
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8DE4
	adds r0, r1, 0x7
_081A8DE4:
	asrs r0, 3
	lsls r0, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	subs r0, r6
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	blt _081A8DFC
	cmp r1, 0x3
	bne _081A8E08
_081A8DFC:
	movs r2, 0
	b _081A8E1A
	.pool
_081A8E08:
	cmp r1, 0
	bgt _081A8E14
	movs r0, 0x3
	negs r0, r0
	cmp r1, r0
	bne _081A8E18
_081A8E14:
	movs r2, 0x1
	b _081A8E1A
_081A8E18:
	movs r2, 0x2
_081A8E1A:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r5
	ldrb r0, [r1, 0x9]
	adds r3, r0, 0
	cmp r2, 0
	bne _081A8E4C
	cmp r0, 0x8
	beq _081A8E72
	cmp r0, 0x8
	bgt _081A8E38
	cmp r0, 0x7
	beq _081A8E48
	b _081A8E76
_081A8E38:
	cmp r0, 0x9
	beq _081A8E44
	cmp r0, 0xA
	bne _081A8E76
	movs r0, 0x7
	b _081A8E74
_081A8E44:
	movs r0, 0x8
	b _081A8E74
_081A8E48:
	movs r0, 0x9
	b _081A8E74
_081A8E4C:
	cmp r2, 0x1
	bne _081A8E76
	cmp r0, 0x8
	beq _081A8E6A
	cmp r0, 0x8
	bgt _081A8E5E
	cmp r0, 0x7
	beq _081A8E72
	b _081A8E76
_081A8E5E:
	cmp r3, 0x9
	beq _081A8E6E
	cmp r3, 0xA
	bne _081A8E76
	movs r0, 0x8
	b _081A8E74
_081A8E6A:
	movs r0, 0x9
	b _081A8E74
_081A8E6E:
	movs r0, 0x7
	b _081A8E74
_081A8E72:
	movs r0, 0xA
_081A8E74:
	strb r0, [r1, 0x9]
_081A8E76:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A8D94

	thumb_func_start sub_81A8E7C
sub_81A8E7C: @ 81A8E7C
	push {lr}
	ldr r1, =gUnknown_08613EE0
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8E7C

	thumb_func_start sub_81A8E9C
sub_81A8E9C: @ 81A8E9C
	push {r4-r6,lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r4, =0x00000ca9
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r2, 0
	strb r2, [r1]
	ldr r1, [r3]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r2, [r0]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	cmp r5, 0
	beq _081A8EF0
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 6
	b _081A8EFC
	.pool
_081A8EF0:
	ldr r0, [r3]
	ldr r6, =0x00000cdc
	adds r0, r6
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 5
_081A8EFC:
	ands r2, r0
	cmp r2, 0
	bne _081A8F14
	ldr r0, [r3]
	lsls r1, r5, 1
	ldr r3, =0x00000e1a
	adds r0, r3
	adds r0, r1
	strh r2, [r0]
	adds r0, r5, 0
	bl sub_81AAA7C
_081A8F14:
	bl sub_81C4EEC
	ldr r0, =gTrainerBattleOpponent_A
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattleOutcome
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8E9C

	thumb_func_start sub_81A8F38
sub_81A8F38: @ 81A8F38
	push {r4,lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x6
	bls _081A8F54
	b _081A903A
_081A8F54:
	lsls r0, 2
	ldr r1, =_081A8F70
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A8F70:
	.4byte _081A8F8C
	.4byte _081A8F9C
	.4byte _081A8FB4
	.4byte _081A8FE4
	.4byte _081A8FF8
	.4byte _081A9010
	.4byte _081A9028
_081A8F8C:
	ldr r0, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000e18
	b _081A8FFE
	.pool
_081A8F9C:
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	lsls r1, r4, 1
	ldr r3, =0x00000e1a
	adds r0, r3
	adds r0, r1
	ldrh r0, [r0]
	b _081A9038
	.pool
_081A8FB4:
	cmp r4, 0
	beq _081A8FCC
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	b _081A9030
	.pool
_081A8FCC:
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	b _081A9036
	.pool
_081A8FE4:
	ldr r0, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r2, =0x00000e1a
	adds r1, r2
	b _081A9000
	.pool
_081A8FF8:
	ldr r0, =gSpecialVar_Result
	ldr r1, [r3]
	ldr r3, =0x00000e1c
_081A8FFE:
	adds r1, r3
_081A9000:
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A903A
	.pool
_081A9010:
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	b _081A9036
	.pool
_081A9028:
	ldr r2, =gSpecialVar_Result
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
_081A9030:
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
_081A9036:
	ands r0, r1
_081A9038:
	strh r0, [r2]
_081A903A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8F38

	thumb_func_start sub_81A9048
sub_81A9048: @ 81A9048
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000ca9
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A9098
	cmp r0, 0x1
	bgt _081A9078
	cmp r0, 0
	beq _081A9082
	b _081A9126
	.pool
_081A9078:
	cmp r0, 0x2
	beq _081A90B0
	cmp r0, 0x7
	beq _081A911C
	b _081A9126
_081A9082:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000e18
	adds r0, r2, r3
	strh r1, [r0]
	b _081A9126
	.pool
_081A9098:
	lsls r1, 1
	ldr r3, =0x00000e1a
	adds r0, r2, r3
	adds r0, r1
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A9126
	.pool
_081A90B0:
	cmp r1, 0
	beq _081A90E4
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A90D0
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 6
	b _081A90F6
	.pool
_081A90D0:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r2, =0xffffdfff
	b _081A910C
	.pool
_081A90E4:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A9104
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 5
_081A90F6:
	orrs r1, r2
	str r1, [r0]
	b _081A9126
	.pool
_081A9104:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r2, =0xffffefff
_081A910C:
	ands r1, r2
	str r1, [r0]
	b _081A9126
	.pool
_081A911C:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000e2a
	adds r0, r2, r3
	strb r1, [r0]
_081A9126:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9048

	thumb_func_start sub_81A9134
sub_81A9134: @ 81A9134
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl save_serialize_map
	movs r0, 0x1
	bl TrySavingData
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9134

	thumb_func_start sub_81A917C
sub_81A917C: @ 81A917C
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x29
	bls _081A91CC
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08613F34
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000e18
	adds r4, r1
	b _081A91EA
	.pool
_081A91CC:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08613F28
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r2, =0x00000e18
	adds r4, r2
_081A91EA:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A917C

	thumb_func_start sub_81A91FC
sub_81A91FC: @ 81A91FC
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl AddBagItem
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _081A9244
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gSpecialVar_Result
	strh r5, [r0]
	b _081A924A
	.pool
_081A9244:
	ldr r1, =gSpecialVar_Result
	movs r0, 0
	strh r0, [r1]
_081A924A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A91FC

	thumb_func_start sub_81A9254
sub_81A9254: @ 81A9254
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, =gSaveBlock2Ptr
_081A925A:
	bl Random
	ldr r1, [r5]
	lsls r2, r4, 1
	ldr r3, =0x00000e22
	adds r1, r3
	adds r1, r2
	strh r0, [r1]
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A925A
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e2a
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9254

	thumb_func_start CalculateBattlePyramidItemBallItemId
CalculateBattlePyramidItemBallItemId: @ 81A9290
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	mov r10, r0
	adds r2, 0x9
	adds r0, r1, r2
	ldrh r0, [r0]
	str r0, [sp]
	mov r2, r10
	lsls r0, r2, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r0, 0x13
	bls _081A92DE
	movs r0, 0x13
	mov r8, r0
_081A92DE:
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gSpecialVar_LastTalked
	ldrh r4, [r1]
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r0, [r0, 0x1]
	subs r4, r0
	subs r7, r4, 0x1
	ldr r1, [r5]
	lsrs r0, r7, 31
	adds r0, r7, r0
	asrs r0, 1
	lsls r0, 1
	ldr r2, =0x00000e22
	adds r1, r2
	adds r1, r0
	ldrh r6, [r1]
	adds r0, r6, 0
	bl SeedRng2
	movs r5, 0
	mov r0, r8
	lsls r0, 2
	mov r9, r0
	cmp r5, r4
	bge _081A9332
_081A9318:
	bl Random2
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r5, 0x1
	adds r0, r7, 0x1
	cmp r5, r0
	blt _081A9318
_081A9332:
	ldr r0, =gUnknown_08613B3A
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r5, [r0]
	ldr r1, =gUnknown_08613ABC
	ldr r3, =gSpecialVar_0x8000
	ldr r4, =gSpecialVar_0x8001
	cmp r5, 0x3E
	bhi _081A935E
	lsls r2, r5, 1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r6, r0
	blt _081A935E
	adds r0, r2, r1
_081A9350:
	adds r0, 0x2
	adds r5, 0x1
	cmp r5, 0x3E
	bhi _081A935E
	ldrb r2, [r0]
	cmp r6, r2
	bge _081A9350
_081A935E:
	mov r0, r10
	cmp r0, 0
	beq _081A9394
	ldr r2, =gUnknown_0861392C
	b _081A9396
	.pool
_081A9394:
	ldr r2, =gUnknown_0861379C
_081A9396:
	lsls r0, r5, 1
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	mov r1, r9
	add r1, r8
	lsls r1, 2
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	movs r0, 0x1
	strh r0, [r4]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end CalculateBattlePyramidItemBallItemId

	thumb_func_start sub_81A93C8
sub_81A93C8: @ 81A93C8
	push {r4,r5,lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r3, r0, r1
	movs r2, 0
	ldr r4, =gSpecialVar_LastTalked
	b _081A93F4
	.pool
_081A93E4:
	adds r2, 0x1
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 3
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _081A940A
_081A93F4:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r3
	ldrb r0, [r1]
	ldrh r5, [r4]
	cmp r0, r5
	bne _081A93E4
	ldr r0, =0x00007fff
	strh r0, [r1, 0x4]
	strh r0, [r1, 0x6]
_081A940A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A93C8

	thumb_func_start sub_81A9414
sub_81A9414: @ 81A9414
	ldr r1, =gFacilityTrainers
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A9414

	thumb_func_start sub_81A9424
sub_81A9424: @ 81A9424
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	movs r0, 0
	mov r9, r0
	movs r7, 0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0
	mov r8, r1
	ldr r2, =gEventObjects
	ldr r0, =gSelectedEventObject
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x8]
	bl sub_81A9AA8
	lsls r0, 16
	lsrs r5, r0, 16
	movs r6, 0
	ldr r2, =gUnknown_08613C1C
	ldr r0, =gFacilityTrainers
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A9488
	ldrb r2, [r2, 0x1]
	mov r9, r2
	b _081A94AE
	.pool
_081A9488:
	adds r6, 0x1
	cmp r6, 0x31
	bhi _081A94AE
	ldr r4, =gUnknown_08613C1C
	lsls r3, r6, 1
	adds r2, r3, r4
	ldr r0, =gFacilityTrainers
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A9488
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	mov r9, r0
_081A94AE:
	ldr r3, =gUnknown_08613ED8
	ldr r2, =gEventObjects
	ldr r0, =gSelectedEventObject
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x8]
	subs r0, 0x1
	adds r0, r3
	ldrb r0, [r0]
	str r0, [sp]
	movs r6, 0
	mov r3, r9
	lsls r3, 2
	mov r9, r3
_081A94D0:
	ldr r0, [sp]
	cmp r0, 0x8
	bls _081A94D8
	b _081A95E8
_081A94D8:
	lsls r0, 2
	ldr r1, =_081A94FC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A94FC:
	.4byte _081A9520
	.4byte _081A9530
	.4byte _081A9572
	.4byte _081A95B4
	.4byte _081A95BA
	.4byte _081A95C0
	.4byte _081A95C6
	.4byte _081A95D2
	.4byte _081A95DE
_081A9520:
	mov r0, sp
	movs r1, 0x8
	movs r2, 0
	bl sub_81A9998
	lsls r0, 24
	lsrs r7, r0, 24
	b _081A95EE
_081A9530:
	movs r6, 0
	ldr r2, =0x7fff0000
	mov r4, r8
	adds r4, 0x4
	mov r5, r8
	b _081A9560
	.pool
_081A9540:
	ldrb r0, [r5, 0x1]
	cmp r0, 0x3B
	bne _081A955A
	movs r1, 0
	ldrsh r0, [r4, r1]
	asrs r1, r2, 16
	cmp r0, r1
	beq _081A955A
	movs r3, 0x2
	ldrsh r0, [r4, r3]
	cmp r0, r1
	beq _081A955A
	adds r7, 0x1
_081A955A:
	adds r4, 0x18
	adds r5, 0x18
	adds r6, 0x1
_081A9560:
	str r2, [sp, 0x4]
	bl sub_81AAA40
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x4]
	cmp r6, r0
	blt _081A9540
	b _081A95EE
_081A9572:
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r7, [r0, 0x1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e2a
	adds r0, r1
	ldrb r2, [r0]
	ldr r1, =gBitTable
	movs r6, 0x7
_081A958E:
	ldr r0, [r1]
	ands r0, r2
	cmp r0, 0
	beq _081A9598
	subs r7, 0x1
_081A9598:
	adds r1, 0x4
	subs r6, 0x1
	cmp r6, 0
	bge _081A958E
	b _081A95EE
	.pool
_081A95B4:
	mov r0, sp
	movs r1, 0x8
	b _081A95D6
_081A95BA:
	mov r0, sp
	movs r1, 0x8
	b _081A95CA
_081A95C0:
	mov r0, sp
	movs r1, 0x10
	b _081A95D6
_081A95C6:
	mov r0, sp
	movs r1, 0x10
_081A95CA:
	movs r2, 0x1
	bl sub_81A9998
	b _081A95E8
_081A95D2:
	mov r0, sp
	movs r1, 0x18
_081A95D6:
	movs r2, 0x2
	bl sub_81A9998
	b _081A95E8
_081A95DE:
	mov r0, sp
	movs r1, 0x18
	movs r2, 0x1
	bl sub_81A9998
_081A95E8:
	cmp r6, 0
	bne _081A95EE
	b _081A94D0
_081A95EE:
	ldr r1, =gUnknown_08613EC0
	add r1, r9
	ldr r0, [sp]
	ldr r1, [r1]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r0, r7, 2
	adds r0, r1
	ldr r0, [r0]
	bl ShowFieldMessage
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9424

	thumb_func_start sub_81A9618
sub_81A9618: @ 81A9618
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r2, r0, 29
	ldr r4, =0x00000e1a
	adds r1, r4
	adds r1, r2
	ldrh r3, [r1]
	ldr r0, =0x000003e6
	cmp r3, r0
	bhi _081A963A
	adds r0, r3, 0x1
	strh r0, [r1]
_081A963A:
	ldr r0, [r5]
	adds r1, r0, r4
	adds r1, r2
	ldr r3, =0x00000e1e
	adds r0, r3
	adds r0, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bls _081A9650
	strh r1, [r0]
_081A9650:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9618

	thumb_func_start sub_81A966C
sub_81A966C: @ 81A966C
	push {r4,lr}
	ldr r4, =gSpecialVar_Result
	bl InBattlePyramid
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A966C

	thumb_func_start sub_81A9684
sub_81A9684: @ 81A9684
	push {r4,lr}
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A9698
	cmp r0, 0x1
	beq _081A96B4
	b _081A9754
	.pool
_081A9698:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000e68
	adds r0, r2
	strb r1, [r0]
	b _081A9754
	.pool
_081A96B4:
	ldr r4, =gSpecialVar_Result
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _081A9710
	cmp r0, 0x1
	bgt _081A9754
	cmp r0, 0
	bne _081A9754
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081A9754
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000e68
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x77
	bls _081A96F4
	movs r0, 0x78
	strb r0, [r1]
	b _081A96FC
	.pool
_081A96F4:
	ldr r0, =gSpecialVar_0x8007
	ldrh r0, [r0]
	bl PlaySE
_081A96FC:
	ldr r1, =gSpecialVar_Result
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _081A9754
	.pool
_081A9710:
	ldr r1, =gSpecialVar_0x8005
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A9750
	subs r0, 0x1
	strh r0, [r1]
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r2, =0x00000e68
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x78
	bls _081A973E
	movs r0, 0x78
	strb r0, [r1]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_081A973E:
	bl door_upload_tiles
	b _081A9754
	.pool
_081A9750:
	movs r0, 0x2
	strh r0, [r4]
_081A9754:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A9684

	thumb_func_start sub_81A975C
sub_81A975C: @ 81A975C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r1, 0
	mov r0, sp
	strh r1, [r0]
	movs r5, 0
	movs r0, 0x64
	mov r9, r0
	ldr r1, =gPlayerParty
	mov r8, r1
_081A9776:
	movs r4, 0
	adds r7, r5, 0x1
	mov r6, r9
	muls r6, r5
_081A977E:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A97A2
	subs r0, 0x1
	cmp r0, r5
	bne _081A97A2
	mov r1, r8
	adds r0, r6, r1
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
_081A97A2:
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A977E
	adds r5, r7, 0
	cmp r5, 0x5
	ble _081A9776
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A975C

	thumb_func_start sub_81A97C8
sub_81A97C8: @ 81A97C8
	push {lr}
	ldr r0, =sub_81A97DC
	movs r1, 0
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A97C8

	thumb_func_start sub_81A97DC
sub_81A97DC: @ 81A97DC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A980C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 5
	ldr r1, =gUnknown_08D856C8
	adds r0, r1
	ldr r1, =gPlttBufferUnfaded + 0xC0
	movs r2, 0x10
	bl CpuSet
	adds r0, r4, 0
	bl DestroyTask
_081A980C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A97DC

	thumb_func_start sub_81A9828
sub_81A9828: @ 81A9828
	push {lr}
	bl sub_809FDD4
	pop {r0}
	bx r0
	thumb_func_end sub_81A9828

	thumb_func_start sub_81A9834
sub_81A9834: @ 81A9834
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	movs r0, 0
	str r0, [sp]
_081A9844:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, [sp]
	lsls r1, r2, 1
	ldr r5, =0x00000caa
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	subs r5, r0, 0x1
	movs r0, 0
	str r0, [sp, 0x4]
	movs r2, 0x64
	adds r1, r5, 0
	muls r1, r2
	str r1, [sp, 0x8]
	movs r0, 0x8E
	lsls r0, 2
	adds r6, r1, r0
	movs r1, 0
	str r1, [sp, 0x10]
_081A986C:
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	ldr r3, =gPlayerParty
	ldr r1, [sp, 0x10]
	adds r0, r1, r3
	movs r1, 0xB
	movs r2, 0
	str r3, [sp, 0x14]
	bl GetMonData
	ldr r3, [sp, 0x14]
	cmp r4, r0
	bne _081A993C
	movs r6, 0
	adds r2, r5, 0x1
	str r2, [sp, 0xC]
	movs r1, 0x64
	adds r0, r5, 0
	muls r0, r1
	movs r5, 0x8E
	lsls r5, 2
	adds r5, r0
	mov r9, r5
	ldr r7, [sp, 0x4]
	muls r7, r1
	mov r10, r3
_081A98AC:
	movs r5, 0
	adds r0, r6, 0x1
	mov r8, r0
	b _081A98C6
	.pool
_081A98C4:
	adds r5, 0x1
_081A98C6:
	cmp r5, 0x3
	bgt _081A98EE
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	adds r1, r6, 0
	adds r1, 0xD
	mov r2, r10
	adds r0, r7, r2
	movs r2, 0
	bl GetMonData
	cmp r4, r0
	bne _081A98C4
_081A98EE:
	cmp r5, 0x4
	bne _081A9900
	lsls r2, r6, 24
	lsrs r2, 24
	mov r5, r10
	adds r0, r7, r5
	movs r1, 0xA6
	bl SetMonMoveSlot
_081A9900:
	mov r6, r8
	cmp r6, 0x3
	ble _081A98AC
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	ldr r2, [sp, 0x8]
	adds r0, r2
	movs r5, 0x8E
	lsls r5, 2
	adds r0, r5
	ldr r1, =gPlayerParty
	ldr r2, [sp, 0x10]
	adds r1, r2, r1
	movs r2, 0x64
	bl memcpy
	ldr r0, =gUnknown_0203CEF8
	ldr r5, [sp, 0x4]
	adds r0, r5, r0
	mov r1, sp
	ldrb r1, [r1, 0xC]
	strb r1, [r0]
	b _081A994C
	.pool
_081A993C:
	ldr r2, [sp, 0x10]
	adds r2, 0x64
	str r2, [sp, 0x10]
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	str r0, [sp, 0x4]
	cmp r0, 0x2
	ble _081A986C
_081A994C:
	ldr r1, [sp]
	adds r1, 0x1
	str r1, [sp]
	cmp r1, 0x2
	bgt _081A9958
	b _081A9844
_081A9958:
	movs r2, 0
	str r2, [sp]
	ldr r4, =gSaveBlock2Ptr
	ldr r3, =0x00000caa
	ldr r2, =gUnknown_0203CEF8
_081A9962:
	ldr r1, [r4]
	ldr r5, [sp]
	lsls r0, r5, 1
	adds r1, r3
	adds r1, r0
	adds r0, r5, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r5, 0x1
	str r5, [sp]
	cmp r5, 0x2
	ble _081A9962
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9834

	thumb_func_start sub_81A9998
sub_81A9998: @ 81A9998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	movs r4, 0
	ldr r0, =gUnknown_03005DC0
	ldr r5, [r0, 0x8]
	ldr r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 1
	adds r0, 0xE
	adds r5, r0
	movs r3, 0
	ldr r0, =0x000003ff
	mov r8, r0
	ldr r1, =0x0000028e
	mov r12, r1
	ldr r0, =gEventObjects
	mov r9, r0
_081A99CC:
	movs r2, 0
_081A99CE:
	lsls r0, r2, 1
	adds r0, r5
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, r12
	bne _081A9A8A
	adds r2, 0x7
	ldr r0, =gSelectedEventObject
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r9
	movs r5, 0xC
	ldrsh r1, [r0, r5]
	subs r2, r1
	adds r1, r3, 0x7
	movs r3, 0xE
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	cmp r2, r6
	bge _081A9A0E
	negs r0, r6
	cmp r2, r0
	ble _081A9A0E
	cmp r3, r6
	bge _081A9A0E
	cmp r3, r0
	ble _081A9A0E
	cmp r7, 0
	bne _081A9A84
_081A9A0E:
	cmp r2, 0
	ble _081A9A34
	cmp r3, 0
	ble _081A9A34
	movs r4, 0x3
	cmp r2, r3
	blt _081A9A7C
	movs r4, 0x2
	b _081A9A7C
	.pool
_081A9A34:
	cmp r2, 0
	bge _081A9A46
	cmp r3, 0
	bge _081A9A46
	movs r4, 0x1
	cmp r2, r3
	ble _081A9A7C
	movs r4, 0
	b _081A9A7C
_081A9A46:
	cmp r2, 0
	bne _081A9A54
	movs r4, 0
	cmp r3, 0
	ble _081A9A7C
	movs r4, 0x3
	b _081A9A7C
_081A9A54:
	cmp r3, 0
	bne _081A9A62
	movs r4, 0x1
	cmp r2, 0
	ble _081A9A7C
	movs r4, 0x2
	b _081A9A7C
_081A9A62:
	cmp r2, 0
	bge _081A9A72
	adds r0, r2, r3
	movs r4, 0x1
	cmp r0, 0
	ble _081A9A7C
	movs r4, 0x3
	b _081A9A7C
_081A9A72:
	adds r0, r2, r3
	mvns r0, r0
	asrs r4, r0, 31
	movs r0, 0x2
	ands r4, r0
_081A9A7C:
	movs r0, 0
	mov r5, r10
	str r0, [r5]
	b _081A9A98
_081A9A84:
	mov r0, r10
	str r7, [r0]
	b _081A9A98
_081A9A8A:
	adds r2, 0x1
	cmp r2, 0x1F
	ble _081A99CE
	adds r5, 0x5E
	adds r3, 0x1
	cmp r3, 0x1F
	ble _081A99CC
_081A9A98:
	adds r0, r4, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A9998

	thumb_func_start sub_81A9AA8
sub_81A9AA8: @ 81A9AA8
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	adds r1, r0
	ldr r0, =0x00000cb2
	adds r1, r0
	ldrh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A9AA8

	thumb_func_start GetBattlePyramidTrainerFlag
GetBattlePyramidTrainerFlag: @ 81A9AC4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r1, =0x00000e2a
	adds r2, r1
	ldr r4, =gBitTable
	ldr r3, =gEventObjects
	lsls r1, r0, 3
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r1, 0x8]
	subs r0, 0x1
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end GetBattlePyramidTrainerFlag

	thumb_func_start sub_81A9B04
sub_81A9B04: @ 81A9B04
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	bl sub_81A9B44
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _081A9B2E
	movs r0, 0x1
	bl GetChosenApproachingTrainerEventObjectId
	ldr r1, =gSelectedEventObject
	strb r0, [r1]
	ldr r0, =gTrainerBattleOpponent_B
	ldrh r0, [r0]
	bl sub_81A9B44
_081A9B2E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9B04

	thumb_func_start sub_81A9B44
sub_81A9B44: @ 81A9B44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r3, 0
	ldr r0, =gEventObjects
	mov r12, r0
	ldr r6, =gSelectedEventObject
	ldr r1, =gSaveBlock1Ptr
	mov r10, r1
	ldr r7, =gSaveBlock2Ptr
	mov r9, r7
	ldr r0, =0x00000cb4
	mov r8, r0
	ldr r4, =gBitTable
_081A9B68:
	mov r1, r9
	ldr r2, [r1]
	lsls r0, r3, 1
	mov r7, r8
	adds r1, r2, r7
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, r5
	bne _081A9B86
	ldr r1, =0x00000e2a
	adds r0, r2, r1
	ldr r1, [r4]
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_081A9B86:
	adds r4, 0x4
	adds r3, 0x1
	cmp r3, 0x7
	ble _081A9B68
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	movs r3, 0x2
	strb r3, [r0, 0x6]
	mov r7, r10
	ldr r2, [r7]
	ldr r0, =gSpecialVar_LastTalked
	ldrh r1, [r0]
	subs r1, 0x1
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r2, r0
	ldr r1, =0x00000c79
	adds r2, r1
	strb r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrh r1, [r0, 0x10]
	strh r1, [r0, 0xC]
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0xE]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9B44

	thumb_func_start GenerateBattlePyramidWildMon
GenerateBattlePyramidWildMon: @ 81A9C04
	push {r4-r6,lr}
	sub sp, 0x14
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	lsls r0, r5, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x13
	bls _081A9C3A
	movs r0, 0x13
_081A9C3A:
	cmp r5, 0
	beq _081A9C54
	ldr r1, =gBattlePyramidOpenLevelWildMonPointers
	b _081A9C56
	.pool
_081A9C54:
	ldr r1, =gBattlePyramidLevel50WildMonPointers
_081A9C56:
	lsls r0, 2
	adds r0, r1
	ldr r6, [r0]
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	subs r0, 0x1
	str r0, [sp, 0x10]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r6, r2
	adds r0, r4, 0
	movs r1, 0xB
	bl SetMonData
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	mov r0, sp
	bl GetSpeciesName
	adds r0, r4, 0
	movs r1, 0x2
	mov r2, sp
	bl SetMonData
	cmp r5, 0
	beq _081A9CD4
	bl SetFacilityPtrsGetLevel
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x2]
	subs r5, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xB
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	subs r0, 0x5
	adds r5, r0
	b _081A9CF6
	.pool
_081A9CD4:
	bl Random
	ldr r2, [sp, 0x10]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r6
	ldrb r4, [r1, 0x2]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xB
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	subs r0, 0x5
	adds r5, r4, r0
_081A9CF6:
	ldr r4, =gEnemyParty
	ldr r2, =gBaseStats
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x13]
	movs r0, 0xCA
	lsls r0, 1
	adds r2, r1, 0
	muls r2, r0
	lsls r0, r5, 2
	ldr r1, =gExperienceTables
	adds r0, r1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x19
	bl SetMonData
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0, 0x3]
	cmp r1, 0
	blt _081A9D4C
	cmp r1, 0x1
	bgt _081A9D4C
	adds r2, r0, 0x3
	b _081A9D7C
	.pool
_081A9D4C:
	ldr r2, =gBaseStats
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x17]
	cmp r0, 0
	beq _081A9D90
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	movs r1, 0x1
	ands r1, r0
	str r1, [sp, 0xC]
	add r2, sp, 0xC
_081A9D7C:
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	b _081A9D9C
	.pool
_081A9D90:
	str r0, [sp, 0xC]
	ldr r0, =gEnemyParty
	add r2, sp, 0xC
	movs r1, 0x2E
	bl SetMonData
_081A9D9C:
	movs r0, 0
	str r0, [sp, 0xC]
	movs r2, 0
	lsls r4, r5, 1
_081A9DA4:
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	lsls r1, r2, 1
	adds r0, 0x4
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gEnemyParty
	bl SetMonMoveSlot
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	str r0, [sp, 0xC]
	adds r2, r0, 0
	cmp r2, 0x3
	ble _081A9DA4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e1a
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0x8B
	bls _081A9E0C
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x11
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0xF
	str r0, [sp, 0x10]
	movs r0, 0
	str r0, [sp, 0xC]
_081A9DF6:
	adds r1, r0, 0
	adds r1, 0x27
	ldr r0, =gEnemyParty
	add r2, sp, 0x10
	bl SetMonData
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	str r0, [sp, 0xC]
	cmp r0, 0x5
	ble _081A9DF6
_081A9E0C:
	ldr r0, =gEnemyParty
	bl CalculateMonStats
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end GenerateBattlePyramidWildMon

	thumb_func_start sub_81A9E28
sub_81A9E28: @ 81A9E28
	push {lr}
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r0, [r0, 0x4]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9E28

	thumb_func_start InBattlePyramid
InBattlePyramid: @ 81A9E40
	push {lr}
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r0, =0x00000169
	cmp r1, r0
	bne _081A9E58
	movs r0, 0x1
	b _081A9E66
	.pool
_081A9E58:
	movs r0, 0xBD
	lsls r0, 1
	cmp r1, r0
	beq _081A9E64
	movs r0, 0
	b _081A9E66
_081A9E64:
	movs r0, 0x2
_081A9E66:
	pop {r1}
	bx r1
	thumb_func_end InBattlePyramid

	thumb_func_start sub_81A9E6C
sub_81A9E6C: @ 81A9E6C
	push {lr}
	movs r2, 0
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r0, =0x00000169
	cmp r1, r0
	beq _081A9E80
	adds r0, 0x11
	cmp r1, r0
	bne _081A9E82
_081A9E80:
	movs r2, 0x1
_081A9E82:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9E6C

	thumb_func_start sub_81A9E90
sub_81A9E90: @ 81A9E90
	push {lr}
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _081A9EB8
	bl sub_81A9834
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca8
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, =0x0000400e
	movs r1, 0
	bl VarSet
	bl LoadPlayerParty
_081A9EB8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9E90

	thumb_func_start sub_81A9EC8
sub_81A9EC8: @ 81A9EC8
	push {lr}
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _081A9ED8
	bl DoSoftReset
_081A9ED8:
	pop {r0}
	bx r0
	thumb_func_end sub_81A9EC8

	thumb_func_start sub_81A9EDC
sub_81A9EDC: @ 81A9EDC
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gFacilityTrainers
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl FrontierSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9EDC

	thumb_func_start sub_81A9EFC
sub_81A9EFC: @ 81A9EFC
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gFacilityTrainers
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x18
	bl FrontierSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9EFC

	thumb_func_start sub_81A9F1C
sub_81A9F1C: @ 81A9F1C
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gFacilityTrainers
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x24
	bl FrontierSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9F1C

	thumb_func_start GetTrainerEncounterMusicIdInBattlePyramind
GetTrainerEncounterMusicIdInBattlePyramind: @ 81A9F3C
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	movs r4, 0
	ldr r3, =gFacilityClassToTrainerClass
	ldr r1, =gFacilityTrainers
	ldr r2, [r1]
	movs r1, 0x34
	muls r0, r1
	adds r0, r2
	ldrb r0, [r0]
	adds r0, r3
	ldrb r2, [r0]
	ldr r1, =gUnknown_08613B44
_081A9F58:
	ldrb r0, [r1]
	cmp r0, r2
	bne _081A9F70
	ldrb r0, [r1, 0x1]
	b _081A9F7A
	.pool
_081A9F70:
	adds r1, 0x4
	adds r4, 0x1
	cmp r4, 0x35
	bls _081A9F58
	movs r0, 0
_081A9F7A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end GetTrainerEncounterMusicIdInBattlePyramind

	thumb_func_start sub_81A9F80
sub_81A9F80: @ 81A9F80
	push {lr}
	ldr r0, =BattleFrontier_BattlePyramidEmptySquare_EventScript_252C88
	bl ScriptContext1_SetupScript
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9F80

	thumb_func_start sub_81A9F90
sub_81A9F90: @ 81A9F90
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000ca9
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, 30
	lsrs r1, 29
	ldr r2, =0x00000e1a
	adds r0, r4, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =0x00000cb2
	adds r4, r1
	ldrh r1, [r4]
	cmp r1, 0x7
	bne _081AA020
	adds r0, 0x1
	lsls r7, r0, 24
	lsls r1, 24
	mov r8, r1
_081A9FCC:
	lsrs r0, r7, 24
	mov r2, r8
	lsrs r1, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r5
	bge _081AA004
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r4, =0x00000cb4
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	beq _081AA004
	adds r6, r1, 0
_081A9FF0:
	adds r2, 0x1
	cmp r2, r5
	bge _081AA004
	ldr r0, [r6]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _081A9FF0
_081AA004:
	cmp r2, r5
	bne _081A9FCC
	b _081AA062
	.pool
_081AA020:
	lsls r1, 24
	mov r8, r1
	lsls r7, r0, 24
_081AA026:
	lsrs r0, r7, 24
	mov r2, r8
	lsrs r1, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r5
	bge _081AA05E
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r4, =0x00000cb4
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	beq _081AA05E
	adds r6, r1, 0
_081AA04A:
	adds r2, 0x1
	cmp r2, r5
	bge _081AA05E
	ldr r0, [r6]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _081AA04A
_081AA05E:
	cmp r2, r5
	bne _081AA026
_081AA062:
	adds r0, r3, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9F90

	thumb_func_start sub_81AA078
sub_81AA078: @ 81AA078
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x8]
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0xC]
	bl sub_81AA96C
	mov r4, sp
	adds r4, 0x1
	mov r0, sp
	adds r1, r4, 0
	bl sub_81AA33C
	movs r7, 0
_081AA0A6:
	ldr r1, [sp, 0xC]
	adds r0, r1, r7
	ldrb r0, [r0]
	ldr r2, =0x00000169
	adds r0, r2
	lsls r0, 2
	ldr r1, =gMapLayouts
	adds r0, r1
	ldr r6, [r0]
	ldr r2, [r6, 0xC]
	mov r10, r2
	ldr r0, [sp, 0x4]
	ldr r1, =gUnknown_03005DC0
	str r0, [r1, 0x8]
	ldr r0, [r6]
	lsls r0, 2
	adds r2, r0, 0
	adds r2, 0xF
	str r2, [r1]
	ldr r0, [r6, 0x4]
	lsls r0, 2
	adds r0, 0xE
	str r0, [r1, 0x4]
	ldr r0, [sp, 0x4]
	mov r9, r0
	adds r1, r7, 0
	cmp r7, 0
	bge _081AA0E0
	adds r1, r7, 0x3
_081AA0E0:
	asrs r1, 2
	ldr r4, [r6, 0x4]
	adds r0, r1, 0
	muls r0, r4
	adds r0, 0x7
	muls r2, r0
	lsls r1, 2
	subs r1, r7, r1
	ldr r3, [r6]
	adds r0, r1, 0
	muls r0, r3
	adds r0, 0x7
	adds r2, r0
	lsls r2, 1
	add r9, r2
	movs r1, 0
	mov r8, r1
	adds r2, r7, 0x1
	str r2, [sp, 0x10]
	cmp r8, r4
	bge _081AA1B6
_081AA10A:
	movs r0, 0
	mov r12, r0
	mov r1, r8
	adds r1, 0x1
	str r1, [sp, 0x14]
	cmp r12, r3
	bge _081AA1A2
	ldr r2, =gSaveBlock1Ptr
	str r2, [sp, 0x18]
	mov r4, r9
	mov r5, r10
_081AA120:
	ldrh r1, [r5]
	ldr r0, =0x000003ff
	ands r0, r1
	ldr r2, =0x0000028e
	cmp r0, r2
	bne _081AA194
	mov r0, sp
	ldrb r0, [r0, 0x1]
	cmp r7, r0
	beq _081AA194
	mov r0, sp
	ldrb r0, [r0]
	cmp r7, r0
	bne _081AA164
	ldr r1, [sp, 0x8]
	cmp r1, 0
	bne _081AA164
	ldr r2, [sp, 0x18]
	ldr r3, [r2]
	adds r2, r7, 0
	cmp r7, 0
	bge _081AA14E
	adds r2, r7, 0x3
_081AA14E:
	asrs r2, 2
	lsls r1, r2, 2
	subs r1, r7, r1
	ldr r0, [r6]
	muls r0, r1
	add r0, r12
	strh r0, [r3]
	ldr r0, [r6, 0x4]
	muls r0, r2
	add r0, r8
	strh r0, [r3, 0x2]
_081AA164:
	ldrh r0, [r5]
	movs r1, 0xFC
	lsls r1, 8
	ands r1, r0
	ldr r2, =0x0000028d
	adds r0, r2, 0
	orrs r1, r0
	strh r1, [r4]
	ldr r3, [r6]
	b _081AA196
	.pool
_081AA194:
	strh r1, [r4]
_081AA196:
	adds r4, 0x2
	adds r5, 0x2
	movs r0, 0x1
	add r12, r0
	cmp r12, r3
	blt _081AA120
_081AA1A2:
	lsls r0, r3, 3
	adds r0, 0x1E
	add r9, r0
	lsls r0, r3, 1
	add r10, r0
	ldr r1, [sp, 0x14]
	mov r8, r1
	ldr r0, [r6, 0x4]
	cmp r8, r0
	blt _081AA10A
_081AA1B6:
	ldr r7, [sp, 0x10]
	cmp r7, 0xF
	bgt _081AA1BE
	b _081AA0A6
_081AA1BE:
	bl mapheader_run_script_with_tag_x1
	ldr r0, [sp, 0xC]
	bl Free
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA078

	thumb_func_start sub_81AA1D8
sub_81AA1D8: @ 81AA1D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	movs r5, 0
	mov r6, sp
	adds r6, 0x1
	add r0, sp, 0x4
	mov r8, r0
	ldr r4, =gSaveBlock2Ptr
	ldr r3, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r2, r0, 0
_081AA1F2:
	ldr r0, [r4]
	lsls r1, r5, 1
	adds r0, r3
	adds r0, r1
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _081AA1F2
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r7, r0, 24
	mov r0, sp
	adds r1, r6, 0
	bl sub_81AA33C
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	movs r0, 0xC7
	lsls r0, 4
	adds r1, r0
	ldr r2, =0x05000180
	mov r0, r8
	bl CpuSet
	movs r5, 0
_081AA22E:
	cmp r5, 0
	bne _081AA254
	ldr r1, =gUnknown_08613650
	lsls r0, r7, 4
	adds r0, r1
	ldrb r0, [r0, 0x3]
	b _081AA25C
	.pool
_081AA254:
	ldr r1, =gUnknown_08613650
	lsls r0, r7, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
_081AA25C:
	cmp r0, 0x4
	bhi _081AA2E4
	lsls r0, 2
	ldr r1, =_081AA274
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AA274:
	.4byte _081AA288
	.4byte _081AA292
	.4byte _081AA2A2
	.4byte _081AA2B0
	.4byte _081AA2CC
_081AA288:
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_81AA398
	b _081AA2E4
_081AA292:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_81AA4D8
	b _081AA2BE
_081AA2A2:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	ldrb r1, [r6]
	adds r0, r4, 0
	bl sub_81AA4D8
	b _081AA2BE
_081AA2B0:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_81AA648
_081AA2BE:
	lsls r0, 24
	cmp r0, 0
	beq _081AA2E4
	adds r0, r4, 0
	bl sub_81AA398
	b _081AA2E4
_081AA2CC:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	ldrb r1, [r6]
	adds r0, r4, 0
	bl sub_81AA648
	lsls r0, 24
	cmp r0, 0
	beq _081AA2E4
	adds r0, r4, 0
	bl sub_81AA398
_081AA2E4:
	adds r5, 0x1
	cmp r5, 0x1
	ble _081AA22E
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA1D8

	thumb_func_start sub_81AA2F8
sub_81AA2F8: @ 81AA2F8
	push {r4,r5,lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r5, =BattleFrontier_BattlePyramidEmptySquare_EventScript_252C4F
	ldr r4, =BattleFrontier_BattlePyramidEmptySquare_EventScript_252C6A
	movs r2, 0xC8
	lsls r2, 4
	adds r1, r0, r2
	movs r3, 0xC7
	lsls r3, 4
	adds r2, r0, r3
	movs r3, 0x3F
_081AA310:
	ldrb r0, [r2, 0x1]
	cmp r0, 0x3B
	beq _081AA328
	str r5, [r1]
	b _081AA32A
	.pool
_081AA328:
	str r4, [r1]
_081AA32A:
	adds r1, 0x18
	adds r2, 0x18
	subs r3, 0x1
	cmp r3, 0
	bge _081AA310
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA2F8

	thumb_func_start sub_81AA33C
sub_81AA33C: @ 81AA33C
	push {r4-r7,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000e28
	adds r0, r1, r2
	ldrh r2, [r0]
	movs r3, 0xF
	ands r2, r3
	strb r2, [r4]
	ldr r7, =0x00000e22
	adds r1, r7
	ldrh r0, [r1]
	ands r0, r3
	strb r0, [r6]
	cmp r2, r0
	bne _081AA386
	ldr r1, [r5]
	ldr r2, =0x00000e28
	adds r0, r1, r2
	ldrh r2, [r0]
	adds r3, r2, 0x1
	adds r0, r3, 0
	asrs r0, 4
	lsls r0, 4
	subs r0, r3, r0
	strb r0, [r4]
	adds r0, r1, r7
	ldrh r1, [r0]
	adds r2, r1, 0
	adds r2, 0xF
	adds r0, r2, 0
	asrs r0, 4
	lsls r0, 4
	subs r0, r2, r0
	strb r0, [r6]
_081AA386:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AA33C

	thumb_func_start sub_81AA398
sub_81AA398: @ 81AA398
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r5, 0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r6, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x8]
	bl sub_81AA96C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e26
	adds r0, r1
	ldrh r4, [r0]
	movs r0, 0xF
	ands r4, r0
	ldr r0, [sp]
	cmp r0, 0
	bne _081AA3F0
	ldr r1, =gUnknown_08613650
	lsls r0, r6, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0x4]
	b _081AA3FE
	.pool
_081AA3F0:
	ldr r1, =gUnknown_08613650
	lsls r0, r6, 4
	adds r0, r1
	ldrb r1, [r0]
	mov r10, r1
	ldrb r0, [r0, 0x1]
	str r0, [sp, 0x4]
_081AA3FE:
	movs r0, 0
	mov r8, r0
	cmp r8, r10
	bge _081AA4C0
_081AA406:
	movs r1, 0x1
	add r1, r8
	mov r9, r1
	b _081AA42E
	.pool
_081AA414:
	lsls r2, r4, 24
	lsrs r2, 24
	ldr r3, [sp, 0x4]
	add r3, r8
	lsls r3, 24
	lsrs r3, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA4B6
_081AA42E:
	ldr r0, =gBitTable
	mov r12, r0
	ldr r6, =gSaveBlock2Ptr
	ldr r7, =0x00000e28
	movs r3, 0x2
	lsls r0, r4, 2
	mov r1, r12
	adds r2, r0, r1
_081AA43E:
	movs r0, 0x1
	ands r0, r5
	cmp r0, 0
	beq _081AA464
	ldr r0, [r6]
	adds r0, r7
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _081AA474
	b _081AA472
	.pool
_081AA464:
	ldr r0, [r6]
	adds r0, r7
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	beq _081AA474
_081AA472:
	orrs r5, r3
_081AA474:
	adds r2, 0x4
	adds r4, 0x1
	cmp r4, 0xF
	ble _081AA480
	mov r2, r12
	movs r4, 0
_081AA480:
	ldr r0, [r6]
	ldr r1, =0x00000e26
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0xF
	ands r1, r0
	cmp r4, r1
	bne _081AA4A6
	movs r1, 0x1
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _081AA4A4
	movs r0, 0x6
	orrs r5, r0
	b _081AA4A6
	.pool
_081AA4A4:
	orrs r5, r1
_081AA4A6:
	adds r0, r5, 0
	ands r0, r3
	cmp r0, 0
	beq _081AA43E
	movs r0, 0x4
	ands r0, r5
	cmp r0, 0
	beq _081AA414
_081AA4B6:
	movs r0, 0x1
	ands r5, r0
	mov r8, r9
	cmp r8, r10
	blt _081AA406
_081AA4C0:
	ldr r0, [sp, 0x8]
	bl Free
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA398

	thumb_func_start sub_81AA4D8
sub_81AA4D8: @ 81AA4D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r6, 0
	movs r7, 0
	movs r0, 0
	str r0, [sp, 0xC]
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x14]
	bl sub_81AA96C
	ldr r1, [sp]
	cmp r1, 0
	bne _081AA524
	ldr r1, =gUnknown_08613650
	lsls r0, r4, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	str r0, [sp, 0x10]
	movs r0, 0
	b _081AA530
	.pool
_081AA524:
	ldr r1, =gUnknown_08613650
	lsls r0, r4, 4
	adds r0, r1
	ldrb r2, [r0]
	str r2, [sp, 0x10]
	ldrb r0, [r0, 0x1]
_081AA530:
	movs r3, 0
	str r3, [sp, 0x8]
	ldr r1, [sp, 0x10]
	asrs r1, 31
	str r1, [sp, 0x18]
	ldr r2, [sp, 0x10]
	cmp r3, r2
	bge _081AA622
	str r0, [sp, 0x1C]
	adds r3, r0, 0
	lsls r3, 24
	mov r9, r3
_081AA548:
	cmp r7, 0
	bne _081AA56E
	mov r0, r9
	lsrs r3, r0, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	ldr r2, [sp, 0x4]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA568
	movs r7, 0x1
	b _081AA56E
	.pool
_081AA568:
	ldr r1, [sp, 0xC]
	adds r1, 0x1
	str r1, [sp, 0xC]
_081AA56E:
	movs r0, 0x1
	ands r0, r7
	cmp r0, 0
	beq _081AA600
	ldr r2, =gUnknown_08613F46
	mov r8, r2
	ldr r3, [sp, 0x4]
	lsls r4, r3, 2
	adds r0, r6, r4
	add r0, r8
	ldrb r2, [r0]
	mov r0, r9
	lsrs r3, r0, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	bl sub_81AA760
	lsls r0, 24
	ldr r1, [sp, 0x1C]
	mov r10, r1
	adds r5, r4, 0
	cmp r0, 0
	beq _081AA5E8
	ldr r4, [sp, 0xC]
	adds r4, 0x1
	b _081AA5C2
	.pool
_081AA5A8:
	adds r0, r6, r5
	adds r0, r2
	ldrb r2, [r0]
	mov r0, r10
	lsls r3, r0, 24
	lsrs r3, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA5E0
_081AA5C2:
	adds r6, 0x1
	ldr r0, =gUnknown_08613F46
	adds r1, r6, r5
	adds r1, r0
	ldrb r1, [r1]
	adds r2, r0, 0
	cmp r1, 0xFF
	beq _081AA5D6
	cmp r6, 0x3
	ble _081AA5D8
_081AA5D6:
	movs r6, 0
_081AA5D8:
	adds r7, 0x2
	asrs r0, r7, 1
	cmp r0, 0x4
	bne _081AA5A8
_081AA5E0:
	str r4, [sp, 0xC]
	b _081AA600
	.pool
_081AA5E8:
	adds r6, 0x1
	adds r0, r6, r4
	add r0, r8
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081AA5F8
	cmp r6, 0x3
	ble _081AA5FA
_081AA5F8:
	movs r6, 0
_081AA5FA:
	ldr r1, [sp, 0xC]
	adds r1, 0x1
	str r1, [sp, 0xC]
_081AA600:
	asrs r0, r7, 1
	cmp r0, 0x4
	beq _081AA622
	movs r0, 0x1
	ands r7, r0
	ldr r2, [sp, 0x1C]
	adds r2, 0x1
	str r2, [sp, 0x1C]
	movs r3, 0x80
	lsls r3, 17
	add r9, r3
	ldr r0, [sp, 0x8]
	adds r0, 0x1
	str r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	cmp r0, r1
	blt _081AA548
_081AA622:
	movs r1, 0
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x18]
	subs r0, r2, r3
	asrs r0, 1
	ldr r2, [sp, 0xC]
	cmp r0, r2
	ble _081AA634
	movs r1, 0x1
_081AA634:
	adds r0, r1, 0
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA4D8

	thumb_func_start sub_81AA648
sub_81AA648: @ 81AA648
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r6, r1, 24
	movs r4, 0
	movs r7, 0
	movs r0, 0
	mov r8, r0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x8]
	bl sub_81AA96C
	ldr r1, [sp]
	cmp r1, 0
	bne _081AA694
	ldr r1, =gUnknown_08613650
	lsls r0, r5, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	mov r10, r0
	movs r0, 0
	b _081AA6A0
	.pool
_081AA694:
	ldr r1, =gUnknown_08613650
	lsls r0, r5, 4
	adds r0, r1
	ldrb r2, [r0]
	mov r10, r2
	ldrb r0, [r0, 0x1]
_081AA6A0:
	movs r3, 0
	str r3, [sp, 0x4]
	mov r1, r10
	asrs r1, 31
	str r1, [sp, 0xC]
	cmp r3, r10
	bge _081AA73E
	ldr r2, =gUnknown_08613F46
	mov r9, r2
	lsls r5, r6, 2
	lsls r6, r0, 24
_081AA6B6:
	adds r0, r4, r5
	add r0, r9
	ldrb r2, [r0]
	lsrs r3, r6, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA714
	adds r7, 0x1
	b _081AA6EE
	.pool
_081AA6D8:
	adds r0, r4, r5
	adds r0, r1
	ldrb r2, [r0]
	lsrs r3, r6, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA728
_081AA6EE:
	adds r4, 0x1
	adds r0, r4, r5
	add r0, r9
	ldrb r0, [r0]
	ldr r1, =gUnknown_08613F46
	cmp r0, 0xFF
	beq _081AA700
	cmp r4, 0x3
	ble _081AA702
_081AA700:
	movs r4, 0
_081AA702:
	movs r3, 0x1
	add r8, r3
	mov r0, r8
	cmp r0, 0x4
	bne _081AA6D8
	b _081AA728
	.pool
_081AA714:
	adds r4, 0x1
	adds r0, r4, r5
	add r0, r9
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081AA724
	cmp r4, 0x3
	ble _081AA726
_081AA724:
	movs r4, 0
_081AA726:
	adds r7, 0x1
_081AA728:
	mov r1, r8
	cmp r1, 0x4
	beq _081AA73E
	movs r2, 0x80
	lsls r2, 17
	adds r6, r2
	ldr r3, [sp, 0x4]
	adds r3, 0x1
	str r3, [sp, 0x4]
	cmp r3, r10
	blt _081AA6B6
_081AA73E:
	movs r1, 0
	mov r2, r10
	ldr r3, [sp, 0xC]
	subs r0, r2, r3
	asrs r0, 1
	cmp r0, r7
	ble _081AA74E
	movs r1, 0x1
_081AA74E:
	adds r0, r1, 0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA648

	thumb_func_start sub_81AA760
sub_81AA760: @ 81AA760
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r10, r1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r7, r3, 24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e22
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AA7D0
	movs r6, 0x7
_081AA792:
	movs r4, 0x7
	lsls r5, r6, 24
_081AA796:
	lsls r1, r4, 24
	lsrs r1, 24
	mov r0, r8
	str r0, [sp]
	str r7, [sp, 0x4]
	mov r0, r9
	lsrs r2, r5, 24
	mov r3, r10
	bl sub_81AA810
	lsls r0, 24
	cmp r0, 0
	beq _081AA7CC
	subs r4, 0x1
	cmp r4, 0
	bge _081AA796
	subs r6, 0x1
	movs r1, 0x1
	negs r1, r1
	cmp r6, r1
	bgt _081AA792
	b _081AA7FC
	.pool
_081AA7CC:
	movs r0, 0
	b _081AA7FE
_081AA7D0:
	movs r6, 0
_081AA7D2:
	movs r4, 0
	lsls r5, r6, 24
_081AA7D6:
	lsls r1, r4, 24
	lsrs r1, 24
	mov r0, r8
	str r0, [sp]
	str r7, [sp, 0x4]
	mov r0, r9
	lsrs r2, r5, 24
	mov r3, r10
	bl sub_81AA810
	lsls r0, 24
	cmp r0, 0
	beq _081AA7CC
	adds r4, 0x1
	cmp r4, 0x7
	ble _081AA7D6
	adds r6, 0x1
	cmp r6, 0x7
	ble _081AA7D2
_081AA7FC:
	movs r0, 0x1
_081AA7FE:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA760

	thumb_func_start sub_81AA810
sub_81AA810: @ 81AA810
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r4, [sp, 0x34]
	ldr r5, [sp, 0x38]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	lsls r5, 24
	lsrs r6, r5, 24
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0, r1
	str r1, [sp, 0x8]
	add r3, r10
	ldrb r1, [r3]
	adds r1, 0x2C
	movs r0, 0x19
	bl Overworld_GetMapHeaderByGroupAndId
	adds r5, r0, 0
	movs r7, 0
	ldr r1, [r5, 0x4]
	ldrb r2, [r1]
	cmp r7, r2
	bge _081AA95A
	movs r0, 0x3
	ands r0, r4
	lsls r0, 3
	str r0, [sp, 0xC]
_081AA868:
	ldr r1, [r1, 0x4]
	lsls r2, r7, 1
	adds r0, r2, r7
	lsls r0, 3
	adds r3, r0, r1
	movs r4, 0x4
	ldrsh r0, [r3, r4]
	ldr r1, [r5, 0x4]
	mov r12, r1
	mov r9, r2
	ldr r2, [sp, 0x4]
	cmp r0, r2
	bne _081AA950
	movs r4, 0x6
	ldrsh r0, [r3, r4]
	cmp r0, r8
	bne _081AA950
	ldr r0, [sp]
	cmp r0, 0
	bne _081AA896
	ldrb r0, [r3, 0x1]
	cmp r0, 0x3B
	bne _081AA8A2
_081AA896:
	ldr r1, [sp]
	cmp r1, 0x1
	bne _081AA950
	ldrb r0, [r3, 0x1]
	cmp r0, 0x3B
	bne _081AA950
_081AA8A2:
	movs r3, 0
	ldr r2, [r5, 0x4]
	mov r12, r2
	cmp r3, r6
	bge _081AA8DC
	ldr r4, [sp, 0x4]
	ldr r0, [sp, 0xC]
	adds r4, r0
	str r4, [sp, 0x10]
	mov r1, r10
	lsrs r0, r1, 2
	lsls r0, 3
	mov r2, r8
	adds r1, r2, r0
	ldr r2, [sp, 0x8]
	adds r2, 0x4
_081AA8C2:
	movs r4, 0
	ldrsh r0, [r2, r4]
	ldr r4, [sp, 0x10]
	cmp r0, r4
	bne _081AA8D4
	movs r4, 0x2
	ldrsh r0, [r2, r4]
	cmp r0, r1
	beq _081AA8DC
_081AA8D4:
	adds r2, 0x18
	adds r3, 0x1
	cmp r3, r6
	blt _081AA8C2
_081AA8DC:
	cmp r3, r6
	bne _081AA950
	lsls r0, r6, 1
	mov r8, r0
	adds r0, r6
	lsls r0, 3
	ldr r1, [sp, 0x8]
	adds r5, r0, r1
	mov r3, r12
	ldr r2, [r3, 0x4]
	mov r4, r9
	adds r1, r4, r7
	lsls r1, 3
	adds r0, r5, 0
	adds r1, r2
	ldm r1!, {r2-r4}
	stm r0!, {r2-r4}
	ldm r1!, {r2-r4}
	stm r0!, {r2-r4}
	ldrh r0, [r5, 0x4]
	ldr r1, [sp, 0xC]
	adds r0, r1
	strh r0, [r5, 0x4]
	mov r2, r10
	lsrs r0, r2, 2
	lsls r0, 3
	ldrh r3, [r5, 0x6]
	adds r0, r3
	strh r0, [r5, 0x6]
	adds r0, r6, 0x1
	strb r0, [r5]
	ldrb r0, [r5, 0x1]
	cmp r0, 0x3B
	beq _081AA940
	adds r0, r6, 0
	bl sub_81A9F90
	lsls r0, 16
	lsrs r7, r0, 16
	adds r4, r7, 0
	adds r0, r4, 0
	bl GetBattleFacilityTrainerGfxId
	strb r0, [r5, 0x1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb4
	adds r0, r1
	add r0, r8
	strh r4, [r0]
_081AA940:
	movs r0, 0
	b _081AA95C
	.pool
_081AA950:
	adds r7, 0x1
	mov r1, r12
	ldrb r2, [r1]
	cmp r7, r2
	blt _081AA868
_081AA95A:
	movs r0, 0x1
_081AA95C:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA810

	thumb_func_start sub_81AA96C
sub_81AA96C: @ 81AA96C
	push {r4-r7,lr}
	adds r6, r0, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000e22
	adds r1, r0, r2
	ldrh r4, [r1]
	ldr r1, =0x00000e24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 16
	orrs r4, r0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r2, =gUnknown_08613650+0x5
	mov r12, r2
	movs r7, 0x7
_081AA994:
	adds r2, r6, r3
	adds r0, r4, 0
	ands r0, r7
	lsls r1, r5, 4
	adds r0, r1
	add r0, r12
	ldrb r0, [r0]
	strb r0, [r2]
	asrs r4, 3
	cmp r3, 0x7
	bne _081AA9C0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000e26
	adds r0, r1, r2
	ldrh r4, [r0]
	ldr r0, =0x00000e28
	adds r1, r0
	ldrh r0, [r1]
	lsls r0, 16
	orrs r4, r0
	asrs r4, 8
_081AA9C0:
	adds r3, 0x1
	cmp r3, 0xF
	ble _081AA994
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AA96C

	thumb_func_start sub_81AA9E4
sub_81AA9E4: @ 81AA9E4
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000e28
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r3, r0, 16
	ldr r0, =0x00000cb2
	adds r4, r0
	ldrh r0, [r4]
	ldr r1, =gUnknown_08613794
	adds r0, r1
	ldrb r2, [r0]
	cmp r2, 0x21
	bhi _081AAA38
	ldr r1, =gUnknown_08613750
	lsls r0, r2, 1
	adds r0, r1
_081AAA10:
	ldrb r1, [r0]
	cmp r3, r1
	bge _081AAA30
	ldrb r0, [r0, 0x1]
	b _081AAA3A
	.pool
_081AAA30:
	adds r0, 0x2
	adds r2, 0x1
	cmp r2, 0x21
	bls _081AAA10
_081AAA38:
	movs r0, 0
_081AAA3A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA9E4

	thumb_func_start sub_81AAA40
sub_81AAA40: @ 81AAA40
	push {lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r2, r0, r1
	movs r1, 0
	movs r3, 0xC7
	lsls r3, 4
	adds r0, r3
	b _081AAA6E
	.pool
_081AAA5C:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bhi _081AAA74
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r2
_081AAA6E:
	ldrb r0, [r0]
	cmp r0, 0
	bne _081AAA5C
_081AAA74:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_81AAA40

	thumb_func_start sub_81AAA7C
sub_81AAA7C: @ 81AAA7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	movs r3, 0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
	lsls r1, r0, 2
	adds r1, r0
	movs r0, 0
	mov r12, r0
	lsls r4, r1, 1
	ldr r7, =0x00000e2c
	movs r6, 0
	ldr r5, =0x00000e54
	lsls r2, r1, 2
_081AAA9E:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r7
	adds r1, r2
	strh r6, [r1]
	adds r1, r3, r4
	adds r0, r5
	adds r0, r1
	mov r1, r12
	strb r1, [r0]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x9
	ble _081AAA9E
	movs r0, 0x15
	movs r1, 0x1
	bl AddPyramidBagItem
	movs r0, 0x22
	movs r1, 0x1
	bl AddPyramidBagItem
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAA7C

	thumb_func_start GetBattlePyramidPickupItemId
GetBattlePyramidPickupItemId: @ 81AAAE0
	push {r4-r6,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r6, r0, 30
	lsls r0, r6, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	ble _081AAB0A
	movs r4, 0x13
_081AAB0A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r2, r0, 16
	movs r1, 0
	ldr r3, =gUnknown_08613F86
	ldrb r0, [r3]
	lsls r5, r4, 2
	cmp r0, r2
	bgt _081AAB36
_081AAB28:
	adds r1, 0x1
	cmp r1, 0x9
	bhi _081AAB3A
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	ble _081AAB28
_081AAB36:
	cmp r1, 0x9
	bls _081AAB3C
_081AAB3A:
	movs r1, 0x9
_081AAB3C:
	cmp r6, 0
	bne _081AAB58
	ldr r2, =gUnknown_0861379C
	b _081AAB5A
	.pool
_081AAB58:
	ldr r2, =gUnknown_0861392C
_081AAB5A:
	lsls r1, 1
	adds r0, r5, r4
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end GetBattlePyramidPickupItemId

	.align 2, 0 @ Don't pad with nop.
