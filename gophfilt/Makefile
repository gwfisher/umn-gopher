# Generated automatically from Makefile.in by configure.
#********************************************************************
# $Author: lindner $
# $Revision: 1.1 $
# $Date: 1996/01/06 00:33:31 $
# $Source: /home/arcwelder/GopherSrc/CVS/gopher+/gophfilt/Makefile.in,v $
# $State: Exp $
#
# Paul Lindner, University of Minnesota CIS.
#
# Copyright 1991, 1992 by the Regents of the University of Minnesota
# see the file "Copyright" in the distribution for conditions of use.
#********************************************************************
# MODULE: Makefile
# Makefile for gopher filter client
#*********************************************************************
# Revision History:
# $Log: Makefile.in,v $
# Revision 1.1  1996/01/06  00:33:31  lindner
# rel 2.3
#
#********************************************************************/

srcdir = .
top_srcdir = ..

include ../Makefile.config

OBJS	= gophfilt.o

CCFLAGS	= $(OPT) $(INTLOPTS) -I.. -I$(top_srcdir) -I$(top_srcdir)/object

TARGET	= gophfilt

all:	$(TARGET)

.c.o:
	$(CC) $(CCFLAGS) -c $<

../object/libgopher.a:
	(cd ..; $(MAKE) $(MFLAGS) objects)

$(TARGET) : $(OBJS) ../object/libgopher.a
	$(CC) $(LDFLAGS) -o $@ $(OBJS) ../object/libgopher.a -lutil -lm  

install : all
	-mv $(CLIENTDIR)/$(TARGET) $(CLIENTDIR)/$(TARGET).old
	$(INSTALL) $(TARGET) $(CLIENTDIR)

clean:
	-rm -f $(TARGET) $(OBJS) *.out *~ core

$(OBJS): $(srcdir)/../object/GSgopherobj.h $(srcdir)/../conf.h
