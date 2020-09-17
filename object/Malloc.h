/********************************************************************
 * $Author: lindner $
 * $Revision: 3.9 $
 * $Date: 1996/01/04 18:25:38 $
 * $Source: /home/arcwelder/GopherSrc/CVS/gopher+/object/Malloc.h,v $
 * $Status: $
 *
 * Paul Lindner, University of Minnesota CIS.
 *
 * Copyright 1991, 1992 by the Regents of the University of Minnesota
 * see the file "Copyright" in the distribution for conditions of use.
 *********************************************************************
 * MODULE: Malloc.h
 * Portable method of getting malloc definitions
 *********************************************************************
 * Revision History:
 * $Log: Malloc.h,v $
 * Revision 3.9  1996/01/04  18:25:38  lindner
 * Updates for autoconf
 *
 * Revision 3.8  1995/06/30  20:30:01  lindner
 * NewMEM define
 *
 * Revision 3.7  1994/06/29  06:37:55  lindner
 * ...
 *
 * Revision 3.6  1994/06/29  05:44:17  lindner
 * Make sure to only include malloc.h once
 *
 * Revision 3.5  1994/05/24  05:42:17  lindner
 * Fix for old field version of DECC
 *
 * Revision 3.4  1994/05/19  14:25:24  lindner
 * faster VMS VAXC malloc
 *
 * Revision 3.3  1993/10/19  20:46:35  lindner
 * use stdio.h in Malloc.h to get NULL if necessary
 *
 * Revision 3.2  1993/10/11  17:23:32  lindner
 * Better malloc fix for systems without NULL
 *
 * Revision 3.1.1.1  1993/02/11  18:03:03  lindner
 * Gopher+1.2beta release
 *
 * Revision 1.1  1992/12/10  23:27:52  lindner
 * gopher 1.1 release
 *
 *
 *********************************************************************/

#ifndef G_MALLOC_H
#define G_MALLOC_H

/*
 * Just enough to get us memory allocation and NULL
 * 
 * Ick, portable code is ugly!
 */

#include "Stdlib.h"

/* Usually can get NULL from stdio.h */
#ifndef NULL
#include <stdio.h>
#endif

/* Punt! */
#ifndef NULL  
#define NULL ((void*) 0)
#endif


#ifdef HAVE_MALLOC_H
#  include <malloc.h>
#endif

/* memory management for VAXC */

#if defined(VMS) && defined(VAXC) && !defined(__DECC)
#  include <stdlib.h>
#  define malloc  VAXC$MALLOC_OPT
#  define calloc  VAXC$CALLOC_OPT
#  define free    VAXC$FREE_OPT
#  define cfree   VAXC$CFREE_OPT
#  define realloc VAXC$REALLOC_OPT
#endif /* VMS and VAXC */

#define NewMEM(a) ((a*)malloc(sizeof(a)))


#endif /* G_MALLOC_H */

