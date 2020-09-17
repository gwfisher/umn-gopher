/********************************************************************
 * $Author: lindner $
 * $Revision: 3.5 $
 * $Date: 1995/09/25 22:07:25 $
 * $Source: /home/arcwelder/GopherSrc/CVS/gopher+/object/url.h,v $
 * $State: Exp $
 *
 * Paul Lindner, University of Minnesota CIS.
 *
 * Copyright 1991, 1992 by the Regents of the University of Minnesota
 * see the file "Copyright" in the distribution for conditions of use.
 *********************************************************************
 * MODULE: url.h
 * Simplified method of getting urls..
 *********************************************************************
 * Revision History:
 * $Log: url.h,v $
 * Revision 3.5  1995/09/25  22:07:25  lindner
 * Ansification
 *
 * Revision 3.4  1995/08/29  07:13:07  lindner
 * Add tickets to urls
 *
 * Revision 3.3  1994/11/13  06:30:12  lindner
 * Expanded URL parsing routines
 *
 * Revision 3.2  1993/11/02  06:14:11  lindner
 * Add url html hack
 *
 *********************************************************************/

#ifndef URL_H
#define URL_H

#include "STRstring.h"

typedef enum {gopher, http, ftp, telnet, tn3270, news, unset,unknown}
  UrlServiceType;

struct url_struct {
     String*        url;
     UrlServiceType service;


     String*        Host;
     int            Port;
     String*        Path;

     String*        User;
     String*        Pass;

     /** Gopher specific information **/
     char           Gtype;
     
};

typedef struct url_struct Url;

#define URLget(a)     (STRget((a)->url))
#define URLset(a,b)   (STRset((a)->url,(b)))

#define URLsetGophType(a,b) ((a)->Gtype=(b))
#define URLsetPort(a,b)     ((a)->Port=(b))
#define URLsetPath(a,b)     (STRset((a)->Path, (b)))
#define URLsetHost(a,b)     (STRset((a)->Host, (b)))
#define URLsetUser(a,b)     (STRset((a)->User, (b)))
#define URLsetPass(a,b)     (STRset((a)->Pass, (b)))
#define URLsetService(a,b)  ((a)->service=(b))

#include "GSgopherobj.h"
UrlServiceType URLgetService();

Url  *URLnew();
void  URLdestroy();
void  URLfromGS(Url *url, GopherObj *gs, char *ticket);
void  URLmakeHTML(Url *url);
char *URLgetTransport(Url *url);
char *URLgetHost(Url *url);
int   URLgetPort(Url *url);

char  URLgetGophType(Url *url);
char *URLgetPath(Url *url);
char *URLgetHost(Url *url);
int   URLgetPort(Url *url);
char *URLgetUser(Url *url);
char *URLgetPass(Url *url);

#endif /* URL_H */
