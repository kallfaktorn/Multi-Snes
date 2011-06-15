;Copyright (C) 1997-2005 ZSNES Team ( zsKnight, _Demo_, pagefault, Nach )
;
;http://www.zsnes.com
;http://sourceforge.net/projects/zsnes
;
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either
;version 2 of the License, or (at your option) any later
;version.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

%include "macros.mac"

EXTSYM DosExit,UpdateDevices,InitSPC,Makemode7Table,MusicRelVol,MusicVol
EXTSYM makesprprtable,romloadskip,start65816,startdebugger,SfxR0
EXTSYM MovieProcessing
EXTSYM MovieFileHand,filefound,inittable,SA1inittable
EXTSYM MessageOn,Msgptr,MsgCount,sndrot,GenerateBank0Table,SnowTimer
EXTSYM inittableb,inittablec,newgfx16b,cfgreinittime,EndMessage
EXTSYM Open_File,Read_File,Write_File,Close_File,Output_Text,Get_Key,CNetType
EXTSYM Delete_File,Get_First_Entry,Get_Next_Entry,Change_Dir,InitDSP
EXTSYM Remove_Dir,Change_Single_Dir,Create_Dir,Get_Memfree,Create_File
EXTSYM SPCDisable,osm2dis,CurRecv,BackupSystemVars
EXTSYM SnowData,SnowVelDist
EXTSYM cvidmode, newengen, cfgnewgfx, GUI16VID
EXTSYM NewEngEnForce
EXTSYM PrintChar
EXTSYM TextFile
EXTSYM Setper2exec,per2exec
EXTSYM MovieCounter
EXTSYM chaton
EXTSYM JoyRead,JoyReadControl,joy4218,joy4219
EXTSYM joy421A,joy421B,pressed
EXTSYM pl3Ak,pl3Bk,pl3Lk,pl3Rk,pl3Xk,pl1p209,pl2p209,pl3p209,pl4p209
EXTSYM pl3Yk,pl3contrl,pl3downk,pl3leftk,pl3rightk,pl3selk,pl3startk
EXTSYM pl3upk,pl4Ak,pl4Bk,pl4Lk,pl4Rk,pl4Xk,pl4Yk,pl4contrl,pl4downk
EXTSYM pl4leftk,pl4rightk,pl4selk,pl4startk,pl4upk,mousebuttons,mousexdir
EXTSYM pl5Ak,pl5Bk,pl5Lk,pl5Rk,pl5Xk,pl5Yk,pl5contrl,pl5downk
EXTSYM pl5leftk,pl5rightk,pl5selk,pl5startk,pl5upk
EXTSYM mouseydir,mousexpos,mouseypos,snesmouse,processmouse,ssautosw
EXTSYM GUIDelayB,pl12s34
EXTSYM pl1Xtk,pl1Ytk,pl1Atk,pl1Btk,pl2Xtk,pl2Ytk,pl2Atk,pl2Btk
EXTSYM pl3Xtk,pl3Ytk,pl3Atk,pl3Btk,pl4Xtk,pl4Ytk,pl4Atk,pl4Btk
EXTSYM pl1ULk,pl1URk,pl1DLk,pl1DRk,pl2ULk,pl2URk,pl2DLk,pl2DRk
EXTSYM pl3ULk,pl3URk,pl3DLk,pl3DRk,pl4ULk,pl4URk,pl4DLk,pl4DRk
EXTSYM pl5ULk,pl5URk,pl5DLk,pl5DRk,pl5Xtk,pl5Ytk,pl5Atk,pl5Btk
EXTSYM Turbo30hz,RepeatFrame,nojoystickpoll
EXTSYM NumComboLocl,ComboBlHeader,ComboHeader,CombinDataLocl
EXTSYM CombinDataGlob,NumCombo,GUIComboGameSpec
EXTSYM mousexloc,mouseyloc
EXTSYM extlatch
EXTSYM BackState
EXTSYM FIRTAPVal0,FIRTAPVal1,FIRTAPVal2,FIRTAPVal3,FIRTAPVal4
EXTSYM FIRTAPVal5,FIRTAPVal6,FIRTAPVal7,INTEnab,JoyAPos,JoyBPos
EXTSYM NMIEnab,SPCROM,VIRQLoc,coladdb,coladdg,coladdr,doirqnext
EXTSYM echobuf,forceblnk,nmiprevaddrh,nmiprevaddrl,nmiprevline
EXTSYM nmirept,nmistatus,opexec268,opexec268b,opexec268cph
EXTSYM opexec268cphb,opexec358,opexec358b,opexec358cph,spcextraram
EXTSYM opexec358cphb,prevoamptr,reg1read,reg2read,reg3read
EXTSYM reg4read,resolutn,romdata,scrndis,spcBuffera,spcP,spcRam
EXTSYM spcnumread,spchalted,tableD,timeron,vidbright,DSPMem,OldGfxMode2
EXTSYM SPC700read,SPC700write,GUIDoReset,spc700read, GUIReset
EXTSYM InitC4,SA1Reset,SetAddressingModesSA1,SetAddressingModes,SDD1BankA,SPC7110init
EXTSYM RTCinit,InitOBC
EXTSYM memaccessspc7110r8,memaccessspc7110r16,memaccessspc7110w8
EXTSYM memaccessspc7110w16
EXTSYM ram7f,snesmap2,snesmmap,sram,MultiTap
EXTSYM memaccessbankr848mb,memaccessbankr1648mb
EXTSYM cpuover,execloop
;EXTSYM execloopn,execloopns,execloops
;EXTSYM PHsizeofexecloop,PHsizeofexecloopn,PHsizeofexecloopns
;EXTSYM PHsizeofexecloops
EXTSYM curexecstate
EXTSYM debugdisble,vidbuffer
EXTSYM Sup16mbit,Sup48mbit,debugbufa,pal16b,pal16bcl,pal16bclha
EXTSYM pal16bxcl,ram7fa,regptra,regptwa,srama,vidmemch2,vidmemch4
EXTSYM vidmemch8,vcache2b,vcache4b,vcache8b,vram,wramdata
EXTSYM wramdataa
EXTSYM fname,fnames,GetCurDir
EXTSYM GUIcurrentdir,PrintStr
;STUB DDOI
;EXTSYM GUIcurrentdir, PrintStr
EXTSYM DTALoc
EXTSYM spc7110romptr,allocspc7110
EXTSYM SRAMChdir,cfgloadsdir,fnamest,statefileloc
EXTSYM ForcePal,ForceROMTiming,ForceHiLoROM,InitDir,InitDrive,enterpress,frameskip
EXTSYM maxromspace,curromspace,infoloc, patchfile
EXTSYM gotoroot,headdata,printnum,romispal
EXTSYM InitFxTables,SfxR1,SfxR2,SfxSCMR,SfxSFR,finterleave
EXTSYM initregr,initregw,memtabler16,DSP1Read16b3F,memaccessbankr16
EXTSYM memtabler8,DSP1Read8b3F,memaccessbankr8,memtablew16,DSP1Write16b
EXTSYM memaccessbankw16,memtablew8,DSP1Write8b,memaccessbankw8,DSP1Write16b3F
EXTSYM regaccessbankr16,regaccessbankr8,regaccessbankw16,regaccessbankw8
EXTSYM sfxaccessbankr16,sfxaccessbankr16b,sfxaccessbankr16c,DSP1Write8b3F
EXTSYM sfxaccessbankr16d,sfxaccessbankr8,sfxaccessbankr8b,sfxaccessbankr8c
EXTSYM sfxaccessbankr8d,sfxaccessbankw16,sfxaccessbankw16b
EXTSYM sfxaccessbankw16c,sfxaccessbankw16d,sfxaccessbankw8
EXTSYM sfxaccessbankw8b,sfxaccessbankw8c,sfxaccessbankw8d,sfxramdata
EXTSYM sramaccessbankr16,sramaccessbankr16s,sramaccessbankr8
EXTSYM sramaccessbankr8s,sramaccessbankw16,sramaccessbankw16s
EXTSYM sramaccessbankw8,sramaccessbankw8s,GenerateBank0TableSA1
EXTSYM ScrDispl,wramreadptr,wramwriteptr
EXTSYM pl1Ltk,pl1Rtk,pl2Ltk,pl2Rtk,pl3Ltk,pl3Rtk,pl4Ltk,pl4Rtk,pl5Ltk,pl5Rtk
EXTSYM loadstate2, headerhack

;initc.c
EXTSYM chip_detect
EXTSYM clearmem,clearSPCRAM
EXTSYM PatchUsingIPS
EXTSYM loadZipFile
EXTSYM ZOpenFileName
EXTSYM loadROM
EXTSYM CalcChecksum
EXTSYM BankCheck
EXTSYM MirrorROM
EXTSYM SplittedROM
EXTSYM addOnStart
EXTSYM addOnSize
EXTSYM SPC7PackIndexLoad,SPC7110IndexSize
EXTSYM DumpROMLoadInfo
EXTSYM SetupSramSize
EXTSYM IntlEHi
EXTSYM CHIPBATT,SFXEnable,C4Enable,SPC7110Enable,RTCEnable,SA1Enable,SDD1Enable,OBCEnable
EXTSYM SETAEnable,ST18Enable,SGBEnable,DSP1Enable,DSP2Enable,DSP3Enable,DSP4Enable,BSEnable

EXTSYM SetaCmdEnable,setaramdata
EXTSYM setaaccessbankr8,setaaccessbankw8,setaaccessbankr8a,setaaccessbankw8a
EXTSYM setaaccessbankr16,setaaccessbankw16,setaaccessbankr16a,setaaccessbankw16a

EXTSYM DSP2Read8b,DSP2Read16b,DSP2Write8b,DSP2Write16b,InitDSP2

%ifdef __LINUX__
EXTSYM LoadDir, popdir, pushdir
%endif

; Initiation

SECTION .data
NEWSYM regsbackup, times 3019 db 0
NEWSYM forceromtype, db 0
NEWSYM loadedfromgui, db 0
NEWSYM SnowOn, db 0
NEWSYM bgfixer, db 0
NEWSYM bgfixer2, db 0
NEWSYM ReInitLength, dd 0
NEWSYM ForceNewGfxOff, dd 0
NEWSYM SfxAC, db 0
blah times 450 db 0
; FIX STATMAT
NEWSYM autoloadstate, db 0        ; auto load state slot number
; FIX STATMAT

SECTION .text

EXTSYM cpalval
NEWSYM init
    ; prevents a crash if cpalval gets accessed before initializing
    mov eax,cpalval
    mov ecx,256
.looppal
    mov dword[eax],cpalval
    add eax,4
    dec ecx
    jnz .looppal

    ; Initialize snow stuff
    mov ecx,400
    xor edx,edx
.snowloop
    shl word[SnowData+edx*2],8
    and byte[SnowVelDist+edx],0F7h
    cmp dword[SnowTimer],0
    jne .skip
    or byte[SnowVelDist+edx],08h
.skip
    inc edx
    dec ecx
    jnz .snowloop

    call BackupSystemVars

    xor eax,eax
    mov al,[cfgreinittime]
    mov ebx,50
    mul ebx
    mov [ReInitLength],eax

    xor eax,eax
    mov al,byte[romtype]
    mov [forceromtype],al
    mov byte[romtype],0
    mov ax,ds
    mov es,ax
    mov eax,regsbackup
    mov ebx,sndrot
    mov ecx,3019
.rbackupl
    mov dl,[ebx]
    mov [eax],dl
    inc ebx
    inc eax
    dec ecx
    jnz .rbackupl
    mov byte[virqnodisable],0
    pushad
    call clearmem
    popad
    call inittable
    call inittableb
    call inittablec
    call SA1inittable
    ; SPC Init
    call copyexecloop
    call procexecloop
    ; SNES Init
    pushad
    call Setper2exec
    popad
    call Makemode7Table
    call makesprprtable
    cmp byte[fname],0
    jne .found
    cmp byte[romloadskip],1
    je .noloadfile
.found
    mov byte[romloadskip],0
    call loadfile
    call SetupROM
    call showinfogui
.noloadfile
    call UpdateDevices
    call init65816
    call initregr
    call initregw
    call initsnes

    ; Initialize volume
    xor eax,eax
    xor edx,edx
    mov al,[MusicRelVol]
    shl eax,7
    mov ebx,0A3D70A3Dh
    mul ebx
    shr edx,6
    cmp dl,127
    jb .noof
    mov dl,127
.noof
    mov [MusicVol],dl

; FIX STATMAT
    ; Here's the auto-load ZST file stuff
    cmp byte[autoloadstate],1
    jl .noautoloadstate
    je .enddigits
    mov ebx,[statefileloc]
    sub byte[autoloadstate],1
    cmp byte[autoloadstate],10
    jge .2digits
    mov al,byte[autoloadstate]
    add al,48
    mov byte[fnamest+ebx],al    
    jmp .enddigits
.2digits
    xor eax,eax
    mov al,byte[autoloadstate]
    mov dl,10
    div dl
    add al,48
    add ah,48
    mov byte[fnamest+ebx-1],al
    mov byte[fnamest+ebx],ah
.enddigits

    ; Load the specified state file
    call loadstate2

    ; Just skip the extension re-setup below if we don't need to do it
    cmp byte[autoloadstate],9
    jbe .noautoloadstate

    ; Put back the 'ST' on the end of the extension as we changed it
    ; above (by placing two digits in the extension). This is so
    ; as not to break any other code later on which depends
    ; on it being present.
  mov ebx,[statefileloc]
%ifdef __LINUX__
    mov word[fnamest+ebx-1],'st'
%else
    mov word[fnamest+ebx-1],'ST'
%endif

.noautoloadstate
; FIX STATMAT
    xor eax,eax
    mov al,[cvidmode]
    cmp byte[GUI16VID+eax],1
    je .yes16b
    mov byte[newengen],1
    mov byte[cfgnewgfx],1
.yes16b
    cmp byte[NewEngEnForce],1
    jne .noforce
    mov byte[NewEngEnForce],0
    mov byte[newengen],1
    mov byte[cfgnewgfx],1
.noforce

    mov ebx,ebm
    mov eax,EndMessage
    mov dh,17h
    mov ch,67
    mov cl,1
.loopen
    mov dl,[ebx]
    rol dl,cl
    xor dl,dh
    mov [eax],dl
    rol dh,1
    inc cl
    or cl,cl
    jne .notzero
    inc cl
.notzero
    and cl,07h
    inc eax
    inc ebx
    dec ch
    jnz .loopen


    cmp byte[yesoutofmemory],1
    jne .noout
    call outofmemfix
.noout
    cmp byte[debugger],0
    je near start65816
    cmp byte[romloadskip],1
    je near start65816
    jmp startdebugger

EndMessageB

; global variables

SECTION .data


; Controls
;FIXME: define pl3contrl, pl4contrl and pl5contrl here?
;Christophe 2001/03/10
NEWSYM numjoy,    db 0   ; number of joysticks (1 = 1, 2 = 2)
; 0 = Disable, 1 = Keyboard, 2 = Joystick, 3 = Gamepad
; 4 = 4-button 5 = 6-button 6 = sidewinder
NEWSYM pl1contrl, db 1   ; player 1 device
NEWSYM pl1keya,   dd 0
NEWSYM pl1keyb,   dd 0
%ifdef __MSDOS__
NEWSYM pl1selk,   dd 54
NEWSYM pl1startk, dd 28
NEWSYM pl1upk,    dd 72
NEWSYM pl1downk,  dd 80
NEWSYM pl1leftk,  dd 75
NEWSYM pl1rightk, dd 77
%else
NEWSYM pl1selk,   dd 54
NEWSYM pl1startk, dd 28
NEWSYM pl1upk,    dd 200
NEWSYM pl1downk,  dd 208
NEWSYM pl1leftk,  dd 203 
NEWSYM pl1rightk, dd 205
%endif
NEWSYM pl1Xk,     dd 31
NEWSYM pl1Ak,     dd 45
NEWSYM pl1Lk,     dd 32
NEWSYM pl1Yk,     dd 30
NEWSYM pl1Bk,     dd 44
NEWSYM pl1Rk,     dd 46
NEWSYM pl2contrl, db 0   ; player 2 device
NEWSYM pl2keya,   dd 0
NEWSYM pl2keyb,   dd 0
NEWSYM pl2selk,   dd 27
NEWSYM pl2startk, dd 26
NEWSYM pl2upk,    dd 199
NEWSYM pl2downk,  dd 207
NEWSYM pl2leftk,  dd 211
NEWSYM pl2rightk, dd 209
NEWSYM pl2Xk,     dd 24
NEWSYM pl2Ak,     dd 25
NEWSYM pl2Lk,     dd 23
NEWSYM pl2Yk,     dd 37
NEWSYM pl2Bk,     dd 38
NEWSYM pl2Rk,     dd 36
NEWSYM JoyStart,  db 0
NEWSYM JoySelec,  db 0
NEWSYM JoyBC,     db 1
NEWSYM JoyYC,     db 3
NEWSYM JoyAC,     db 2
NEWSYM JoyXC,     db 4
NEWSYM JoyLC,     db 5
NEWSYM JoyRC,     db 6
NEWSYM TurboSw,   db 0

NEWSYM romtype, db 0    ; ROM type in bytes
NEWSYM resetv,  dw 0    ; reset vector
NEWSYM abortv,  dw 0    ; abort vector
NEWSYM nmiv2,   dw 0    ; nmi vector
NEWSYM nmiv,    dw 0    ; nmi vector
NEWSYM irqv,    dw 0    ; irq vector
NEWSYM irqv2,   dw 0    ; irq vector
NEWSYM brkv,    dw 0    ; brk vector
NEWSYM copv,    dw 0    ; cop vector
NEWSYM abortv8, dw 0    ; abort vector emulation mode
NEWSYM nmiv8,   dw 0    ; nmi vector emulation mode
NEWSYM irqv8,   dw 0    ; irq vector emulation mode
NEWSYM brkv8,   dw 0    ; brk vector emulation mode
NEWSYM copv8,   dw 0    ; cop vector emulation mode
NEWSYM cycpb268, db 109  ; 110
NEWSYM cycpb358, db 149  ; 155
NEWSYM cycpbl2,  db 109  ; percentage left of CPU/SPC to run  (3.58 = 175)
NEWSYM cycpblt2, db 149  ; percentage of CPU/SPC to run
NEWSYM writeon, db 0    ; Write enable/disable on snes rom memory
NEWSYM totlines, dw 263 ; total # of lines
NEWSYM soundon, db 0    ; Current sound enabled (1=enabled)
NEWSYM zsmesg,  db 'ZSNES Save State File V0.6',26
NEWSYM versn,   db 60   ; version #/100
NEWSYM curcyc,  db 0    ; cycles left in scanline
NEWSYM curypos, dw 0    ; current y position
NEWSYM cacheud, db 1    ; update cache every ? frames
NEWSYM ccud,    db 0    ; current cache increment
NEWSYM intrset, db 0    ; interrupt set
NEWSYM cycpl,   db 0    ; cycles per scanline
NEWSYM cycphb,  db 0    ; cycles per hblank
NEWSYM spcon,   db 0    ; SPC Enable (1=enabled)
NEWSYM stackand, dw 01FFh ; value to and stack to keep it from going to the wrong area
NEWSYM stackor,  dw 0100h ; value to or stack to keep it from going to the wrong area

; 65816 registers

NEWSYM xat,      dw 0
NEWSYM xdbt,     db 0
NEWSYM xpbt,     db 0
NEWSYM xst,      dw 0
NEWSYM xdt,      dw 0
NEWSYM xxt,      dw 0
NEWSYM xyt,      dw 0
NEWSYM xp,       db 0
NEWSYM xe,       db 0
NEWSYM xpc,      dw 0
NEWSYM xirqb,    db 0           ; which bank the irqs start at
NEWSYM debugger, db 0              ; Start with debugger (1=yes,0=no)
NEWSYM Curtableaddr,  dd 0                 ; Current table address
NEWSYM curnmi,   db 0           ; if in NMI(1) or not(0)
; pharos - equ hack *sigh*
num2writecpureg equ $-zsmesg
ALIGN32
NEWSYM cycpbl,  dd 110  ; percentage left of CPU/SPC to run  (3.58 = 175)
NEWSYM cycpblt, dd 110  ; percentage of CPU/SPC to run

NEWSYM PHnum2writecpureg, dd num2writecpureg


; SNES memory map ROM locations

NEWSYM cpuoverptr, dd 0                 ; pointer to cpuover
;snesmmap times 256 dd 0         ; addresses 8000-FFFF
;snesmap2 times 256 dd 0         ; addresses 0000-7FFF
;NEWSYM exeloopa, times 128 db 0         ; execloop should be stored here
;NEWSYM exeloopb, times 128 db 0         ; execloopns should be stored here
;NEWSYM exeloopc, times 128 db 0         ; execloops should be stored here
;NEWSYM exeloopd, times 128 db 0         ; execloopn should be stored here
;NEWSYM prevcrash, times 250 db 0


ALIGN32
NEWSYM xa,       dd 0
NEWSYM xdb,      dd 0
NEWSYM xpb,      dd 0
NEWSYM xs,       dd 0
NEWSYM xd,       dd 0
NEWSYM xx,       dd 0
NEWSYM xy,       dd 0
NEWSYM flagnz,   dd 0
NEWSYM flago,    dd 0
NEWSYM flagc,    dd 0
NEWSYM bankkp,   dd 0
NEWSYM Sflagnz,  dd 0
NEWSYM Sflago,   dd 0
NEWSYM Sflagc,   dd 0

ebm db 166,95,66,223,17,11,103,180,156,68,108,120,138,55,203,205,178,210,39,252,128,66
    db 65,167,155,151,197,125,176,66,73,230,61,210,7,137,152,110,203,241,50,89,70,29,176
    db 42,99,167,155,92,3,221,224,54,53,167,155,211,70,205,138,202,91,234,178,80,229,13,10


SECTION .text


;*******************************************************
; Read Input Device            Reads from Keyboard, etc.
;*******************************************************

SECTION .bss
NEWSYM WhichSW, resb 1
NEWSYM WhichGR, resb 1
NEWSYM autofr,  resb 1
TurboCB resb 1

NEWSYM MovieTemp, resb 1
NEWSYM JoyAOrig, resd 1
NEWSYM JoyBOrig, resd 1
NEWSYM JoyCOrig, resd 1
NEWSYM JoyDOrig, resd 1
NEWSYM JoyEOrig, resd 1
NEWSYM JoyANow, resd 1
NEWSYM JoyBNow, resd 1
NEWSYM JoyCNow, resd 1
NEWSYM JoyDNow, resd 1
NEWSYM JoyENow, resd 1
NEWSYM PJoyAOrig, resd 1
NEWSYM PJoyBOrig, resd 1
NEWSYM PJoyCOrig, resd 1
NEWSYM PJoyDOrig, resd 1
NEWSYM PJoyEOrig, resd 1
NEWSYM LethEnData, resd 1
SECTION .text

%macro PlayerDeviceHelp 3
    mov eax,[%1]
    cmp byte[chaton],0
    je %%okay
    cmp eax,40h
    jb %%no
%%okay
    cmp byte[pressed+eax],1
    jne %%no
    or dword[%2],%3
%%no
%endmacro

%macro ProcSNESMouse 1
    test byte[mousebuttons],02h
    jz %%n
    or dword[%1],00000000100000000000000000000000b
    mov al,1
%%n
    test byte[mousebuttons],01h
    jz %%n2
    or dword[%1],00000000010000000000000000000000b
%%n2
    or dword[%1],00000000000000010000000000000000b
    mov al,byte[mouseypos]
    and al,7Fh
    or byte[%1+1],al
    mov al,byte[mousexpos]
    and al,7Fh
    or byte[%1],al
    test byte[mouseydir],01h
    jz %%n3
    or dword[%1],00000000000000001000000000000000b
%%n3
    test byte[mousexdir],01h
    jz %%n4
    or dword[%1],00000000000000000000000010000000b
%%n4
%endmacro

%macro ProcessKeyComb 2
    cmp dword[NumCombo],0
    je near %%nocomb
    cmp byte[CNetType],20
    je near %%nocomb
    mov eax,CombinDataGlob
    cmp byte[GUIComboGameSpec],0
    je %%local
    mov eax,CombinDataLocl
%%local
    push ecx
    push ebx
    xor ebx,ebx
    cmp byte[ComboProg+%1],0
    jne near %%progressing
    test dword[%2],01000000h
    jz %%noright
    mov dword[CombDirSwap],0
%%noright
    test dword[%2],02000000h
    jz %%noleft
    mov dword[CombDirSwap],1
%%noleft
    mov ecx,[NumCombo]
%%loop
    mov bx,[eax+62]
    cmp byte[pressed+ebx],1
    jne %%nopress
    cmp byte[eax+64],%1
    je %%startprogress
%%nopress
    add eax,66
    dec ecx
    jnz %%loop
    jmp %%endcomb
%%startprogress
    mov byte[pressed+ebx],2
    mov byte[ComboProg+%1],1
    mov byte[ComboPtr+%1],0
    mov dword[PressComb+%1*4],0
    mov dword[HoldComb+%1*4],0
    mov dword[CombCont+%1*4],CombContDatN
    cmp dword[CombDirSwap],0
    je %%NoSwapLeftRight
    cmp byte[eax+65],0
    je %%NoSwapLeftRight
    mov dword[CombCont+%1*4],CombContDatR
%%NoSwapLeftRight
    add eax,20
    mov [StartComb+%1*4],eax
%%progressing
    mov ecx,%1
    mov eax,[StartComb+%1*4]
    call ProcessCombo
    mov [StartComb+%1*4],eax
    or ebx,ebx
    jz %%proccomb
    mov byte[ComboProg+%1],0
%%proccomb
    mov dword[%2],0
    mov eax,[HoldComb+%1*4]
    or dword[%2],eax
    mov eax,[PressComb+%1*4]
    or dword[%2],eax
%%endcomb
    pop ebx
    pop ecx
%%nocomb
%endmacro

ProcessCombo:
    mov dword[KeyLPress],0
    cmp dword[CombDelay+ecx*4],0
    jne .delay
.nextsession
    xor ebx,ebx
    cmp byte[eax],0
    je .finish
    mov bl,[eax]
    cmp bl,37
    jb .keypress
    cmp bl,48
    ja .finish
    sub ebx,37
    shl ebx,2
    add ebx,CombTDelN
    cmp byte[romispal],0
    je .ntsc
    sub ebx,CombTDelN
    add ebx,CombTDelP
.ntsc
    mov ebx,[ebx]
    mov dword[CombDelay+ecx*4],ebx
    inc eax
    inc byte[ComboPtr+ecx]
    cmp byte[ComboPtr+ecx],42
    je .finish
.delay
    dec dword[CombDelay+ecx*4]
    xor ebx,ebx
    ret
.finish
    mov ebx,1
    ret
.keypress
    cmp dword[KeyLPress],0
    jne .alreadyproc
    mov dword[PressComb+ecx*4],0
    mov dword[KeyLPress],1
.alreadyproc
    dec ebx
    cmp ebx,12
    jae .pressonly
    shl ebx,2
    add ebx,[CombCont+ecx*4]
    mov ebx,[ebx]
    or [PressComb+ecx*4],ebx
    jmp .finkeyproc
.pressonly
    sub ebx,12
    cmp ebx,12
    jae .releaseonly
    shl ebx,2
    add ebx,[CombCont+ecx*4]
    mov ebx,[ebx]
    or [HoldComb+ecx*4],ebx
    jmp .finkeyproc
.releaseonly
    sub ebx,12                ; <- bugfix from Maxim
    shl ebx,2
    add ebx,[CombCont+ecx*4]
    mov ebx,[ebx]
    xor ebx,0FFFFFFFFh
    and [HoldComb+ecx*4],ebx
    and [PressComb+ecx*4],ebx  ; <- buxfix from Maxim
.finkeyproc
    inc eax
    inc byte[ComboPtr+ecx]
    cmp byte[ComboPtr+ecx],42
    je near .finish
    jmp .nextsession

SECTION .data
ComboProg dd 0
ComboPtr  dd 0
KeyLPress dd 0
CombDirSwap dd 0
CombDelay times 4 dd 0
StartComb times 4 dd 0
HoldComb times 4 dd 0
PressComb times 4 dd 0
CombCont times 4 dd 0
CombTDelN dd 1,2,3,4,5,9,30,60,120,180,240,300
CombTDelP dd 1,2,3,4,5,9,25,50,100,150,200,250
CombContDatN dd 08000000h,04000000h,02000000h,01000000h,00800000h,80000000h
             dd 00400000h,40000000h,00200000h,00100000h,10000000h,20000000h
CombContDatR dd 08000000h,04000000h,01000000h,02000000h,00800000h,80000000h
             dd 00400000h,40000000h,00200000h,00100000h,10000000h,20000000h
SECTION .text

%macro PlayerDeviceFix 1
   mov eax,[%1]
   and eax,0C000000h
   cmp eax,0C000000h
   jne %%noupdown
   and dword[%1],0F3FFFFFFh
%%noupdown
   mov eax,[%1]
   and eax,03000000h
   cmp eax,03000000h
   jne %%noleftright
   and dword[%1],0FCFFFFFFh
%%noleftright
%endmacro

NEWSYM ReadInputDevice
    mov byte[WhichSW],1
    mov byte[WhichGR],0
    inc byte[TurboSw]
    mov byte[TurboCB],01h
    cmp byte[Turbo30hz],0
    je .noturbo30
    mov byte[TurboCB],02h
.noturbo30
    ; Read External Devices (Joystick, PPort, etc.)
    mov byte[nojoystickpoll],1
    call JoyRead
    mov byte[nojoystickpoll],0
    ; Process Data
    mov dword[JoyAOrig],0
    ; Get Player1 input device
    cmp byte[snesmouse],1
    jne .nomouse1
    call processmouse
    ProcSNESMouse JoyAOrig
    jmp .noinput1
.nomouse1
    PlayerDeviceHelp pl1Bk    ,JoyAOrig,80000000h
    PlayerDeviceHelp pl1Yk    ,JoyAOrig,40000000h
    PlayerDeviceHelp pl1selk  ,JoyAOrig,20000000h
    PlayerDeviceHelp pl1startk,JoyAOrig,10000000h
    PlayerDeviceHelp pl1upk   ,JoyAOrig,08000000h
    PlayerDeviceHelp pl1downk ,JoyAOrig,04000000h
    PlayerDeviceHelp pl1leftk ,JoyAOrig,02000000h
    PlayerDeviceHelp pl1rightk,JoyAOrig,01000000h
    PlayerDeviceHelp pl1Ak    ,JoyAOrig,00800000h
    PlayerDeviceHelp pl1Xk    ,JoyAOrig,00400000h
    PlayerDeviceHelp pl1Lk    ,JoyAOrig,00200000h
    PlayerDeviceHelp pl1Rk    ,JoyAOrig,00100000h
    PlayerDeviceHelp pl1ULk   ,JoyAOrig,0A000000h
    PlayerDeviceHelp pl1URk   ,JoyAOrig,09000000h
    PlayerDeviceHelp pl1DLk   ,JoyAOrig,06000000h
    PlayerDeviceHelp pl1DRk   ,JoyAOrig,05000000h
    PlayerDeviceFix JoyAOrig
    mov al,byte[TurboCB]
    test byte[TurboSw],al
    jnz near .noswitch
    PlayerDeviceHelp pl1Xtk   ,JoyAOrig,00400000h
    PlayerDeviceHelp pl1Ytk   ,JoyAOrig,40000000h
    PlayerDeviceHelp pl1Atk   ,JoyAOrig,00800000h
    PlayerDeviceHelp pl1Btk   ,JoyAOrig,80000000h
    PlayerDeviceHelp pl1Ltk   ,JoyAOrig,00200000h
    PlayerDeviceHelp pl1Rtk   ,JoyAOrig,00100000h
.noswitch
    ProcessKeyComb 0,JoyAOrig
    or dword[JoyAOrig],00008000h        ; Joystick Enable
    cmp byte[GUIDelayB],0
    je .noinput1
    cmp byte[GUIDelayB],1
    jne .inputbd
    test dword[JoyAOrig],80000000h
    jnz .inputbdcb
    dec byte[GUIDelayB]
    jmp .noinput1
.inputbd
    dec byte[GUIDelayB]
.inputbdcb
    and dword[JoyAOrig],7FFFFFFFh
.noinput1
    mov dword[JoyBOrig],0
    cmp byte[snesmouse],2
    jne .nomouse2
    call processmouse
    ProcSNESMouse JoyBOrig
    jmp .noinput2
.nomouse2
    cmp byte[snesmouse],3
    jne .nosuperscope
    call processmouse
    mov byte[JoyBOrig+2],0FFh
    mov al,[ssautosw]
    test byte[mousebuttons],01h
    jz .nobutton1
    or al,80h
.nobutton1
    cmp byte[pressed+14],0
    jz .nobutton3
    or al,10h
.nobutton3
    test byte[mousebuttons],02h
    jz .nobutton4
    or al,40h
.nobutton4
    mov [JoyBOrig+3],al
    jmp .noinput2
.nosuperscope
    cmp byte[snesmouse],4
    jne .nolethalen
    call processmouse
    mov eax,[romdata]
    cmp dword[eax+1000h],0AD20C203h
    jne .not
    mov eax,[wramdata]
    cmp byte[eax],26
    je .not
    mov bl,[mousexloc]
    mov byte[eax+40Ah],bl
    mov bl,[mouseyloc]
    mov byte[eax+40Eh],bl
.not
;    mov word[JoyBOrig+2],000Eh
;    and dword[LethEnData],0000000FFh
;    or dword[LethEnData],055010000h
;    inc byte[LethEnData]
    test byte[LethEnData],1
    jz .n1
;    mov byte[LethEnData+2],8
    mov byte[extlatch],0
.n1
    test byte[mousebuttons],01h
    jz .nobutton1b
;    or dword[LethEnData+2],10h
    or byte[JoyAOrig+3],80h
.nobutton1b
    cmp byte[pressed+14],0
    jz .nobutton3b
;    or byte[LethEnData+2],40h
.nobutton3b
    test byte[mousebuttons],02h
    jz .nobutton4b
;    or byte[LethEnData+2],40h
    or byte[JoyAOrig+2],80h
.nobutton4b
    jmp .noinput2
.nolethalen
    cmp byte[pl2contrl],0
    je near .noinput2
    ; Get Player2 input device
    PlayerDeviceHelp pl2Bk    ,JoyBOrig,80000000h
    PlayerDeviceHelp pl2Yk    ,JoyBOrig,40000000h
    PlayerDeviceHelp pl2selk  ,JoyBOrig,20000000h
    PlayerDeviceHelp pl2startk,JoyBOrig,10000000h
    PlayerDeviceHelp pl2upk   ,JoyBOrig,08000000h
    PlayerDeviceHelp pl2downk ,JoyBOrig,04000000h
    PlayerDeviceHelp pl2leftk ,JoyBOrig,02000000h
    PlayerDeviceHelp pl2rightk,JoyBOrig,01000000h
    PlayerDeviceHelp pl2Ak    ,JoyBOrig,00800000h
    PlayerDeviceHelp pl2Xk    ,JoyBOrig,00400000h
    PlayerDeviceHelp pl2Lk    ,JoyBOrig,00200000h
    PlayerDeviceHelp pl2Rk    ,JoyBOrig,00100000h
    PlayerDeviceHelp pl2ULk   ,JoyBOrig,0A000000h
    PlayerDeviceHelp pl2URk   ,JoyBOrig,09000000h
    PlayerDeviceHelp pl2DLk   ,JoyBOrig,06000000h
    PlayerDeviceHelp pl2DRk   ,JoyBOrig,05000000h
    PlayerDeviceFix JoyBOrig
    mov al,byte[TurboCB]
    test byte[TurboSw],al
    jnz near .noswitch2
    PlayerDeviceHelp pl2Xtk   ,JoyBOrig,00400000h
    PlayerDeviceHelp pl2Ytk   ,JoyBOrig,40000000h
    PlayerDeviceHelp pl2Atk   ,JoyBOrig,00800000h
    PlayerDeviceHelp pl2Btk   ,JoyBOrig,80000000h
    PlayerDeviceHelp pl2Ltk   ,JoyBOrig,00200000h
    PlayerDeviceHelp pl2Rtk   ,JoyBOrig,00100000h
.noswitch2
    ProcessKeyComb 1,JoyBOrig
    or dword[JoyBOrig],00008000h        ; Joystick Enable
.noinput2
    mov dword[JoyCOrig],0
    cmp byte[pl3contrl],0
    je near .noinput3
    ; Get Player3 input device
    PlayerDeviceHelp pl3Bk    ,JoyCOrig,80000000h
    PlayerDeviceHelp pl3Yk    ,JoyCOrig,40000000h
    PlayerDeviceHelp pl3selk  ,JoyCOrig,20000000h
    PlayerDeviceHelp pl3startk,JoyCOrig,10000000h
    PlayerDeviceHelp pl3upk   ,JoyCOrig,08000000h
    PlayerDeviceHelp pl3downk ,JoyCOrig,04000000h
    PlayerDeviceHelp pl3leftk ,JoyCOrig,02000000h
    PlayerDeviceHelp pl3rightk,JoyCOrig,01000000h
    PlayerDeviceHelp pl3Ak    ,JoyCOrig,00800000h
    PlayerDeviceHelp pl3Xk    ,JoyCOrig,00400000h
    PlayerDeviceHelp pl3Lk    ,JoyCOrig,00200000h
    PlayerDeviceHelp pl3Rk    ,JoyCOrig,00100000h
    PlayerDeviceHelp pl3ULk   ,JoyCOrig,0A000000h
    PlayerDeviceHelp pl3URk   ,JoyCOrig,09000000h
    PlayerDeviceHelp pl3DLk   ,JoyCOrig,06000000h
    PlayerDeviceHelp pl3DRk   ,JoyCOrig,05000000h
    PlayerDeviceFix JoyCOrig
    mov al,byte[TurboCB]
    test byte[TurboSw],al
    jnz near .noswitch3
    PlayerDeviceHelp pl3Xtk   ,JoyCOrig,00400000h
    PlayerDeviceHelp pl3Ytk   ,JoyCOrig,40000000h
    PlayerDeviceHelp pl3Atk   ,JoyCOrig,00800000h
    PlayerDeviceHelp pl3Btk   ,JoyCOrig,80000000h
    PlayerDeviceHelp pl3Ltk   ,JoyCOrig,00200000h
    PlayerDeviceHelp pl3Rtk   ,JoyCOrig,00100000h
.noswitch3
    ProcessKeyComb 2,JoyCOrig
    or dword[JoyCOrig],00008000h        ; Joystick Enable
.noinput3
    mov dword[JoyDOrig],0
    cmp byte[pl4contrl],0
    je near .noinput4
    ; Get Player4 input device
    PlayerDeviceHelp pl4Bk    ,JoyDOrig,80000000h
    PlayerDeviceHelp pl4Yk    ,JoyDOrig,40000000h
    PlayerDeviceHelp pl4selk  ,JoyDOrig,20000000h
    PlayerDeviceHelp pl4startk,JoyDOrig,10000000h
    PlayerDeviceHelp pl4upk   ,JoyDOrig,08000000h
    PlayerDeviceHelp pl4downk ,JoyDOrig,04000000h
    PlayerDeviceHelp pl4leftk ,JoyDOrig,02000000h
    PlayerDeviceHelp pl4rightk,JoyDOrig,01000000h
    PlayerDeviceHelp pl4Ak    ,JoyDOrig,00800000h
    PlayerDeviceHelp pl4Xk    ,JoyDOrig,00400000h
    PlayerDeviceHelp pl4Lk    ,JoyDOrig,00200000h
    PlayerDeviceHelp pl4Rk    ,JoyDOrig,00100000h
    PlayerDeviceHelp pl4ULk   ,JoyDOrig,0A000000h
    PlayerDeviceHelp pl4URk   ,JoyDOrig,09000000h
    PlayerDeviceHelp pl4DLk   ,JoyDOrig,06000000h
    PlayerDeviceHelp pl4DRk   ,JoyDOrig,05000000h
    PlayerDeviceFix JoyDOrig
    mov al,byte[TurboCB]
    test byte[TurboSw],al
    jnz near .noswitch4
    PlayerDeviceHelp pl4Xtk   ,JoyDOrig,00400000h
    PlayerDeviceHelp pl4Ytk   ,JoyDOrig,40000000h
    PlayerDeviceHelp pl4Atk   ,JoyDOrig,00800000h
    PlayerDeviceHelp pl4Btk   ,JoyDOrig,80000000h
    PlayerDeviceHelp pl4Ltk   ,JoyDOrig,00200000h
    PlayerDeviceHelp pl4Rtk   ,JoyDOrig,00100000h
.noswitch4
    ProcessKeyComb 3,JoyDOrig
    or dword[JoyDOrig],00008000h        ; Joystick Enable
.noinput4
    mov dword[JoyEOrig],0
    cmp byte[pl5contrl],0
    je near .noinput5
    ; Get Player4 input device
    PlayerDeviceHelp pl5Bk    ,JoyEOrig,80000000h
    PlayerDeviceHelp pl5Yk    ,JoyEOrig,40000000h
    PlayerDeviceHelp pl5selk  ,JoyEOrig,20000000h
    PlayerDeviceHelp pl5startk,JoyEOrig,10000000h
    PlayerDeviceHelp pl5upk   ,JoyEOrig,08000000h
    PlayerDeviceHelp pl5downk ,JoyEOrig,04000000h
    PlayerDeviceHelp pl5leftk ,JoyEOrig,02000000h
    PlayerDeviceHelp pl5rightk,JoyEOrig,01000000h
    PlayerDeviceHelp pl5Ak    ,JoyEOrig,00800000h
    PlayerDeviceHelp pl5Xk    ,JoyEOrig,00400000h
    PlayerDeviceHelp pl5Lk    ,JoyEOrig,00200000h
    PlayerDeviceHelp pl5Rk    ,JoyEOrig,00100000h
    PlayerDeviceHelp pl5ULk   ,JoyEOrig,0A000000h
    PlayerDeviceHelp pl5URk   ,JoyEOrig,09000000h
    PlayerDeviceHelp pl5DLk   ,JoyEOrig,06000000h
    PlayerDeviceHelp pl5DRk   ,JoyEOrig,05000000h
    PlayerDeviceFix JoyEOrig
    mov al,byte[TurboCB]
    test byte[TurboSw],al
    jnz near .noswitch5
    PlayerDeviceHelp pl5Xtk   ,JoyEOrig,00400000h
    PlayerDeviceHelp pl5Ytk   ,JoyEOrig,40000000h
    PlayerDeviceHelp pl5Atk   ,JoyEOrig,00800000h
    PlayerDeviceHelp pl5Btk   ,JoyEOrig,80000000h
    PlayerDeviceHelp pl5Ltk   ,JoyEOrig,00200000h
    PlayerDeviceHelp pl5Rtk   ,JoyEOrig,00100000h
.noswitch5
    ProcessKeyComb 3,JoyEOrig
    or dword[JoyEOrig],00008000h        ; Joystick Enable
.noinput5
    cmp byte[pl12s34],1
    je .pl1234
.nopl1234
    ret
.pl1234
    cmp byte[snesmouse],4
    je .nopl1234
    cmp byte[snesmouse],1
    je .nopl13
    mov eax,[JoyCOrig]
    or [JoyAOrig],eax
.nopl13
    cmp byte[snesmouse],2
    je .nopl24
    cmp byte[snesmouse],3
    je .nopl24
    mov eax,[JoyDOrig]
    or [JoyBOrig],eax
.nopl24
    ret

NEWSYM ProcessMovies
    cmp byte[MovieProcessing],2
    je near .record

.repeater
    pushad
    mov bx,[MovieFileHand]
    mov ecx,1
    mov edx,MovieTemp
    call Read_File
    cmp eax,0
    je near .endplay2
    cmp byte[MovieTemp],1
    ja near .endplay
    cmp byte[MovieTemp],1
    je .nomovement
    mov ecx,20
    mov edx,PJoyAOrig
    call Read_File
.nomovement
    popad
    mov eax,[PJoyAOrig]
    mov [JoyAOrig],eax
    mov eax,[PJoyBOrig]
    mov [JoyBOrig],eax
    mov eax,[PJoyCOrig]
    mov [JoyCOrig],eax
    mov eax,[PJoyDOrig]
    mov [JoyDOrig],eax
    mov eax,[PJoyEOrig]
    mov [JoyEOrig],eax
    ret
.endplay2
    mov dword[Msgptr],.movieended
    mov eax,[MsgCount]
    mov [MessageOn],eax
.endplay
    mov byte[MovieProcessing],0
    call Close_File
    popad
    ret
.record
    cmp byte[BackState],1
    jne .nobackstate
    cmp byte[CNetType],20
    jae near .storefullcrecv
.nobackstate
    mov eax,[JoyAOrig]
    cmp eax,[PJoyAOrig]
    jne .storefull
    mov eax,[JoyBOrig]
    cmp eax,[PJoyBOrig]
    jne .storefull
    mov eax,[JoyCOrig]
    cmp eax,[PJoyCOrig]
    jne .storefull
    mov eax,[JoyDOrig]
    cmp eax,[PJoyDOrig]
    jne .storefull
    mov eax,[JoyEOrig]
    cmp eax,[PJoyEOrig]
    jne .storefull
    mov byte[MovieTemp],1
    push ebx
    mov ebx,[MovieBuffSize]
    mov byte[MovieBuffer+ebx],1
    inc dword[MovieBuffSize]
    pop ebx
    inc dword[MovieBuffFrame]
    cmp dword[MovieBuffFrame],60
    je near .writebuffertodisk
    ret
.storefull
    mov eax,[JoyAOrig]
    mov [PJoyAOrig],eax
    mov eax,[JoyBOrig]
    mov [PJoyBOrig],eax
    mov eax,[JoyCOrig]
    mov [PJoyCOrig],eax
    mov eax,[JoyDOrig]
    mov [PJoyDOrig],eax
    mov eax,[JoyEOrig]
    mov [PJoyEOrig],eax
    mov byte[MovieTemp],0
    push ebx
    mov ebx,[MovieBuffSize]
    mov byte[MovieBuffer+ebx],0
    mov eax,[JoyAOrig]
    mov [MovieBuffer+ebx+1],eax
    mov eax,[JoyBOrig]
    mov [MovieBuffer+ebx+5],eax
    mov eax,[JoyCOrig]
    mov [MovieBuffer+ebx+9],eax
    mov eax,[JoyDOrig]
    mov [MovieBuffer+ebx+13],eax
    mov eax,[JoyEOrig]
    mov [MovieBuffer+ebx+17],eax
    add dword[MovieBuffSize],21
    pop ebx
    inc dword[MovieBuffFrame]
    cmp dword[MovieBuffFrame],60
    je near .writebuffertodisk
    ret
.writebuffertodisk
    pushad
    mov bx,[MovieFileHand]
    mov ecx,[MovieBuffSize]
    mov edx,MovieBuffer
    call Write_File
    popad
    mov dword[MovieBuffSize],0
    mov dword[MovieBuffFrame],0
    ret

.notstorefullcrecv
    push ebx
    mov eax,[ReadHead]
    cmp [CReadHead],eax
    jne .juststoredata
    inc dword[CFWriteStart]
    and dword[CFWriteStart],7Fh
    mov eax,[CFWriteHead]
    cmp eax,[CFWriteStart]
    jne .nowrite
    call .writetobuffer
    inc dword[CFWriteHead]
    and dword[CFWriteHead],7Fh
.nowrite
    inc dword[CReadHead]
    and dword[CReadHead],7Fh
.juststoredata
    mov ebx,[ReadHead]
    shl ebx,5
    mov byte[StoreBuffer+ebx],1
    inc dword[ReadHead]
    and dword[ReadHead],7Fh
    pop ebx
    ret

.storefullcrecv
    push ebx
    mov eax,[ReadHead]
    cmp [CReadHead],eax
    jne .juststoredata2
    inc dword[CFWriteStart]
    and dword[CFWriteStart],7Fh
    mov eax,[CFWriteHead]
    cmp eax,[CFWriteStart]
    jne .nowrite2
    call .writetobuffer
    inc dword[CFWriteHead]
    and dword[CFWriteHead],7Fh
.nowrite2
    inc dword[CReadHead]
    and dword[CReadHead],7Fh
.juststoredata2
    mov ebx,[ReadHead]
    shl ebx,5
    add ebx,StoreBuffer
    mov byte[ebx],0
    mov eax,[JoyAOrig]
    mov [ebx+1],eax
    mov eax,[JoyBOrig]
    mov [ebx+5],eax
    mov eax,[JoyCOrig]
    mov [ebx+9],eax
    mov eax,[JoyDOrig]
    mov [ebx+13],eax
    mov eax,[JoyEOrig]
    mov [ebx+17],eax
    inc dword[ReadHead]
    and dword[ReadHead],7Fh
    pop ebx
    ret

.writetobuffer
    push ecx
    mov ecx,[CFWriteHead]
    shl ecx,5
    add ecx,StoreBuffer
;    cmp byte[ecx],1
;    je .nochange
    mov eax,[ecx+1]
    cmp [PJoyAOrig],eax
    jne .change
    mov eax,[ecx+5]
    cmp [PJoyBOrig],eax
    jne .change
    mov eax,[ecx+9]
    cmp [PJoyCOrig],eax
    jne .change
    mov eax,[ecx+13]
    cmp [PJoyDOrig],eax
    jne .change
    mov eax,[ecx+17]
    cmp [PJoyEOrig],eax
    jne .change
.nochange
    pop ecx
    mov ebx,[MovieBuffSize]
    mov byte[MovieBuffer+ebx],1
    inc dword[MovieBuffSize]
    inc dword[MovieBuffFrame]
    cmp dword[MovieBuffFrame],60
    je near .writebuffer
    ret
.change
    mov eax,[ecx+1]
    mov [PJoyAOrig],eax
    mov eax,[ecx+5]
    mov [PJoyBOrig],eax
    mov eax,[ecx+9]
    mov [PJoyCOrig],eax
    mov eax,[ecx+13]
    mov [PJoyDOrig],eax
    mov eax,[ecx+17]
    mov [PJoyEOrig],eax
    mov ebx,[MovieBuffSize]
    mov byte[MovieBuffer+ebx],0
    mov eax,[ecx+1]
    mov [MovieBuffer+ebx+1],eax
    mov eax,[ecx+5]
    mov [MovieBuffer+ebx+5],eax
    mov eax,[ecx+9]
    mov [MovieBuffer+ebx+9],eax
    mov eax,[ecx+13]
    mov [MovieBuffer+ebx+13],eax
    mov eax,[ecx+17]
    mov [MovieBuffer+ebx+17],eax
    add dword[MovieBuffSize],21
    pop ecx
    inc dword[MovieBuffFrame]
    cmp dword[MovieBuffFrame],60
    je .writebuffer
    ret
.writebuffer
    call .writebuffertodisk
    ret

SECTION .data

.movieended db 'MOVIE FINISHED.',0
NEWSYM CFWriteStart, dd 64+30

SECTION .bss
NEWSYM MovieBuffSize, resd 1
NEWSYM MovieBuffFrame, resd 1
MovieBuffer resd 21*60
NEWSYM CReadHead, resd 1
NEWSYM ReadHead, resd 1
NEWSYM CFWriteHead, resd 1
NEWSYM StoreBuffer, resb 128*32

;*******************************************************
; Init 65816                   Initializes the Registers
;*******************************************************

SECTION .data
NEWSYM disablehdma,    db 0
NEWSYM disableeffects, db 0
NEWSYM hdmaearlstart,  db 0
NEWSYM hdmadelay,      db 0
NEWSYM dracxhack,      db 0
NEWSYM disable65816sh, db 0
NEWSYM disablespcclr , db 0
NEWSYM virqnodisable,  db 0
NEWSYM numspcvblleft,  dd 0
NEWSYM spc700idle,     dd 0
NEWSYM IRQHack,        dw 0
NEWSYM Offby1line,     db 0
NEWSYM CacheCheckSkip,     db 0
NEWSYM HIRQSkip,     db 0
NEWSYM ClearScreenSkip, db 0
NEWSYM ENVDisable, db 0
SECTION .text

NEWSYM idledetectspc
    inc dword[numspcvblleft]
    cmp byte[SPCStallSetting],2
    jae .fullstall
    inc byte[SPCStallSetting]
    mov byte[ReturnFromSPCStall],1
    ret
.fullstall
    mov dword[spc700idle],29
    mov dword[Msgptr],.unableskip
    mov eax,[MsgCount]
    mov [MessageOn],eax
    ret

SECTION .data
.unableskip db 'SPC700 STALL DETECTED.',0

SECTION .bss
NEWSYM ReturnFromSPCStall, resb 1
NEWSYM SPCStallSetting, resb 1
NEWSYM SPCSkipXtraROM, resb 1
NEWSYM WindowDisables, resd 1
SECTION .text

%macro helpclearmem 2
    mov edi,%1
    mov ecx,%2
    rep stosb
%endmacro

NEWSYM init65816
    mov byte[osm2dis],0
    mov byte[bgfixer2],0
    mov word[ScrDispl],0
    cmp byte[SA1Enable],0
    je .nosa1init
    call SA1Reset
    call SetAddressingModesSA1
.nosa1init
    cmp byte[OBCEnable],0
    je .noobcinit
    call InitOBC
.noobcinit
    cmp byte[C4Enable],0
    je .noc4init
    mov byte[osm2dis],1
    mov byte[bgfixer2],1
    call InitC4
.noc4init
    cmp byte[RTCEnable],0
    je .noRTCinit
    call RTCinit
.noRTCinit
    cmp byte[SPC7110Enable],0
    je .nospc7110init
    call SPC7110init
    mov dword[memtabler8+50h*4],memaccessspc7110r8
    mov dword[memtabler16+50h*4],memaccessspc7110r16
    mov dword[memtablew8+50h*4],memaccessspc7110w8
    mov dword[memtablew16+50h*4],memaccessspc7110w16
    mov eax,[romdata]
    add eax,510000h
    mov dword[snesmmap+50h*4],eax
    mov dword[snesmap2+50h*4],eax
    mov ecx,16384
.spc7110clear
    mov dword[eax],0
    add eax,4
    dec ecx
    jnz .spc7110clear
.nospc7110init
    mov byte[cycpb268],117
    mov byte[cycpb358],127
    mov byte[cycpbl2],117
    mov byte[cycpblt2],117
    mov byte[cycpbl],117
    mov byte[cycpblt],117

    mov byte[SPCSkipXtraROM],0
    cmp byte[ReturnFromSPCStall],1
    jne near .nostall
    mov byte[cycpb268],69
    mov byte[cycpb358],81
    mov byte[cycpbl2],69
    mov byte[cycpblt2],69
    mov byte[cycpbl],69
    mov byte[cycpblt],69
    mov byte[SPCSkipXtraROM],1
    cmp byte[SPCStallSetting],2
    jne .nostall2
    mov byte[cycpb268],240
    mov byte[cycpb358],240
    mov byte[cycpbl],240
    mov byte[cycpblt],240
    mov byte[cycpbl2],240
    mov byte[cycpblt2],240
    mov byte[SPCSkipXtraROM],0
.nostall2
    jmp .stalled
.nostall
    mov byte[SPCStallSetting],0
.stalled
    mov dword[numspcvblleft],60*8
    mov dword[SPC700write],0
    mov dword[SPC700read],0
    cmp dword[spc700read],0
    mov dword[spc700idle],0
    xor esi,esi
.loopa
    mov al,[SPCROM+esi]
    mov byte[spcextraram+esi],0FFh
    mov [spcRam+0FFC0h+esi],al
    inc esi
    cmp esi,040h
    jne .loopa

    ; Clear SPC Memory
    pushad
    call clearSPCRAM
    popad

    ; Clear Sound buffer
    mov edi,[spcBuffera]
    mov ecx,65536
    xor eax,eax
    rep stosd

    ; Clear Echo buffer
    mov edi,echobuf
    mov ecx,25000
    xor eax,eax
    rep stosd

    ; Clear DSPMem
    mov edi,DSPMem
    mov ecx,64
    xor eax,eax
    rep stosd

    mov byte[prevoamptr],0FFh
    mov byte[disablehdma],0
    mov byte[disableeffects],0
    mov byte[dracxhack],0
    mov al,[opexec268b]
    mov [opexec268],al
    mov al,[opexec358b]
    mov [opexec358],al
    mov al,[opexec268cphb]
    mov [opexec268cph],al
    mov al,[opexec358cphb]
    mov [opexec358cph],al

    mov dword[FIRTAPVal0],7Fh
    mov dword[FIRTAPVal1],0
    mov dword[FIRTAPVal2],0
    mov dword[FIRTAPVal3],0
    mov dword[FIRTAPVal4],0
    mov dword[FIRTAPVal5],0
    mov dword[FIRTAPVal6],0
    mov dword[FIRTAPVal7],0
    mov byte[disable65816sh],0

    ; Check Headers
    pushad
    call headerhack
    popad

    mov byte [spcRam+0F4h],0
    mov byte [spcRam+0F5h],0
    mov byte [spcRam+0F6h],0
    mov byte [spcRam+0F7h],0
    mov byte [reg1read],0
    mov byte [reg2read],0
    mov byte [reg3read],0
    mov byte [reg4read],0
    mov dword[cycpbl],0
    mov dword[spcnumread],0
 mov dword[spchalted],-1
    mov dword[coladdr],0
    mov byte[NMIEnab],1
    mov word[VIRQLoc],0
    mov byte[doirqnext],0
    mov dword[reg1read],0
    mov word[resolutn],224
    mov byte[vidbright],0
    mov byte[forceblnk],0
    mov byte [spcP],0
    mov byte[timeron],0
    mov byte[JoyAPos],0
    mov byte[JoyBPos],0
    mov byte[coladdr],0
    mov byte[coladdg],0
    mov byte[coladdb],0

    mov byte[INTEnab],0
    mov word[xa],0
    mov byte[xdb],0
    mov byte[xpb],0
    mov byte[xirqb],0
    mov word[xs],01FFh
    mov word[xd],0
    mov word[xx],0
    mov word[xy],0
    mov dword[SDD1BankA],03020100h
    mov byte[xp],00110100b  ; NVMXDIZC

    push ebx
    mov byte[xe],1          ; E
    xor eax,eax
    mov ax,[resetv]
    mov word[xpc],ax
    mov ebx,[romdata]
    add eax,ebx
    pop ebx
    mov byte[intrset],0
    cmp byte[romtype],1
    je .nohirom
    mov byte[xpb],00h
    mov byte[xirqb],00h
.nohirom
    cmp word[xpc],8000h
    jae .n
    add word[xpc],8000h
;    mov byte[xpb],40h
.n
    mov al,[opexec268]
    mov byte[cycpl],al      ; 2.68 Mhz  / 3.58 Mhz = 228
    mov byte[curcyc],al
    mov al,[opexec268cph]
    mov byte[cycphb],al     ; 2.68 Mhz  / 3.58 Mhz = 56
    mov byte[cycpbl],110        ; 3.58Mhz = 175
    mov byte[cycpblt],110
    mov word[curypos],0
    mov eax,tableD
    mov [Curtableaddr],eax
    mov byte[scrndis],00h
    mov word[stackand],01FFh
    mov word[stackor],0100h

    mov dword[nmiprevaddrl],0
    mov dword[nmiprevaddrh],0
    mov byte[nmirept],0
    mov byte[nmiprevline],224
    mov byte[nmistatus],0

    cmp byte[GUIReset],1
    jne .notreseting
    mov byte[GUIReset],0
    jmp .afterramclear
.notreseting
    mov eax,055555555h
    helpclearmem wramdataa, 65536
    helpclearmem ram7fa, 65536
.afterramclear
    cmp byte[BSEnable],1
    jne .notbsx2
    mov eax,0FFFFFFFFh
    helpclearmem wramdataa, 65536
    helpclearmem ram7fa, 65536    
    cmp byte[romtype],1 ;Hack for BS HiROMs
    jne .notbsx2
    mov dword[ram7fa+65528],01010101h
    mov dword[ram7fa+65532],01010101h
.notbsx2
    xor eax,eax
    helpclearmem [vram], 65536
    helpclearmem vidmemch2, 4096
    helpclearmem vidmemch4, 4096
    helpclearmem vidmemch8, 4096

    mov dword[wramreadptr],getwram1fff
    mov dword[wramwriteptr],setwram1fff
    ret

SECTION .data
.boffound db '.....',0
SECTION .text

getwram1fff:
    mov al,[wramdataa+1fffh]
    ret
setwram1fff:
    mov [wramdata+1fffh],al
    ret

;*******************************************************
; Init SNES                      Sets the pointers, etc.
;*******************************************************
; Set banks according to :
;   Banks 00-3F,80-BF : WRAM (0000h-7FFFh), ROM Data (8000h-FFFFh)
;   Banks 40-7F,C0-FF : ROM Data (0000h-FFFFh)
;   Bank  70-77       : SRAM (0000h-7FFFh)
;   Bank  7E          : WRAM (0000h-FFFFh)
;   Bank  7F          : ExtendRAM (0000h-FFFFh)

SECTION .bss
NEWSYM curromsize, resb 1
NEWSYM cromptradd, resd 1
NEWSYM lorommapmode2, resb 1
SECTION .text

NEWSYM initsnes
    mov byte[ForceNewGfxOff],0

    mov esi,[romdata]
    add esi,7FC0h
    cmp byte[BSEnable],0
    je .notbsx3
    cmp byte[romtype],1 ;Hack for BS HiROMs
    je near .bslorom
.notbsx3
    mov esi,[romdata]
    add esi,[infoloc]
    add esi,22
    mov byte[MultiTap],1
    cmp byte[pl12s34],1
    je .nomtap
    cmp byte[pl3contrl],0
    jne .mtap
    cmp byte[pl4contrl],0
    jne .mtap
    cmp byte[pl5contrl],0
    jne .mtap
.nomtap
    mov byte[MultiTap],0
.mtap

    cmp byte[romtype],1
    jne .nosfx
    cmp byte[SFXEnable],1
    je near .sfx
.nosfx
    cmp byte[SA1Enable],1
    je near SA1memmap
    cmp byte[SDD1Enable],1
    je near SDD1memmap

    cmp byte[SPC7110Enable],1
    je near .hirom
    ;Should catch DKJM2 here, but need to fix mem map as well
    cmp byte[curromsize],13
    je near .lorom48
    cmp byte[romtype],1
    jne near .hirom

    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopa
    stosd
    add eax,8000h
    dec ecx
    jnz .loopa
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov ecx,40h
.loopb
    stosd
    add eax,8000h
    dec ecx
    jnz .loopb
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
    cmp byte[lorommapmode2],0
    je .notlorommode2
    add eax,200000h
.notlorommode2
    sub eax,8000h
    mov cx,20h
.loopc
    stosd
    add eax,8000h
    dec ecx
    jnz .loopc
    cmp byte[lorommapmode2],0
    je .notlorommode2b
    sub eax,200000h
.notlorommode2b
    mov cx,20h
.loopclr
    stosd
    add eax,8000h
    dec ecx
    jnz .loopclr
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov ecx,40h
.loopd
    stosd
    add eax,8000h
    dec ecx
    jnz .loopd
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa2
    stosd
    dec ecx
    jnz .loopa2
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,200000h
    mov ecx,40h
.loopb2
    stosd
    add eax,8000h
    dec ecx
    jnz .loopb2
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc2
    stosd
    dec ecx
    jnz .loopc2
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,200000h
    mov ecx,40h
.loopd2
    stosd
    add eax,8000h
    dec ecx
    jnz .loopd2
    ; set bank 70
    mov eax,[sram]
    xor ebx,ebx
    mov bl,70h
.nextsram
    mov [snesmap2+ebx*4],eax
    inc bl
    cmp bl,77h
    jbe .nextsram
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    ret

.bslorom
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopas
    stosd
    add eax,8000h
    dec ecx
    jnz .loopas
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov ecx,40h
.loopbs
    stosd
    add eax,8000h
    dec ecx
    jnz .loopbs
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
    sub eax,8000h
    mov cx,40h
.loopcs
    stosd
    add eax,8000h
    dec ecx
    jnz .loopcs
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,8000h
    mov ecx,40h
.loopds
    stosd
    add eax,8000h
    dec ecx
    jnz .loopds
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa2s
    stosd
    dec ecx
    jnz .loopa2s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,200000h
    mov ecx,40h
.loopb2s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopb2s
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc2s
    stosd
    dec ecx
    jnz .loopc2s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,8000h
    mov ecx,40h
.loopd2s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopd2s
    ; set bank 70
    mov eax,[sram]
    xor ebx,ebx
    mov bl,70h
.nextsrams
    mov [snesmap2+ebx*4],eax
    inc bl
    cmp bl,77h
    jbe .nextsrams
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    ret

.lorom48
    mov byte[cycpb268],94
    mov byte[cycpb358],94
    mov byte[cycpbl2],94
    mov byte[cycpblt2],94
    mov byte[cycpbl],94
    mov byte[cycpblt],94
    mov byte[opexec268],183
    mov byte[opexec358],187
    mov byte[opexec268cph],30
    mov byte[opexec358cph],30

    mov edi,memtabler8+40h*4
    mov ecx,30h
    mov eax,memaccessbankr848mb
    rep stosd
    mov edi,memtabler16+40h*4
    mov ecx,30h
    mov eax,memaccessbankr1648mb
    rep stosd
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopa3
    stosd
    add eax,8000h
    dec ecx
    jnz .loopa3
    ; set banks 40-6F (30h x 64KB ROM banks @ 8000h)
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopb32
    stosd
    add eax,8000h
    dec ecx
    jnz .loopb32
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
    sub eax,8000h
    mov cx,40h
.loopc3
    stosd
    add eax,8000h
    dec ecx
    jnz .loopc3
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,200000h
    mov ecx,40h
.loopd3
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd3
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa23
    stosd
    dec ecx
    jnz .loopa23
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,100000h
    mov ecx,40h
.loopb3
    stosd
    add eax,8000h
    dec ecx
    jnz .loopb3
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc23
    stosd
    dec ecx
    jnz .loopc23
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,200000h
    mov ecx,40h
.loopd23
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd23
    ; set bank 70
    mov eax,[sram]
    xor ebx,ebx
    mov bl,70h
.nextsram3
    mov [snesmap2+ebx*4],eax
    inc bl
    cmp bl,77h
    jbe .nextsram3
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    pushad
    call IntlEHi ;Interleave 48Mb ROM, because the map is broken
    popad
    ret
.hirom
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    mov ecx,40h
.loopab
    stosd
    add eax,10000h
    dec ecx
    jnz .loopab
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    mov ecx,40h
.loopbb
    stosd
    add eax,10000h
    dec ecx
    jnz .loopbb 
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
    mov ecx,40h
.loopcb
    stosd
    add eax,10000h
    dec ecx
    jnz .loopcb
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    mov ecx,40h
.loopdb
    stosd
    add eax,10000h
    dec ecx
    jnz .loopdb
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa2b
    stosd
    dec ecx
    jnz .loopa2b
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    mov cx,40h
.loopb2b
    stosd
    add eax,10000h
    dec ecx
    jnz .loopb2b
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov cx,40h
.loopc2b
    stosd
    dec ecx
    jnz .loopc2b
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    mov cx,40h
.loopd2b
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd2b
    ; set bank 70
    mov eax,[sram]
    xor ebx,ebx
    mov bl,70h
.nextsramb
    mov [snesmap2+ebx*4],eax
    inc bl
    cmp bl,77h
    jbe .nextsramb
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    ret

.sfx
    mov byte[MultiTap],0
    ; Clear sfxregisters
    mov edi,SfxR0
    mov ecx,16
    xor eax,eax
    rep stosd
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
;    sub eax,8000h
    mov ecx,40h
.loopa3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopa3s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
;    add eax,200000h
    add eax,8000h
    mov ecx,40h
.loopb3s
    stosd
    add eax,20000h
    dec ecx
    jnz .loopb3s
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
;    sub eax,8000h
    mov cx,40h
.loopc3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopc3s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
;    add eax,200000h
    add eax,8000h
    mov ecx,40h
.loopd3s
    stosd
    add eax,20000h
    dec ecx
    jnz .loopd3s
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa23s
    stosd
    dec ecx
    jnz .loopa23s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,8000h
    mov ecx,40h
.loopb23s
    stosd
    add eax,20000h
    dec ecx
    jnz .loopb23s
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc23s
    stosd
    dec ecx
    jnz .loopc23s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,8000h
    mov ecx,40h
.loopd23s
    stosd
    add eax,20000h
    dec ecx
    jnz .loopd23s
    ; set bank 70
    mov eax,[sram]
    mov [snesmap2+78h*4],eax
    mov [snesmap2+79h*4],eax
    mov eax,[sfxramdata]
    mov [snesmap2+70h*4],eax
    add eax,65536
    mov [snesmap2+71h*4],eax
    add eax,65536
    mov [snesmap2+72h*4],eax
    add eax,65536
    mov [snesmap2+73h*4],eax
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    call preparesfx
    ret

SA1memmap:
    mov eax,[romdata]
    cmp dword[eax+0B95h],0ADCF10A9h
    jne .nosuccess
    mov byte[eax+0B96h],0
.nosuccess
    mov byte[MultiTap],0
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopa3s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopa3s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
;    add eax,400000h
    mov ecx,40h
.loopb3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopb3s
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
    add eax,200000h
    sub eax,8000h
    mov cx,40h
.loopc3s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopc3s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,00000h
    mov ecx,40h
.loopd3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd3s
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa23s
    stosd
    dec ecx
    jnz .loopa23s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,400000h
    mov ecx,40h
.loopb23s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopb23s
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc23s
    stosd
    dec ecx
    jnz .loopc23s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,00000h
    mov ecx,40h
.loopd23s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd23s
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    ret

SDD1memmap:
    mov eax,[romdata]
    cmp dword[eax+0B95h],0ADCF10A9h
    jne .nosuccess
    mov byte[eax+0B96h],0
.nosuccess
    mov byte[MultiTap],0
    ; set addresses 8000-FFFF
    ; set banks 00-3F (40h x 32KB ROM banks @ 8000h)
    mov edi,snesmmap
    mov eax,[romdata]
    sub eax,8000h
    mov ecx,40h
.loopa3s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopa3s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
;    add eax,400000h
    mov ecx,40h
.loopb3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopb3s
    ; set banks 80-BF (40h x 32KB ROM banks @ 8000h)
    mov eax,[romdata]
;    add eax,200000h
    sub eax,8000h
    mov cx,40h
.loopc3s
    stosd
    add eax,8000h
    dec ecx
    jnz .loopc3s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,00000h
    mov ecx,40h
.loopd3s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd3s
    ; set addresses 0000-7FFF (01h x 32KB WRAM @ 0000h)
    ; set banks 00-3F
    mov edi,snesmap2
    mov eax,[wramdata]
    mov ecx,40h
.loopa23s
    stosd
    dec ecx
    jnz .loopa23s
    ; set banks 40-6F (30h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,400000h
    mov ecx,40h
.loopb23s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopb23s
    ; set banks 80-BF (01h x 32KB WRAM @ 0000h)
    mov eax,[wramdata]
    mov ecx,40h
.loopc23s
    stosd
    dec ecx
    jnz .loopc23s
    ; set banks C0-FF (40h x 64KB ROM banks @ 0000h)
    mov eax,[romdata]
    add eax,00000h
    mov ecx,40h
.loopd23s
    stosd
    add eax,10000h
    dec ecx
    jnz .loopd23s
    ; set bank 7E
    mov eax,[wramdata]
    mov [snesmmap+7Eh*4],eax
    mov [snesmap2+7Eh*4],eax
    ; set bank 7F
    mov eax,[ram7f]
    mov [snesmmap+7Fh*4],eax
    mov [snesmap2+7Fh*4],eax
    ret

SECTION .data
NEWSYM SFXCounter, dd 0

SECTION .text

NEWSYM preparesfx
    mov byte[SFXCounter],0
    mov esi,[romdata]
    add esi,07FC0h
    cmp dword[esi],'FX S'
    je .yessfxcounter
    cmp dword[esi],'DIRT'
    je .yessfxcounter
    cmp dword[esi],'Stun'
    jne .nosfxcounter
    mov byte[ForceNewGfxOff],1
.yessfxcounter
    mov byte[SFXCounter],1
.nosfxcounter

    ; make table
    mov byte[SfxAC],0
    mov eax,[romdata]
    cmp dword[eax+02B80h],0AB6CAB6Ch
    jne .noac
    mov byte[SfxAC],1
.noac
    ; duplicate sfx data
    mov esi,[romdata]
    mov edi,[romdata]
    add esi,1F8000h
    add edi,3F0000h
    mov dl,40h
.swaploopb
    mov ecx,32768
.swaploop
    mov al,[esi]
    mov [edi],al
    mov [edi+32768],al
    inc esi
    inc edi
    dec ecx
    jnz .swaploop
    sub edi,65536+32768
    sub esi,65536
    dec dl
    jnz .swaploopb
    ret

    ; copy  address 0 to 200000h
    ; make table 1 (0 .. 127)
    mov esi,[romdata]
    mov edi,[romdata]
    add edi,200000h
    mov ecx,200000h
.n
    mov al,[esi]
    mov [edi],al
    inc esi
    inc edi
    dec ecx
    jnz .n
    ret

;*******************************************************
; Copy execloop
;*******************************************************

NEWSYM copyexecloop
    ret

;*******************************************************
; Process execloop
;*******************************************************
NEWSYM procexecloop
    cmp byte[spcon],0
    jne .noprocloop
    mov byte[curexecstate],1
    ret
.noprocloop
    mov byte[curexecstate],3
    ret

;*******************************************************
; Change execloop
;*******************************************************
NEWSYM changeexecloop
    ret

;*******************************************************
; Print Hexadecimal (16-bit/8-bit)
;*******************************************************
NEWSYM printhex
    mov ecx,4
    xor ebx,ebx
.loopa
    mov bx,ax
    and bx,0F000h
    shr bx,12
    mov dl,[.hexdat+ebx]
    push ax
    mov ah,02h
    call Output_Text
    pop ax
    shl ax,4
    dec ecx
    jnz .loopa
    ret

SECTION .data
.hexdat db '0123456789ABCDEF'
SECTION .text

NEWSYM printhex8
    mov ecx,2
    xor ebx,ebx
.loopb
    mov bx,ax
    and bx,0F0h
    shr bx,4
    mov dl,[printhex.hexdat+ebx]
    push ax
    mov ah,02h
    call Output_Text
    pop ax
    shl ax,4
    dec ecx
    jnz .loopb
    ret

;*******************************************************
; Load File
;*******************************************************
; Search for header size first which is filesize MOD 32768

NEWSYM PatchIPS
%ifdef __LINUX__    
    pushad
    call pushdir
    popad
%endif
    mov eax,fname+1
    ; search for . or 0
.next
    cmp byte[eax],0
    je .foundend
    inc eax
    jmp .next
.foundend
    mov ebx,eax
.findnext2
    dec eax
    cmp eax,fname
    je .failfound
%ifdef __LINUX__
    cmp byte[eax],'/'
%else
    cmp byte[eax],'\'
%endif
    je .failfound
    cmp byte[eax],'.'
    je .foundokay
    jmp .findnext2
.failfound
    mov eax,ebx
.foundokay
    mov ebx,[eax]
    mov [Prevextn],ebx
    mov dword[eax],'.ips'
    mov byte[eax+4],0
    push eax
%ifdef __LINUX__
    cmp byte [ZipSupport], 1
    je .nochangedir
    mov ebx,LoadDir
    call Change_Dir
.nochangedir:
%endif
    mov edx,fname+1
    mov [patchfile],edx
    pushad
    call PatchUsingIPS
    popad
    pop eax
    mov ebx,[Prevextn]
    mov [eax],ebx
%ifdef __LINUX__
    pushad
    call popdir
    popad
%endif
    ret

SECTION .bss
NEWSYM Prevextn,  resd 1
NEWSYM IPSPatched, resb 1
SECTION .text

OpenCombFile:
    mov edx,fnames+1
.next
    cmp byte[edx],0
    je .found
    inc edx
    jmp .next
.found
    dec edx
    cmp byte[edx],'.'
    je .found2
    jmp .found
.found2
    mov dword[edx],'.cmb'
    push edx
    mov dword[NumComboLocl],0
    mov edx,fnames+1
    call Open_File
    jc .failb
    mov bx,ax
    mov edx,ComboBlHeader
    mov ecx,23
    call Read_File
    mov al,byte[ComboBlHeader+22]
    or al,al
    jz .done
    mov [NumComboLocl],al
    mov ecx,[NumComboLocl]
    mov edx,ecx
    shl ecx,6
    add ecx,edx
    add ecx,edx
    mov edx,CombinDataLocl
    call Read_File
.done
    call Close_File
.failb
    pop edx
    mov dword[edx],'.srm'
    ret

NEWSYM SaveCombFile
    cmp byte[romloadskip],0
    jne near .notfound
    mov edx,fnames+1
.next
    cmp byte[edx],0
    je .found
    inc edx
    jmp .next
.found
    dec edx
    cmp byte[edx],'.'
    je .found2
    jmp .found
.found2
    mov dword[edx],'.cmb'
    push edx
    mov al,[NumComboLocl]
    or al,al
    jz .failb
    mov [ComboHeader+22],al
    mov edx,fnames+1
    call Create_File
    jc .failb
    mov bx,ax
    mov edx,ComboHeader
    mov ecx,23
    call Write_File
    mov ecx,[NumComboLocl]
    mov edx,ecx
    shl ecx,6
    add ecx,edx
    add ecx,edx
    mov edx,CombinDataLocl
    call Write_File
    call Close_File
.failb
    pop edx
    mov dword[edx],'.srm'
.notfound
    ret

NEWSYM loadfile
    mov byte[TextFile], 0
    call GetCurDir
    mov byte[InGUI],0
%ifdef __LINUX__
    mov dl,[InitDrive]
    mov ebx,InitDir
    call Change_Dir
%endif

    jmp loadfileGUI.nogui

SECTION .data
.failop   db 'Error opening file!',13,10,0
.opened db 'File opened successfully!',13,10,0
.mult   db 'Multiple file format detected.',13,10,13,10,0
SECTION .bss
.cchar resb 1
.dotpos resd 1
.curfileofs resd 1
.filehand resw 1
.temp   resb 1
.fail   resb 1


NEWSYM Checksumvalue, resw 1
NEWSYM Checksumvalue2, resw 1 ;This is outdated, but needed for the command line loader
NEWSYM CRC32, resd 1
NEWSYM SramExists,    resb 1
NEWSYM NumofBanks,    resd 1
NEWSYM NumofBytes,    resd 1
NEWSYM ZipSupport, resb 1
InGUI resb 1

SECTION .data

PrevDir db '..',0
GUIfindBlank db '*.',0

SECTION .bss
ZipError resb 1

SECTION .data

SPC7110DirEntry db '*.bin',0
spc7110notfound db 'DECOMPRESSED PACK NOT FOUND',0

SECTION .bss

SPC7110Allocated resb 1
SPC7110CPtr resd 1
SPC7110CPtr2 resd 1
NEWSYM SPC7110Entries, resd 1

SECTION .text

NEWSYM SPC7110Load
    mov dword[SPC7110Entries],0
    mov esi,[romdata]
    add esi,32704+22
    add esi,8000h
    mov al,[esi]
    cmp byte[romtype],2
    jne .nothirom
    cmp al,0F9h
    je .spc7110
    cmp al,0F5h
    je .spc7110
.nothirom
    ret
.spc7110
    pushad
    call SPC7PackIndexLoad
    popad
    cmp dword[SPC7110IndexSize],0
    je .nodir
    ret
.nodir
    mov dword[Msgptr],spc7110notfound
    mov dword[MessageOn],60*6
    ret

NEWSYM loadfileGUI
    mov byte[InGUI],1
.nogui
    mov byte[spcon],0
    cmp byte[SPCDisable],1
    je .nosound
    mov byte[spcon],1
.nosound

    mov byte[TextFile], 0
    mov dword[MessageOn],0
    mov byte[loadedfromgui],1
    mov byte[yesoutofmemory],0
    mov byte[.fail],0
    mov byte[IPSPatched],0
    mov byte[GUIloadfailed],0

    mov edx,fname+1
    mov dword[ZOpenFileName],edx

    pushad
    call loadROM
    popad

    cmp dword[curromspace],0
    je near .failed

    call convertsram
    mov byte[SramExists],0

    ; change to sram dir
    pushad
    call SRAMChdir
    popad

    ; open .srm file
    mov edx,fnames+1
    call Open_File
    jc .notexist
    mov byte[SramExists],1
    mov bx,ax
    mov ecx,65536
    mov edx,[sram]
    call Read_File
    call Close_File
    jc near .failed2
.notexist
    call OpenCombFile
    cmp byte[InGUI],1
    je .inguib
    mov edx,.opened
    mov ah,9
    call Output_Text
.inguib

    mov eax,dword[curromspace]
    mov dword[.curfileofs],eax
    mov [NumofBytes],eax
    shr eax,15
    mov [NumofBanks],eax

    cmp byte[.fail],0
    je .notfailed
    mov byte[yesoutofmemory],1
.notfailed

    ; copy fnames to fname
    cmp byte[InGUI],1
    je .nosramtof
    mov eax,fname+1
    mov ebx,fnames+1
.loopsc
    mov dl,[ebx]
    mov [eax],dl
    inc ebx
    inc eax
    or dl,dl
    jnz .loopsc
.nosramtof
    mov byte[TextFile], 1
    cmp byte[IPSPatched],0
    jne .patched
    call PatchIPS
.patched
    ret

.failed
.failed2
    mov byte[TextFile], 1
    cmp byte[InGUI],1
    je .noguic
    mov edx,.failop
    mov ah,9
    call Output_Text
    jmp DosExit
.noguic
    mov byte[GUIloadfailed],1
    ret

SECTION .data
.failop   db 'Error opening file!',13,10,0
.opened db 'File opened successfully!',13,10,0
.mult   db 'Multiple file format detected.',13,10,13,10,0

SECTION .bss

.cchar resb 1
.dotpos resd 1
.curfileofs resd 1
.filehand resw 1
.temp resb 1
.fail resb 1
NEWSYM GUIloadfailed, resb 1

SECTION .text


NEWSYM convertsram
    cmp byte[cfgloadsdir],1
    je .sdrivechange
    ret
.sdrivechange
    ; copy fnames/fnamest to not have any '\' in them
    mov esi,fnames+1
    mov ebx,0
.next
    mov al,[esi]
    cmp al,0
    je .fincutoff
    cmp al,'\'
    je .cutoff
    cmp al,'/'
    je .cutoff
    cmp al,':'
    je .cutoff
    inc esi
    jmp .next
.cutoff
    inc esi
    mov ebx,esi
    jmp .next
.fincutoff
    cmp ebx,0
    je .nocutoff
    mov esi,ebx
    mov edi,fnames+1
.next2
    mov al,[esi]
    mov [edi],al
    inc esi
    inc edi
    cmp al,0
    jne .next2
.nocutoff
    mov esi,fnamest+1
    mov ebx,0
.nextb
    mov al,[esi]
    cmp al,0
    je .fincutoffb
    cmp al,'\'
    je .cutoffb
    cmp al,'/'
    je .cutoffb
    cmp al,':'
    je .cutoffb
    inc esi
    jmp .nextb
.cutoffb
    inc esi
    mov ebx,esi
    jmp .nextb
.fincutoffb
    cmp ebx,0
    je .nocutoffb
    mov esi,ebx
    sub esi,fnamest+1
    sub [statefileloc],esi
    mov esi,ebx
    mov edi,fnamest+1
.next2b
    mov al,[esi]
    mov [edi],al
    inc esi
    inc edi
    cmp al,0
    jne .next2b
.nocutoffb
    ; change to sram directory
    pushad
    call SRAMChdir
    popad
    ret

SECTION .data
NEWSYM CSStatus, db '                        TYPE:           ',0
NEWSYM CSStatus2, db 'INTERLEAVED:No    BANK:Lo    CHKSUM:OK  ',0
NEWSYM CSStatus3, db 'VIDEO:                    CRC32:        ',0

crc32_table:
dd 000000000h, 077073096h, 0ee0e612ch, 0990951bah, 0076dc419h, 0706af48fh
dd 0e963a535h, 09e6495a3h, 00edb8832h, 079dcb8a4h, 0e0d5e91eh, 097d2d988h
dd 009b64c2bh, 07eb17cbdh, 0e7b82d07h, 090bf1d91h, 01db71064h, 06ab020f2h
dd 0f3b97148h, 084be41deh, 01adad47dh, 06ddde4ebh, 0f4d4b551h, 083d385c7h
dd 0136c9856h, 0646ba8c0h, 0fd62f97ah, 08a65c9ech, 014015c4fh, 063066cd9h
dd 0fa0f3d63h, 08d080df5h, 03b6e20c8h, 04c69105eh, 0d56041e4h, 0a2677172h
dd 03c03e4d1h, 04b04d447h, 0d20d85fdh, 0a50ab56bh, 035b5a8fah, 042b2986ch
dd 0dbbbc9d6h, 0acbcf940h, 032d86ce3h, 045df5c75h, 0dcd60dcfh, 0abd13d59h
dd 026d930ach, 051de003ah, 0c8d75180h, 0bfd06116h, 021b4f4b5h, 056b3c423h
dd 0cfba9599h, 0b8bda50fh, 02802b89eh, 05f058808h, 0c60cd9b2h, 0b10be924h
dd 02f6f7c87h, 058684c11h, 0c1611dabh, 0b6662d3dh, 076dc4190h, 001db7106h
dd 098d220bch, 0efd5102ah, 071b18589h, 006b6b51fh, 09fbfe4a5h, 0e8b8d433h
dd 07807c9a2h, 00f00f934h, 09609a88eh, 0e10e9818h, 07f6a0dbbh, 0086d3d2dh
dd 091646c97h, 0e6635c01h, 06b6b51f4h, 01c6c6162h, 0856530d8h, 0f262004eh
dd 06c0695edh, 01b01a57bh, 08208f4c1h, 0f50fc457h, 065b0d9c6h, 012b7e950h
dd 08bbeb8eah, 0fcb9887ch, 062dd1ddfh, 015da2d49h, 08cd37cf3h, 0fbd44c65h
dd 04db26158h, 03ab551ceh, 0a3bc0074h, 0d4bb30e2h, 04adfa541h, 03dd895d7h
dd 0a4d1c46dh, 0d3d6f4fbh, 04369e96ah, 0346ed9fch, 0ad678846h, 0da60b8d0h
dd 044042d73h, 033031de5h, 0aa0a4c5fh, 0dd0d7cc9h, 05005713ch, 0270241aah
dd 0be0b1010h, 0c90c2086h, 05768b525h, 0206f85b3h, 0b966d409h, 0ce61e49fh
dd 05edef90eh, 029d9c998h, 0b0d09822h, 0c7d7a8b4h, 059b33d17h, 02eb40d81h
dd 0b7bd5c3bh, 0c0ba6cadh, 0edb88320h, 09abfb3b6h, 003b6e20ch, 074b1d29ah
dd 0ead54739h, 09dd277afh, 004db2615h, 073dc1683h, 0e3630b12h, 094643b84h
dd 00d6d6a3eh, 07a6a5aa8h, 0e40ecf0bh, 09309ff9dh, 00a00ae27h, 07d079eb1h
dd 0f00f9344h, 08708a3d2h, 01e01f268h, 06906c2feh, 0f762575dh, 0806567cbh
dd 0196c3671h, 06e6b06e7h, 0fed41b76h, 089d32be0h, 010da7a5ah, 067dd4acch
dd 0f9b9df6fh, 08ebeeff9h, 017b7be43h, 060b08ed5h, 0d6d6a3e8h, 0a1d1937eh
dd 038d8c2c4h, 04fdff252h, 0d1bb67f1h, 0a6bc5767h, 03fb506ddh, 048b2364bh
dd 0d80d2bdah, 0af0a1b4ch, 036034af6h, 041047a60h, 0df60efc3h, 0a867df55h
dd 0316e8eefh, 04669be79h, 0cb61b38ch, 0bc66831ah, 0256fd2a0h, 05268e236h
dd 0cc0c7795h, 0bb0b4703h, 0220216b9h, 05505262fh, 0c5ba3bbeh, 0b2bd0b28h
dd 02bb45a92h, 05cb36a04h, 0c2d7ffa7h, 0b5d0cf31h, 02cd99e8bh, 05bdeae1dh
dd 09b64c2b0h, 0ec63f226h, 0756aa39ch, 0026d930ah, 09c0906a9h, 0eb0e363fh
dd 072076785h, 005005713h, 095bf4a82h, 0e2b87a14h, 07bb12baeh, 00cb61b38h
dd 092d28e9bh, 0e5d5be0dh, 07cdcefb7h, 00bdbdf21h, 086d3d2d4h, 0f1d4e242h
dd 068ddb3f8h, 01fda836eh, 081be16cdh, 0f6b9265bh, 06fb077e1h, 018b74777h
dd 088085ae6h, 0ff0f6a70h, 066063bcah, 011010b5ch, 08f659effh, 0f862ae69h
dd 0616bffd3h, 0166ccf45h, 0a00ae278h, 0d70dd2eeh, 04e048354h, 03903b3c2h
dd 0a7672661h, 0d06016f7h, 04969474dh, 03e6e77dbh, 0aed16a4ah, 0d9d65adch
dd 040df0b66h, 037d83bf0h, 0a9bcae53h, 0debb9ec5h, 047b2cf7fh, 030b5ffe9h
dd 0bdbdf21ch, 0cabac28ah, 053b39330h, 024b4a3a6h, 0bad03605h, 0cdd70693h
dd 054de5729h, 023d967bfh, 0b3667a2eh, 0c4614ab8h, 05d681b02h, 02a6f2b94h
dd 0b40bbe37h, 0c30c8ea1h, 05a05df1bh, 02d02ef8dh

SECTION .text

NEWSYM showinfogui
    mov esi,[romdata]
    add esi,[infoloc]

    cmp dword[infoloc],40FFC0h
    jne .notEHi1
    mov dword[CSStatus2+23], 'EHi '
    jmp .nohiromrn
.notEHi1
    mov dword[CSStatus2+23], 'Lo  '
    cmp byte[romtype],2
    jne .nohiromrn
    mov dword[CSStatus2+23], 'Hi  '
.nohiromrn

    mov edi,CSStatus
    mov ecx,20
.looprn
    mov al,[esi]
    or al,al
    jnz .okaysp
    mov al,32
.okaysp
    mov [edi],al
    inc esi
    inc edi
    dec ecx
    jnz .looprn

    mov dword[CSStatus3+6], 'PAL '
    add esi,5
    cmp byte[esi],2    
    jae .notntsc1
    mov dword[CSStatus3+6], 'NTSC'
.notntsc1
    cmp byte[esi],13
    jb .notntsc2
    mov dword[CSStatus3+6], 'NTSC'
.notntsc2
    mov dword[CSStatus+29],'NORM'
    mov dword[CSStatus+33],'AL  '
    cmp byte[SA1Enable],0
    je .nosa1
    mov dword[CSStatus+29],'SA-1'
    mov dword[CSStatus+33],'    '
.nosa1
    cmp byte[RTCEnable],0
    je .nortc
    mov dword[CSStatus+29],'RTC '
    mov dword[CSStatus+33],'    '

.nortc
    cmp byte[SPC7110Enable],0
    je .nospc7110
    mov dword[CSStatus+29],'SPC7'
    mov dword[CSStatus+33],'110 '
.nospc7110
    cmp byte[SFXEnable],0
    je .nosfx
    mov dword[CSStatus+29],'SUPE'
    mov dword[CSStatus+33],'R FX'
.nosfx
    cmp byte[C4Enable],0
    je .noc4
    mov dword[CSStatus+29],'C4  '
    mov dword[CSStatus+33],'    '
.noc4
    cmp byte[DSP1Enable],0
    je .nodsp1
    mov dword[CSStatus+29],'DSP-'
    mov dword[CSStatus+33],'1   '
.nodsp1
    cmp byte[DSP2Enable],0
    je .nodsp2
    mov dword[CSStatus+29],'DSP-'
    mov dword[CSStatus+33],'2   '
.nodsp2
    cmp byte[DSP3Enable],0
    je .nodsp3
    mov dword[CSStatus+29],'DSP-'
    mov dword[CSStatus+33],'3   '
.nodsp3
    cmp byte[DSP4Enable],0
    je .nodsp4
    mov dword[CSStatus+29],'DSP-'
    mov dword[CSStatus+33],'4   '
.nodsp4
    cmp byte[SDD1Enable],0
    je .nosdd1
    mov dword[CSStatus+29],'S-DD'
    mov dword[CSStatus+33],'1   '
.nosdd1
    cmp byte[OBCEnable],0
    je .noobc
    mov dword[CSStatus+29],'OBC1'
    mov dword[CSStatus+33],'    '
.noobc
    cmp byte[SETAEnable],0
    je .noseta
    mov dword[CSStatus+29],'SETA'
    mov dword[CSStatus+33],' DSP'
.noseta
    cmp byte[ST18Enable],0
    je .nost18
    mov dword[CSStatus+29],'ST01'
    mov dword[CSStatus+33],'8   '
.nost18
    cmp byte[SGBEnable],0
    je .nosgb
    mov dword[CSStatus+29],'SGB '
    mov dword[CSStatus+33],'    '
.nosgb
    cmp byte[BSEnable],0
    je .nobs
    mov dword[CSStatus+29],'BROA'
    mov dword[CSStatus+33],'DCST'
    ;dummy out date so CRC32 matches
    sub esi,3
    mov word[esi],042h ;42 is the answer, and the uCONSRT standard
.nobs

    mov dword[CSStatus2+12],'No  '
    cmp byte[Interleaved],0
    je .nointlv
    mov dword[CSStatus2+12],'Yes '
.nointlv
 
    ; calculate CRC32
    xor edx,edx         
    mov eax,0FFFFFFFFh
    mov ecx,dword[NumofBytes]
    mov esi,[romdata]   

    ;Only calculate Add on ROM?
    cmp byte[SplittedROM],1
    jne .calcloop
    mov ecx,dword[addOnSize]
    add esi,dword[addOnStart]

 .calcloop
    mov dl,byte[esi] 
    mov ebx,eax                     ;ebx = CRC32
    xor ebx,edx                     ;ebx ^= edx
    movzx ebx,bl                    ;ebx &= 0xFF
    mov ebx,[ebx*4 + crc32_table]   ;ebx = crc32_table[bl]
    shr eax,8                       ;CRC32 >>= 8
    xor eax,ebx                     ;CRC32 ^= ebx
    inc esi                      
    dec ecx                      
    jnz .calcloop                 
    xor eax,0FFFFFFFFh
    mov [CRC32],eax          

    ;Place CRC32 on line
    mov ecx,8
    mov esi,CSStatus3
    add esi,32
    mov ebx,0F0000000h
.crcprintloop
    mov eax,[CRC32]
    and eax,ebx
    dec ecx
    shl ecx,2
    shr eax,cl
    add eax,48
    cmp eax,58
    jb .noadd
    add eax,7  
.noadd
    mov [esi],al
    inc esi    
    shr ebx,4
    shr ecx,2
    jnz .crcprintloop

    pushad
    call CalcChecksum
    popad

    mov esi,[romdata]
    add esi,[infoloc]
    add esi,1Eh
    mov ax,[Checksumvalue]
    ;On add on ROMs we check the add on
    cmp byte[SplittedROM],1
    jne .check
    add esi,dword[addOnStart]
.check
    cmp ax,[esi]
    jne .failed
.passed2
    mov dword[CSStatus2+36],'OK  '
    jmp .passed
.failed
    mov dword[CSStatus2+36],'FAIL'
.passed
    pushad
    call DumpROMLoadInfo
    popad
    mov dword[MessageOn],300
    mov dword[Msgptr],CSStatus
    mov eax,[MsgCount]
    ret

;*******************************************************
; Show Information
;*******************************************************
; 
; Maker Code = FFB0-FFB1
; Game Code = FFB2-FFB5
; Expansion RAM Size = FFBD (0=none, 1=16kbit, 3=64kbit, 5=256kbit,etc.
; Map Mode = FFD5 2.68-20h=map20h,21h=map21h,22h=reserved,23h=SA-1,25h=map25h
;                 3.58-30h=map20h,31h=map21h,35h=map25h,highspeed
; Rom Mask Version = FFDB
; FFD6 (ROM Type) : 0*=DSP,1*=SFX,2*=OBC1,3*=SA-1,E*-F*=other
;                   *3=ROM,*4=ROM+RAM,*5=ROM+RAM+BATTERY,*6=ROM+BATTERY
;                   F3=C4


SECTION .bss
NEWSYM DSP1Type, resb 1
NEWSYM intldone, resb 1
SECTION .text

EXTSYM ClearScreen, cbitmode, makepal

NEWSYM SetupROM
    call CheckROMType
    call SetIRQVectors
    call ClearScreen
    cmp byte[cbitmode],0
    jne .nomakepal
    call makepal
.nomakepal
    ; get ROM and SRAM size
    mov esi,[romdata]
    add esi,[infoloc]
    add esi,18h
    mov cl,[esi-1]
    mov [curromsize],cl
    pushad
    call SetupSramSize
    popad

    ; get pal/ntsc
    inc esi
    mov al,[ForceROMTiming]
    mov byte[ForcePal],al
    xor al,al
    mov al,[esi]
    cmp byte[ForcePal],1
    jne .nontsc
    mov al,0
.nontsc
    cmp byte[ForcePal],2
    jne .nopal2
    mov al,2
.nopal2
    mov byte[romispal],0
    mov word[totlines],263
    mov dword[MsgCount],120
    cmp byte[BSEnable],1
    je .nopal
    cmp al,1
    jbe .nopal
    cmp al,0Dh
    jae .nopal
    mov byte[romispal],1
    mov word[totlines],314
    mov dword[MsgCount],100
.nopal
    ret

NEWSYM CheckROMType
    pushad
    call BankCheck
    popad    

    pushad
    call MirrorROM
    popad    


    mov byte[lorommapmode2],0
    mov esi,[romdata]
    cmp dword[esi+207FC0h],'DERB'
    jne .noderby96
    cmp dword[esi+207FC4h],'Y ST'
    jne .noderby96
    cmp dword[esi+207FC8h],'ALLI'
    jne .noderby96
    cmp dword[esi+207FCDh],'N 96'
    jne .noderby96
    mov byte[lorommapmode2],1
.noderby96
    cmp dword[esi+7FC0h],'SOUN'
    jne .nosoundnovel
    cmp dword[esi+7FC4h],'D NO'
    jne .nosoundnovel
    cmp dword[esi+7FC8h],'VEL-'
    jne .nosoundnovel
    cmp dword[esi+7FCDh],'COOL'
    jne .nosoundnovel
    mov byte[lorommapmode2],1
.nosoundnovel

    jmp .skipall
    ; scan for branches
    mov esi,06A5h
    add esi,[romdata]
    mov ecx,80h
.loopcheck
    cmp byte[esi],48h
    je .yes
    cmp byte[esi],8Bh
    je .yes
    cmp byte[esi],0Bh
    je .yes
    cmp byte[esi],4Bh
    je .yes
    cmp byte[esi],08h
    je .yes
    cmp byte[esi],0DAh
    je .yes
    cmp byte[esi],5Ah
    je .yes
    jmp .no
.yes
    pushad
    mov al,byte[esi]
    mov al,80h
    sub al,cl
    call printhex8
    popad
.no
    add esi,8000h
    dec ecx
    jnz .loopcheck
.skipall

    call SetAddressingModes
    call GenerateBank0Table

    pushad
    call chip_detect
    popad
    
    ;Setup some Memmapping
    mov byte[DSP1Type],0
    mov esi,[romdata]
    add esi,0FFC0h
    mov byte[disablespcclr],0
    mov eax,50205040h
    or eax,0A000302h
    cmp dword[esi],eax
    jne .nospcdis
    mov byte[disablespcclr],1
.nospcdis
    ; banks 0-3Fh
    mov dword[memtabler8+3Fh*4],regaccessbankr8
    mov dword[memtablew8+3Fh*4],regaccessbankw8
    mov dword[memtabler16+3Fh*4],regaccessbankr16
    mov dword[memtablew16+3Fh*4],regaccessbankw16
    mov dword[memtabler8+0BFh*4],regaccessbankr8
    mov dword[memtablew8+0BFh*4],regaccessbankw8
    mov dword[memtabler16+0BFh*4],regaccessbankr16
    mov dword[memtablew16+0BFh*4],regaccessbankw16
    mov dword[memtabler8+70h*4],sramaccessbankr8
    mov dword[memtablew8+70h*4],sramaccessbankw8
    mov dword[memtabler16+70h*4],sramaccessbankr16
    mov dword[memtablew16+70h*4],sramaccessbankw16
    mov dword[memtabler8+71h*4],sramaccessbankr8
    mov dword[memtablew8+71h*4],sramaccessbankw8
    mov dword[memtabler16+71h*4],sramaccessbankr16
    mov dword[memtablew16+71h*4],sramaccessbankw16
    mov dword[memtabler8+72h*4],sramaccessbankr8
    mov dword[memtablew8+72h*4],sramaccessbankw8
    mov dword[memtabler16+72h*4],sramaccessbankr16
    mov dword[memtablew16+72h*4],sramaccessbankw16
    mov dword[memtabler8+73h*4],sramaccessbankr8
    mov dword[memtablew8+73h*4],sramaccessbankw8
    mov dword[memtabler16+73h*4],sramaccessbankr16
    mov dword[memtablew16+73h*4],sramaccessbankw16
    mov dword[memtabler8+78h*4],memaccessbankr8
    mov dword[memtablew8+78h*4],memaccessbankw8
    mov dword[memtabler16+78h*4],memaccessbankr16
    mov dword[memtablew16+78h*4],memaccessbankw16
    mov dword[memtabler8+79h*4],memaccessbankr8
    mov dword[memtablew8+79h*4],memaccessbankw8
    mov dword[memtabler16+79h*4],memaccessbankr16
    mov dword[memtablew16+79h*4],memaccessbankw16

    ;LoROM SRAM mapping, but not on the S-DD1
    cmp byte[romtype],1
    jne near .notlorom
    cmp byte[SDD1Enable],1
    je near .notlorom
    mov dword[memtabler8+0F0h*4],sramaccessbankr8
    mov dword[memtablew8+0F0h*4],sramaccessbankw8
    mov dword[memtabler16+0F0h*4],sramaccessbankr16
    mov dword[memtablew16+0F0h*4],sramaccessbankw16
    mov dword[memtabler8+0F1h*4],sramaccessbankr8
    mov dword[memtablew8+0F1h*4],sramaccessbankw8
    mov dword[memtabler16+0F1h*4],sramaccessbankr16
    mov dword[memtablew16+0F1h*4],sramaccessbankw16
    mov dword[memtabler8+0F2h*4],sramaccessbankr8
    mov dword[memtablew8+0F2h*4],sramaccessbankw8
    mov dword[memtabler16+0F2h*4],sramaccessbankr16
    mov dword[memtablew16+0F2h*4],sramaccessbankw16
    mov dword[memtabler8+0F3h*4],sramaccessbankr8
    mov dword[memtablew8+0F3h*4],sramaccessbankw8
    mov dword[memtabler16+0F3h*4],sramaccessbankr16
    mov dword[memtablew16+0F3h*4],sramaccessbankw16
.notlorom

    cmp byte[DSP1Enable],1
    je .initdsp
    cmp byte[DSP2Enable],1
    je .initdsp2
    cmp byte[DSP3Enable],1
    je .initdsp
    cmp byte[DSP4Enable],1
    je .initdsp
;   call InitDSP4
    jmp .notDSP1Hi
.initdsp2
    call InitDSP2
.initdsp
    call InitDSP
    mov byte[DSP1Type],1
    cmp byte[romtype],2
    jne .notDSP1Hi
    mov byte[DSP1Type],2
.notDSP1Hi

  ;Setup Super FX related stuff
    cmp byte[SFXEnable],1
    jne near .nosfx
    cmp byte[Sup48mbit],1
    je .sfxokay
    mov byte[yesoutofmemory],1
    jmp .nosfx
.sfxokay
    mov dword[memtabler8+70h*4],sfxaccessbankr8
    mov dword[memtablew8+70h*4],sfxaccessbankw8
    mov dword[memtabler16+70h*4],sfxaccessbankr16
    mov dword[memtablew16+70h*4],sfxaccessbankw16
    mov dword[memtabler8+71h*4],sfxaccessbankr8b
    mov dword[memtablew8+71h*4],sfxaccessbankw8b
    mov dword[memtabler16+71h*4],sfxaccessbankr16b
    mov dword[memtablew16+71h*4],sfxaccessbankw16b
    mov dword[memtabler8+72h*4],sfxaccessbankr8c
    mov dword[memtablew8+72h*4],sfxaccessbankw8c
    mov dword[memtabler16+72h*4],sfxaccessbankr16c
    mov dword[memtablew16+72h*4],sfxaccessbankw16c
    mov dword[memtabler8+73h*4],sfxaccessbankr8d
    mov dword[memtablew8+73h*4],sfxaccessbankw8d
    mov dword[memtabler16+73h*4],sfxaccessbankr16d
    mov dword[memtablew16+73h*4],sfxaccessbankw16d
    mov dword[memtabler8+78h*4],sramaccessbankr8s
    mov dword[memtablew8+78h*4],sramaccessbankw8s
    mov dword[memtabler16+78h*4],sramaccessbankr16s
    mov dword[memtablew16+78h*4],sramaccessbankw16s
    mov dword[memtabler8+79h*4],sramaccessbankr8s
    mov dword[memtablew8+79h*4],sramaccessbankw8s
    mov dword[memtabler16+79h*4],sramaccessbankr16s
    mov dword[memtablew16+79h*4],sramaccessbankw16s
    mov dword[SfxR1],0
    mov dword[SfxR2],0
    mov esi,[sfxramdata]
    mov ecx,65536
.loopsfxclear
    mov dword[esi],0
    add esi,4
    dec ecx
    jnz .loopsfxclear
    cmp byte[SramExists],0
    je .nosramsfx
    mov esi,[sram]
    mov edi,[sfxramdata]
    mov ecx,16384
.sfxsramloop
    mov eax,[esi]
    mov [edi],eax
    add esi,4
    add edi,4
    dec ecx
    jnz .sfxsramloop
.nosramsfx
    call InitFxTables
.nosfx



  ;Setup Seta ST010 / ST011 stuff
    cmp byte[SETAEnable],1
    jne near .noseta
    ; Really banks 68h-6Fh:0000-7FFF are all mapped the same by the chip but F1ROCII only uses bank 68h
    mov dword[memtabler8+68h*4],setaaccessbankr8
    mov dword[memtablew8+68h*4],setaaccessbankw8
    mov dword[memtabler16+68h*4],setaaccessbankr16
    mov dword[memtablew16+68h*4],setaaccessbankw16

    ; Control register (and some status?) is in banks 60h-67h:0000-3FFF
    mov dword[memtabler8+60h*4],setaaccessbankr8a
    mov dword[memtablew8+60h*4],setaaccessbankw8a
    mov dword[memtabler16+60h*4],setaaccessbankr16a
    mov dword[memtablew16+60h*4],setaaccessbankw16a

    mov dword[SetaCmdEnable],00000080h ; 60:0000
    mov esi,[setaramdata]
    mov ecx,1024 ; 4096 bytes
.loopsetaclear
    mov dword[esi],0
    add esi,4
    dec ecx
    jnz .loopsetaclear
    cmp byte[SramExists],0
    je .nosramseta
    mov esi,[sram]
    mov edi,[setaramdata]
    mov ecx,1024
.setasramloop
    mov eax,[esi]
    mov [edi],eax
    add esi,4
    add edi,4
    dec ecx
    jnz .setasramloop
.nosramseta
.noseta


    
    ;General Stuff all mixed together
    mov dword[SfxSFR],0
    mov byte[SfxSCMR],0
    call initregr
    call initregw
    cmp byte[SA1Enable],0
    je .nosa1init
    call GenerateBank0TableSA1
    call SetAddressingModesSA1
    ; open .srm file
    cmp byte[CHIPBATT],1
    jne .nosa1init
    mov edx,fnames+1
    call Open_File
    jc .nosa1init
    mov byte[SramExists],1
    mov bx,ax
    mov ecx,65536*2
    mov edx,[romdata]
    add edx,1024*4096
    call Read_File
    jc .nosa1init
    call Close_File
.nosa1init
    cmp byte[DSP1Type],1
    jne near .nodsp1lorom
    xor ecx,ecx
.dsp1loop
    mov dword[memtabler8+30h*4+ecx],DSP1Read8b3F
    mov dword[memtablew8+30h*4+ecx],DSP1Write8b3F
    mov dword[memtabler16+30h*4+ecx],DSP1Read16b3F
    mov dword[memtablew16+30h*4+ecx],DSP1Write16b3F
    mov dword[memtabler8+0B0h*4+ecx],DSP1Read8b3F
    mov dword[memtablew8+0B0h*4+ecx],DSP1Write8b3F
    mov dword[memtabler16+0B0h*4+ecx],DSP1Read16b3F
    mov dword[memtablew16+0B0h*4+ecx],DSP1Write16b3F
    mov dword[memtabler8+0E0h*4+ecx],DSP1Read8b3F
    mov dword[memtablew8+0E0h*4+ecx],DSP1Write8b3F
    mov dword[memtabler16+0E0h*4+ecx],DSP1Read16b3F
    mov dword[memtablew16+0E0h*4+ecx],DSP1Write16b3F
    add ecx,4
    cmp ecx,16*4
    jne .dsp1loop
    cmp byte[DSP2Enable],1
    jne .nodsp1lorom
    mov dword[memtabler8+3Fh*4],DSP2Read8b
    mov dword[memtablew8+3Fh*4],DSP2Write8b
    mov dword[memtabler16+3Fh*4],DSP2Read16b
    mov dword[memtablew16+3Fh*4],DSP2Write16b
.nodsp1lorom
    mov dword[wramdata],wramdataa
    call SPC7110Load
    ret

SECTION .bss
NEWSYM C4RamR,   resd 1
NEWSYM C4RamW,   resd 1
NEWSYM C4Ram,   resd 1
NEWSYM ROMTypeNOTFound, resb 1
NEWSYM Interleaved, resb 1
SECTION .text

NEWSYM SetIRQVectors
    ; Get Vectors (NMI & Reset)
    mov esi,[romdata]
    add esi,[infoloc]
    add esi,21
    mov al,[esi]
    test al,0F0h
    jnz .yesfastrom
    mov al,[opexec268]
    mov [opexec358],al
    mov al,[opexec268cph]
    mov [opexec358cph],al
    mov al,[cycpb268]
    mov [cycpb358],al
.yesfastrom
    add esi,0Fh
    cmp word[esi+24],0FFFFh
    jne .notreseterror
    mov word[esi+6],0FF9Ch
    mov word[esi+24],0FF80h
.notreseterror
    lodsw
    mov [copv],ax
    lodsw
    mov [brkv],ax
    lodsw
    mov [abortv],ax
    lodsw
    mov [nmiv],ax
    mov [nmiv2],ax
    add esi,2
    lodsw
    mov [irqv],ax
    mov [irqv2],ax
    add esi,4
    ; 8-bit and reset
    lodsw
    mov [copv8],ax
    inc esi
    inc esi
    lodsw
    mov [abortv8],ax
    lodsw
    mov [nmiv8],ax
    lodsw
    mov [resetv],ax
    lodsw
    mov [brkv8],ax
    mov [irqv8],ax
    cmp byte[yesoutofmemory],0
    je .notfailed
    mov word[resetv],8000h
    mov esi,[romdata]
    mov word[esi],0FE80h
    mov word[esi+8000h],0FE80h
.notfailed
    ret

NEWSYM outofmemfix
    mov esi,[romdata]
    cmp byte[romtype],2
    jne .nhirom
    add esi,8000h
.nhirom
    mov word[resetv],8000h
    mov word[xpc],8000h
    mov byte[esi],58h
    mov byte[esi+1],80h
    mov byte[esi+2],0FEh
    mov dword[Msgptr],outofmemoryerror
    cmp byte[newgfx16b],1
    jne .notso
    mov dword[Msgptr],outofmemoryerror2
.notso
    mov dword[MessageOn],0FFFFFFFFh
    ret

SECTION .bss
NEWSYM yesoutofmemory, resb 1
SECTION .data
NEWSYM outofmemoryerror, db 'OUT OF MEMORY.',0
NEWSYM outofmemoryerror2, db 'ROM IS TOO BIG.',0






