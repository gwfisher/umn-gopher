/********************************************************************
 * $Author: lindner $
 * $Revision: 3.1 $
 * $Date: 1994/06/29 05:46:45 $
 * $Source: /home/arcwelder/GopherSrc/CVS/gopher+/object/Stat.h,v $
 * $Status: $
 *
 * Paul Lindner, University of Minnesota CIS.
 *
 * Copyright 1991, 1992 by the Regents of the University of Minnesota
 * see the file "Copyright" in the distribution for conditions of use.
 *********************************************************************
 * MODULE: Stat.h
 * Portable method of getting struct stat and friends
 *********************************************************************
 * Revision History:
 * $Log: Stat.h,v $
 * Revision 3.1  1994/06/29  05:46:45  lindner
 * Portable stat.h file
 *
 *
 *********************************************************************/

#ifndef G_STAT_H
#define G_STAT_H

#  ifdef VMS
#    include <stat.h>
#  else
#    include <sys/stat.h>
#  endif

#endif
