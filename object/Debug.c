/********************************************************************
 * $Author: lindner $
 * $Revision: 3.3 $
 * $Date: 1994/01/21 04:07:21 $
 * $Source: /home/arcwelder/GopherSrc/CVS/gopher+/object/Debug.c,v $
 * $State: Exp $
 *
 * Paul Lindner, University of Minnesota CIS.
 *
 * Copyright 1991, 92, 93 by the Regents of the University of Minnesota
 * see the file "Copyright" in the distribution for conditions of use.
 *********************************************************************
 * MODULE: Debug.c
 * Debugging utilities..
 *********************************************************************
 * Revision History:
 * $Log: Debug.c,v $
 * Revision 3.3  1994/01/21  04:07:21  lindner
 * Update function declaration (alanc)
 *
 * Revision 3.2  1993/07/29  20:00:22  lindner
 * Added Debugf
 *
 *
 *********************************************************************/

#include <stdio.h>

int DEBUG = 0;

#ifdef __STDC__
#include <stdarg.h>
#else
#include <varargs.h>
#endif


#ifdef __STDC__
void Debugf(const char *fmt, ...)
#else /* !__STDC__ */
void
Debugf(fmt, va_alist)
  char *fmt;
va_dcl
#endif /* __STDC__ */

{
     va_list args;

#ifdef __STDC__
     va_start(args, fmt);
#else
     va_start(args);
#endif

     (void) vfprintf(stderr, fmt, args);
}

