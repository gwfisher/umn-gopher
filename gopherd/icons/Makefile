#######################################################################
# $Author: lindner $
# $Revision: 1.1 $
# $Date: 1995/06/14 18:44:06 $
# $Source: /home/arcwelder/GopherSrc/CVS/gopher+/gopherd/icons/Makefile,v $
# $State: Exp $
#
# Paul Lindner, University of Minnesota DCS.
#
# Copyright 1994 by the Regents of the University of Minnesota
# see the file "Copyright" in the distribution for conditions of use.
#######################################################################
# MODULE: Makefile for icons
#######################################################################
# Revision History:
# $Log: Makefile,v $
# Revision 1.1  1995/06/14  18:44:06  lindner
# Install icons
#
# Revision 1.3  1995/02/17  18:30:00  lindner
#
#######################################################################


include ../../Makefile.config

install:
	@-if [ ! -d $(SERVERDATA) ]; then \
		echo "No icons installed, no such directory $(SERVERDATA)";\
	else \
		mkdir $(SERVERDATA)/lib ;\
		cp htmlicon* $(SERVERDATA)/lib/ ;\
	fi

clean:
	-rm -f $(OBJS) *.out *~ core

