#Copyright (C) 1997-2005 ZSNES Team ( zsKnight, _Demo_, pagefault, Nach )
#
#http://www.zsnes.com
#http://sourceforge.net/projects/zsnes
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either
#version 2 of the License, or (at your option) any later
#version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

CHIPDIR=chips
CPUDIR=cpu
DOSDIR=dos
GUIDIR=gui
VIDEODIR=video
WINDIR=win
OBJDIR=obj
ZIPDIR=zip
EFFECTSDIR=effects
JMADIR=jma

DELETECOMMAND=rm
TRUTH=;true
SLASH=/
ASM=nasm
ASMOPT=-O1
ASMFLAGSORIG=
COPT=-O3
CFLAGSORIG=-march=i586 -ffast-math -fomit-frame-pointer -fno-unroll-loops -Wall -Wno-unused
LIBSORIG=-lz -lpng
DRESOBJ=${WINDIR}/zsnes.obj
CROSS=no

ifeq ($(PLATFORM),)
_foo: help
endif


ifeq ($(PLATFORM),dos)
  CC = gcc
  CPPC = gpp
  OS=__MSDOS__
endif

ifeq ($(PLATFORM),win32)
  CC = gcc
  CPPC = g++
  WINDRES = windres
  OS=__WIN32__
endif

ifeq ($(PLATFORM),msvc)
  MSVCLIBS=zlib.lib libpng.lib wsock32.lib user32.lib gdi32.lib shell32.lib winmm.lib dinput8.lib dxguid.lib
  DRESOBJ=${WINDIR}/zsnes.res
  OS=__WIN32__
endif

ifeq ($(PLATFORM),dos-cross)
  CC = i386-pc-msdosdjgpp-gcc
  CPPC = i386-pc-msdosdjgpp-g++
  OS=__MSDOS__
  CROSS=yes
endif

ifeq ($(PLATFORM),win32-cross)
  CC = i586-mingw32msvc-gcc
  CPPC = i586-mingw32msvc-g++
  WINDRES = i586-mingw32msvc-windres
  OS=__WIN32__
  CROSS=yes
endif

ifeq (${CROSS},no)
  TRUTH=
  DELETECOMMAND=del
  SLASH=\${BLAHBLAHBLAH}
endif

ifeq (${OS},__MSDOS__)
  EXE=zsnes.exe
  FILEFORMAT=coff
  LIBS=${LIBSORIG} -lm
  OE=.do
endif

ifeq (${OS},__WIN32__)
  EXE=zsnesw.exe
  FILEFORMAT=win32
  LIBS=${LIBSORIG} -ldxguid -ldinput8 -lwsock32 -luser32 -lgdi32 -lshell32 -lwinmm -mwindows
  OE=.obj
endif

CFLAGS=${CFLAGSORIG} -D${OS}
ASMFLAGS=${ASMFLAGSORIG} -f ${FILEFORMAT} -D${OS}


CHIPSOBJ=${CHIPDIR}/dsp1emu${OE} ${CHIPDIR}/fxemu2${OE} ${CHIPDIR}/sfxproc${OE}\
	${CHIPDIR}/fxemu2b${OE} ${CHIPDIR}/fxemu2c${OE} ${CHIPDIR}/fxtable${OE}\
        ${CHIPDIR}/sa1proc${OE} ${CHIPDIR}/sa1regs${OE} ${CHIPDIR}/dsp1proc${OE}\
        ${CHIPDIR}/st10proc${OE} ${CHIPDIR}/seta10${OE} ${CHIPDIR}/dsp2proc${OE}\
	${CHIPDIR}/sdd1emu${OE}

CPUOBJ=${CPUDIR}/dma${OE} ${CPUDIR}/dsp${OE} ${CPUDIR}/dspproc${OE}\
	${CPUDIR}/execute${OE} ${CPUDIR}/executec${OE} ${CPUDIR}/irq${OE}\
	${CPUDIR}/memory${OE} ${CPUDIR}/spc700${OE} ${CPUDIR}/stable${OE}\
	${CPUDIR}/table${OE} ${CPUDIR}/tableb${OE} ${CPUDIR}/tablec${OE}

GUIOBJ=${GUIDIR}/gui${OE} ${GUIDIR}/menu${OE}

VIDEOBJ=${VIDEODIR}/makev16b${OE} ${VIDEODIR}/makev16t${OE} ${VIDEODIR}/makevid${OE}\
	${VIDEODIR}/mode716${OE} ${VIDEODIR}/mode716b${OE} ${VIDEODIR}/mode716d${OE}\
	${VIDEODIR}/mode716e${OE} ${VIDEODIR}/mode716t${OE} ${VIDEODIR}/mode7${OE}\
	${VIDEODIR}/mode7ext${OE} ${VIDEODIR}/mv16tms${OE} ${VIDEODIR}/newg162${OE}\
	${VIDEODIR}/newgfx16${OE} ${VIDEODIR}/newgfx2${OE} ${VIDEODIR}/newgfx${OE}\
	${VIDEODIR}/m716text${OE} ${VIDEODIR}/procvid${OE}

#only used on Win32
WINVIDOBJ=${VIDEODIR}/sw_draw${OE} ${VIDEODIR}/hq2x16${OE} ${VIDEODIR}/hq2x32${OE}\
	${VIDEODIR}/2xsaiw${OE} ${VIDEODIR}/hq3x16${OE} ${VIDEODIR}/hq3x32${OE}\
	${VIDEODIR}/hq4x16${OE} ${VIDEODIR}/hq4x32${OE}

WINOBJ=${WINDIR}/copyvwin${OE} ${DRESOBJ}\
	${WINDIR}/winintrf${OE} ${WINDIR}/winlink${OE} ${WINDIR}/zloaderw${OE}\
	${WINDIR}/ztcp${OE} ${WINDIR}/zipxw${OE} ${WINDIR}/zfilew${OE}

#only used on DOS
PREOBJ=${OBJDIR}/dosbuff.o ${OBJDIR}/ipx.o ${OBJDIR}/zipx.o

ZIPOBJ=${ZIPDIR}/unzip${OE} ${ZIPDIR}/zpng${OE}

EFFECTSOBJ=${EFFECTSDIR}/burn${OE} ${EFFECTSDIR}/water${OE} ${EFFECTSDIR}/smoke${OE}

JMAOBJ=${JMADIR}/7zlzma${OE} ${JMADIR}/crc32${OE} ${JMADIR}/iiostrm${OE}\
       ${JMADIR}/inbyte${OE} ${JMADIR}/jma${OE} ${JMADIR}/lzma${OE} ${JMADIR}/lzmadec${OE}\
       ${JMADIR}/winout${OE} ${JMADIR}/zsnesjma${OE}
       
MAINOBJ=cfgload${OE} endmem${OE} init${OE} initc${OE} uic${OE} patch${OE} ui${OE} vcache${OE} version${OE}

DOSOBJORIG=${DOSDIR}/debug${OE} ${DOSDIR}/joy${OE} ${DOSDIR}/modemrtn${OE} ${DOSDIR}/vesa2${OE}\
       ${DOSDIR}/initvid${OE} ${DOSDIR}/sw${OE} ${DOSDIR}/gppro${OE} ${DOSDIR}/vesa12${OE}\
       ${DOSDIR}/zsipx${OE}


OBJSORIG=${CHIPSOBJ} ${CPUOBJ} ${GUIOBJ} ${VIDEOBJ} ${MAINOBJ} ${ZIPOBJ} ${EFFECTSOBJ} ${JMAOBJ}

ifeq (${OS},__MSDOS__)
DOSOBJ=${DOSOBJORIG} ${DOSDIR}/dosintrf${OE} ${DOSDIR}/sound${OE} ${DOSDIR}/zloader${OE} ${DOSDIR}/zfile${OE}
OBJS=${OBJSORIG} ${DOSOBJ} ${PREOBJ}
DELETEOBJS=${OBJSORIG} ${DOSOBJ}
endif

ifeq (${OS},__WIN32__)
OBJS=${OBJSORIG} ${WINOBJ} ${DOSOBJORIG} ${WINVIDOBJ}
DELETEOBJS=${OBJS}
endif


.SUFFIXES: .c .cpp .asm

ifneq ($(PLATFORM),msvc)
%${OE}: %.c
	${CC} ${COPT} ${CFLAGS} -o $@ -c $<

%${OE}: %.cpp
	${CPPC} ${COPT} ${CFLAGS} -o $@ -c $<

%${OE}: %.asm
	${ASM} ${ASMOPT} ${ASMFLAGS} -o $@ $<
else
%.obj : %.c
	cl /Ox /G6 /c /EHsc /D__WIN32__ /Fo$@ $<

%.obj: %.cpp
	cl /Ox /G6 /c /EHsc /D__WIN32__ /Fo$@ $<

%.obj: %.asm
	${ASM} ${ASMOPT} -f win32 -D__WIN32__ -o $@ $<
endif

ALL: zsnes
	${DELETECOMMAND} version${OE}

zsnes: ${OBJS}
ifneq ($(PLATFORM),msvc)
	${CPPC} -Ws -s -o ${EXE} ${OBJS} ${LIBS}
else
	 @echo /Fezsnesw.exe *.obj ${CPUDIR}\*.obj ${VIDEODIR}\*.obj ${CHIPDIR}\*.obj ${EFFECTSDIR}\*.obj ${ZIPDIR}\*.obj ${JMADIR}\*.obj ${DOSDIR}\*.obj ${WINDIR}\*.obj ${GUIDIR}\*.obj > link.vc
	 @echo ${MSVCLIBS} >> link.vc
	 cl @link.vc ${WINDIR}/zsnes.res /link
endif

debug: zsnesd

zsnesd: ${OBJS}
	${CPPC} -Ws -o zsnesd.exe ${OBJS} ${LIBS}


vcache${OE}: $< macros.mac
ui${OE}: $< macros.mac
cfgload${OE}: $< macros.mac
init${OE}: $< macros.mac
initc${OE}: $< ${JMADIR}/zsnesjma.h
uic${OE}: $<
patch${OE}: $<
endmem${OE}: $< macros.mac

${CPUDIR}/execute${OE}: $< macros.mac
${CPUDIR}/executec${OE}: $<
${CPUDIR}/table${OE}: $< ${CPUDIR}/65816d.inc ${CPUDIR}/address.inc ${CPUDIR}/addrni.inc ${CPUDIR}/e65816.inc\
	           ${CPUDIR}/regs.mac ${CPUDIR}/regs.inc ${CPUDIR}/regsw.mac ${CPUDIR}/regsw.inc macros.mac
${CPUDIR}/tableb${OE}: $< ${CPUDIR}/65816db.inc ${CPUDIR}/address.inc ${CPUDIR}/addrni.inc ${CPUDIR}/e65816b.inc\
	${CPUDIR}/regs.mac macros.mac
${CPUDIR}/tablec${OE}: $< ${CPUDIR}/65816dc.inc ${CPUDIR}/address.inc ${CPUDIR}/addrni.inc ${CPUDIR}/e65816c.inc\
	${CPUDIR}/regs.mac macros.mac
${CPUDIR}/stable${OE}: $< ${CPUDIR}/s65816d.inc ${CPUDIR}/saddress.inc ${CPUDIR}/saddrni.inc\
	            ${CPUDIR}/se65816.inc macros.mac
${CPUDIR}/memory${OE}: $< macros.mac
${CPUDIR}/dma${OE}: $< macros.mac
${CPUDIR}/irq${OE}: $< macros.mac
${CPUDIR}/dspproc${OE}: $< macros.mac
${CPUDIR}/spc700${OE}: $< macros.mac ${CPUDIR}/regsw.mac ${CPUDIR}/spcdef.inc ${CPUDIR}/spcaddr.inc
${CPUDIR}/dsp${OE}: $< macros.mac

${VIDEODIR}/makevid${OE}: $< ${VIDEODIR}/vidmacro.mac macros.mac
${VIDEODIR}/makev16b${OE}: $< ${VIDEODIR}/vidmacro.mac macros.mac
${VIDEODIR}/makev16t${OE}: $< ${VIDEODIR}/vidmacro.mac macros.mac
${VIDEODIR}/mv16tms${OE}: $< ${VIDEODIR}/vidmacro.mac macros.mac
${VIDEODIR}/mode7${OE}: $< ${VIDEODIR}/mode7.mac macros.mac
${VIDEODIR}/mode716${OE}: $< ${VIDEODIR}/mode716.mac macros.mac
${VIDEODIR}/mode716b${OE}: $< ${VIDEODIR}/mode7.mac macros.mac
${VIDEODIR}/mode716t${OE}: $< ${VIDEODIR}/mode7.mac macros.mac
${VIDEODIR}/mode716d${OE}: $< ${VIDEODIR}/mode7.mac macros.mac
${VIDEODIR}/mode7ext${OE}: $< macros.mac
${VIDEODIR}/mode716e${OE}: $< macros.mac
${VIDEODIR}/m716text${OE}: $< ${VIDEODIR}/mode7.mac macros.mac
${VIDEODIR}/procvid${OE}: $< macros.mac ${VIDEODIR}/copyvid.inc ${VIDEODIR}/2xsaimmx.inc

${VIDEODIR}/2xsaiw${OE}: $< macros.mac
${VIDEODIR}/sw_draw${OE}: $< macros.mac
${VIDEODIR}/hq2x16${OE}: $< macros.mac
${VIDEODIR}/hq2x32${OE}: $< macros.mac
${VIDEODIR}/hq3x16${OE}: $< macros.mac
${VIDEODIR}/hq3x32${OE}: $< macros.mac
${VIDEODIR}/hq4x16${OE}: $< macros.mac
${VIDEODIR}/hq4x32${OE}: $< macros.mac

${CHIPDIR}/dsp1proc${OE}: $< macros.mac
${CHIPDIR}/sa1regs${OE}: $< macros.mac ${CPUDIR}/regs.mac ${CPUDIR}/regsw.mac
${CHIPDIR}/sfxproc${OE}: $< macros.mac ${CPUDIR}/regs.mac ${CPUDIR}/regsw.mac
${CHIPDIR}/dsp1emu${OE}: $<
${CHIPDIR}/st10proc${OE}: $<
${CHIPDIR}/seta10${OE}: $<
${CHIPDIR}/sdd1emu${OE}: $<
${CHIPDIR}/fxemu2${OE}: $< ${CHIPDIR}/fxemu2.mac macros.mac
${CHIPSDIR}/fxemu2b${OE}: $< ${CHIPDIR}/fxemu2.mac ${CHIPDIR}/fxemu2b.mac
${CHIPSDIR}/fxemu2c${OE}: $< macros.mac ${CHIPDIR}/fxemu2.mac ${CHIPDIR}/fxemu2b.mac ${CHIPDIR}/fxemu2c.mac
${CHIPDIR}/fxtable${OE}: $< macros.mac
${CHIPDIR}/sa1proc${OE}: $< macros.mac

${GUIDIR}/gui${OE}: $< ${GUIDIR}/guitools.inc\
	${GUIDIR}/guimisc.inc ${GUIDIR}/guimouse.inc ${GUIDIR}/guiwindp.inc\
	${GUIDIR}/guinetpl.inc ${GUIDIR}/guikeys.inc ${GUIDIR}/guicheat.inc\
	${GUIDIR}/guicombo.inc ${GUIDIR}/guiload.inc macros.mac
${GUIDIR}/menu${OE}bj: ${GUIDIR}/menu.asm macros.mac

${EFFECTSDIR}/water${OE}: $< ${EFFECTSDIR}/fixsin.h
${EFFECTSDIR}/smoke${OE}: $<
${EFFECTSDIR}/burn${OE}: $<

${ZIPDIR}/unzip${OE}: $< ${ZIPDIR}/zunzip.h
${ZIPDIR}/zpng${OE}: $<  ${ZIPDIR}/zpng.h

${JMADIR}/7zlzma${OE}: $<
${JMADIR}/crc32${OE}: $< ${JMADIR}/crc32.h
${JMADIR}/iiostrm${OE}: $<
${JMADIR}/inbyte${OE}: $<
${JMADIR}/jma${OE}: $< ${JMADIR}/jma.h ${JMADIR}/crc32.h ${JMADIR}/portable.h
${JMADIR}/lzma${OE}: $<
${JMADIR}/lzmadec${OE}: $<
${JMADIR}/winout${OE}: $<
${JMADIR}/zsnesjma${OE}: $< ${JMADIR}/zsnesjma.h ${JMADIR}/jma.h

${DOSDIR}/debug${OE}: $< macros.mac
${DOSDIR}/dosintrf${OE}: $< macros.mac
${DOSDIR}/initvid${OE}: $< macros.mac ${DOSDIR}/vga.inc
${DOSDIR}/vesa2${OE}: $< macros.mac
${DOSDIR}/vesa12${OE}: $< macros.mac
${DOSDIR}/joy${OE}: $< macros.mac
${DOSDIR}/sw${OE}: $< macros.mac
${DOSDIR}/gppro${OE}: $< macros.mac
${DOSDIR}/zsipx${OE}: $<
${DOSDIR}/modemrtn${OE}: $< macros.mac

${WINDIR}/copyvwin${OE}: $< macros.mac
${WINDIR}/winintrf${OE}: $< macros.mac
${WINDIR}/zfilew${OE}: $<
${WINDIR}/zipxw${OE}: $<
${WINDIR}/zloaderw${OE}: $<
${WINDIR}/ztcp${OE}: $<
ifeq ($(PLATFORM),msvc)
${WINDIR}/zsnes.res: ${WINDIR}/zsnes.rc
	rc ${WINDIR}/zsnes.rc
${WINDIR}/winlink.obj: ${WINDIR}/winlink.cpp ${WINDIR}/resource.h
else
${WINDIR}/zsnes${OE}: ${WINDIR}/zsnes.rc
	${WINDRES} --include-dir ${WINDIR} ${WINDIR}/zsnes.rc -o${WINDIR}/zsnes${OE}
${WINDIR}/winlink${OE}: ${WINDIR}/winlink.cpp ${WINDIR}/resource.h
	${CPPC} -O0 ${CFLAGS} -masm=intel -o $@ -c ${WINDIR}/winlink.cpp
endif

clean: 
	${DELETECOMMAND} ${EXE} ${TRUTH}
	${DELETECOMMAND} *${OE} ${TRUTH}
	${DELETECOMMAND} ${CPUDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${VIDEODIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${CHIPDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${EFFECTSDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${ZIPDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${JMADIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${DOSDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${WINDIR}${SLASH}*${OE} ${TRUTH}
	${DELETECOMMAND} ${GUIDIR}${SLASH}*${OE} ${TRUTH}

help:
	@echo Please specify which platform to compile for with PLATFORM=platform_name
