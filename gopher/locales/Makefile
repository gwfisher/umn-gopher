# Generated automatically from Makefile.in by configure.
# Swedish support added by Johan Svensson <Johan@ecsdg.lu.se>,
# EkonomiCentrum Software Development Group, Lund University, Sweden.
# 1994-06-08
# 


.SUFFIXES:
.SUFFIXES: .cat .msg $(SUFFIXES)

include ../../Makefile.config

LOCALES = De_DE.cat Es_ES.cat Es_MX.cat En_US.cat Fr.cat Sv.cat It.cat piglatin.cat

# OSF systems
#LOCALEDIR = /usr/lib/nls

LOCALEDIR = /usr/lib/locale

.msg.cat:
	rm -f $@
	gencat $@ $<

all : $(LOCALES)

clean :
	rm -f *.cat *.cat.m *~

#
# Since many vendors don't have standard directories for languages
# we must have separate install scripts...
#


install_sol2 : install-help
	$(INSTALL) Fr.cat $(LOCALEDIR)/fr/LC_MESSAGES/gopher.cat
	$(INSTALL) Es.cat $(LOCALEDIR)/es/LC_MESSAGES/gopher.cat
	$(INSTALL) sv.cat $(LOCALEDIR)/sv/LC_MESSAGES/gopher.cat

install_osf : install-help
	$(INSTALL) Fr.cat /usr/lib/nls/msg/fr_FR.iso8859-1/gopher.cat
	$(INSTALL) Es.cat /usr/lib/nls/msg/es_ES.iso8859-1/gopher.cat
	$(INSTALL) sv.cat /usr/lib/nls/msg/sv_SE.iso8859-1/gopher.cat


# HP/Apollo Domain/OS 10.4 or newer
install_domain: install-help
	$(INSTALL) En_US.cat /usr/nlslib/en_US.iso88591/gopher.cat
	$(INSTALL) Fr.cat /usr/nlslib/fr_FR.iso88591/gopher.cat
	$(INSTALL) Es_ES.cat /usr/nlslib/es_ES.iso88591/gopher.cat
	-mkdir /usr/nlslib/es_MX.iso88591
	$(INSTALL) Es_MX.cat /usr/nlslib/es_MX.iso88591/gopher.cat
	$(INSTALL) Sv.cat /usr/nlslib/sv_SE.iso88591/gopher.cat

#
# Hacked install for sites that haven't set up locales correctly
#

install : install-help
	-mkdir $(CLIENTLIB)/gophernls
	cp *.cat* $(CLIENTLIB)/gophernls

# Sites without X/Open use the raw message files

install-msg: install-help
	-mkdir $(CLIENTLIB)/gophernls
	cp *.msg $(CLIENTLIB)/gophernls


# Everyone keeps localized help files in the same place
install-help: 
	$(INSTALL) gopher.hlp.Fr $(CLIENTLIB)
