# Generated automatically from Makefile.in by configure.
#********************************************************************
# $Author: lindner $
# $Revision: 3.1 $
# $Date: 1996/01/04 18:30:50 $
# $Source: /home/arcwelder/GopherSrc/CVS/gopher+/gopherd/Makefile.in,v $
# $State: Exp $
#
# Paul Lindner, University of Minnesota CIS.
#
# Copyright 1991, 1992 by the Regents of the University of Minnesota
# see the file "Copyright" in the distribution for conditions of use.
#********************************************************************
# MODULE: Makefile
# Makefile for gopher server
#*********************************************************************
# Revision History:
# $Log: Makefile.in,v $
# Revision 3.1  1996/01/04  18:30:50  lindner
# Updates for autoconf
#
# Revision 3.28  1995/11/06  20:53:59  lindner
# Fixed install prob
#
# Revision 3.27  1995/09/28  21:11:27  lindner
# More fixes...
#
# Revision 3.26  1995/09/25  22:14:43  lindner
# Blobbo
#
# Revision 3.25  1995/09/25  05:02:29  lindner
# Convert to ANSI C
#
# Revision 3.24  1995/06/30  20:50:29  lindner
# Add group support
#
# Revision 3.23  1995/06/14  18:43:53  lindner
# Add install for icons
#
# Revision 3.22  1994/12/11  18:44:30  lindner
# Add installation of gopherd scripts
#
# Revision 3.21  1994/12/10  06:11:18  lindner
# Remove the regexp.a library..
#
# Revision 3.20  1994/12/09  18:46:34  lindner
# re-add libftw.a
#
# Revision 3.19  1994/11/29  05:08:41  lindner
# Use make macros so gmake works
#
# Revision 3.18  1994/11/24  08:08:58  lindner
# Install gopherdlocal.conf file the first time only...
#
# Revision 3.17  1994/11/18  22:26:01  lindner
# Fix for sf on NeXT machines
#
# Revision 3.16  1994/11/18  22:06:57  lindner
# Better sf wais stuff
#
# Revision 3.15  1994/11/18  21:40:49  lindner
# Simplification for FreeWAIS-sf
#
# Revision 3.14  1994/11/07  19:55:48  lindner
# Modifications to use FreeWAIS-sf package (see Makefile.config)
#
# Revision 3.13  1994/08/03  03:35:20  lindner
# One bug
#
# Revision 3.12  1994/08/03  03:33:24  lindner
# Include files in SERVERDIR
#
# Revision 3.11  1994/07/19  20:28:45  lindner
# Add INTLOPTS
#
# Revision 3.10  1994/06/29  05:43:37  lindner
# Remove tix.o, add AUTH.o
#
# Revision 3.9  1994/03/17  04:29:13  lindner
# Add pid.o
#
# Revision 3.8  1993/08/10  20:26:21  lindner
# Added fi for gopherindex install
#
# Revision 3.7  1993/08/05  22:20:19  lindner
# Only install gopherindex if built
#
# Revision 3.6  1993/08/04  22:12:01  lindner
# Rebuild server if patchlevel.h changes
#
# Revision 3.5  1993/07/27  05:27:34  lindner
# Mondo Debug overhaul from Mitra
#
# Revision 3.4  1993/07/07  19:41:00  lindner
# removed popen stuff
#
# Revision 3.3  1993/03/26  19:45:38  lindner
# Fix for parameters to makegopherindex script
#
# Revision 3.2  1993/03/24  20:17:00  lindner
# Additions for gopherindex
#
# Revision 3.1.1.1  1993/02/11  18:02:50  lindner
# Gopher+1.2beta release
#
# Revision 1.5  1993/02/09  21:35:55  lindner
# Fixed install target, save old gopherd.conf file
#
# Revision 1.4  1992/12/29  23:28:31  lindner
# Added mindexd.o to OBJS for fan-out integration.
#
# Revision 1.3  1992/12/21  20:44:37  lindner
# Added kernutils.o to OBJS (from mtm)
#
# Revision 1.2  1992/12/21  20:21:49  lindner
# Added ../bin/libftw.a to WAISGATEOBJS..
#
# Revision 1.1  1992/12/10  23:15:15  lindner
# gopher 1.1 release
#
#
#********************************************************************/
include ../Makefile.config

srcdir = .
top_srcdir = ..

#
# Type of full-text searching to use....  WAIS
# requires that you have a built wais distribution.
#
# Next requires that you have the NeXTtext.tar.Z libraries.
#

LIBS	= $(SERVERLIBS)

#############################################################################

WAISOBJ         = ../bin/inv.a ../bin/client.a ../bin/wais.a \
                  ../ui/source.o ../bin/libftw.a
SF1WAISOBJ       = ../ir/libinv.a ../ir/libwais.a ../ir/liblocal.a\
		  ../ui/source.o ../ir/libinv.a ../regexp/libregexp.a
SFWAISOBJ      = ../ir/libwais.a ../ui/source.o ../regexp/libregexp.a 


CCFLAGS	= $(OPT) -DDATA_DIRECTORY=\"$(SERVERDATA)\" $(DEBUGGING) \
	-DDOMAIN_NAME=\"$(DOMAIN)\" -DGOPHER_PORT=$(SERVERPORT) \
	-DGDCDIR=\"$(SERVERDIR)\"  \
	$(SEARCH) $(WAISTYPE) $(SERVEROPTS) $(INTLOPTS) -I..\
	-I.. -I../object

OBJS	= error.o globals.o gopherd.o daemon.o special.o \
	dedot.o openers.o index.o Waisindex.o serverutil.o ftp.o \
	waisgopher.o ext.o site.o gopherdconf.o kernutils.o mindexd.o \
	authenticate.o command.o pid.o AUTH.o GGroup.o

TARGET	= gopherd


all: $(OBJS) 
	$(CC)  -o $(TARGET) $(OBJS) $(DLOBJS) ../object/libgopher.a    -lutil -lm -lcrypt

#
# Special rule for NeXT text indexing, can't use gcc (yet...)
#
NeXTindex.o : NeXTindex.c
	cc $(CCFLAGS) -ObjC -I. -c $(srcdir)/NeXTindex.c

#
# Special rule for wais gateway
#
waisgopher.o: waisgopher.c
	$(CC) $(CCFLAGS) -I../wais/ir -I../wais/ui -c $(srcdir)/waisgopher.c

Waisindex.o: Waisindex.c
	$(CC) $(CCFLAGS) -I../wais/ir -c $(srcdir)/Waisindex.c

gopherd.o: gopherd.c $(top_srcdir)/patchlevel.h
	$(CC) $(CCFLAGS) -DCONF_FILE=\"$(SERVERDIR)/gopherd.conf\" -c \
		$(srcdir)/gopherd.c

.c.o:
	$(CC) $(CCFLAGS) -c $<

globals.o : $(srcdir)/globals.h

$(OBJS) : $(top_srcdir)/conf.h 


install : all
	-mv $(SERVERDIR)/$(TARGET) $(SERVERDIR)/$(TARGET).old
	-mv $(SERVERDIR)/gopherd.conf $(SERVERDIR)/gopherd.conf.old

	@if [ ! -d $(SERVERDIR) ]; then \
		echo "Creating $(SERVERDIR)" ;\
		mkdir $(SERVERDIR) ;\
	fi

	/usr/bin/install -c  $(TARGET) $(SERVERDIR)
	/usr/bin/install -c  gopherd.conf $(SERVERDIR)
	if [ ! -f $(SERVERDIR)/gopherdlocal.conf ]; then \
		/usr/bin/install -c gopherdlocal.conf $(SERVERDIR)/gopherdlocal.conf; \
	fi

	if [ -f gopherindex ]; then \
		$(INSTALL)  gopherindex $(SERVERDIR); \
	fi
	-rm	$(SERVERDIR)/gopherls $(SERVERDIR)/gindexd
	-ln -s $(SERVERDIR)/$(TARGET) $(SERVERDIR)/gopherls
	-ln -s $(SERVERDIR)/$(TARGET) $(SERVERDIR)/gindexd
	(cd scripts; $(MAKE) $(MFLAGS) install)
	(cd icons; $(MAKE) $(MFLAGS) install)

clean:
	-rm -f $(TARGET) $(OBJS) $(NEXTOBJ) *.out *~ core gopherindex


