divert(-1)dnl
include(`../m4/cf.m4')dnl
OSTYPE(`linux')dnl
define(`confCT_FILE', ` -o /etc/mail/sendmail.ct')dnl
define(`confCW_FILE', ` /etc/mail/sendmail.cw')dnl
define(`confDEF_USER_ID',``8:12'')dnl
define(`confPRIVACY_FLAGS', `authwarnings,noexpn,novrfy')dnl
define(`confSTATUS_FILE',`/var/run/sendmail.st')dnl
define(`confTO_QUEUERETURN', `4d')dnl
define(`confTO_QUEUEWARN', `4h')dnl
define(`ALIAS_FILE',`/etc/mail/aliases,/etc/mail/majordomo')dnl
define(`HELP_FILE',`/etc/mail/sendmail.hf')dnl
define(`PROCMAIL_MAILER_PATH',`/usr/bin/procmail')dnl
define(`STATUS_FILE',`/var/run/sendmail.st')dnl

define(`confBIND_OPTS',`-DNSRCH -DEFNAMES')dnl

FEATURE(access_db, hash -o /etc/mail/access)dnl
FEATURE(always_add_domain)dnl
FEATURE(limited_masquerade)dnl
FEATURE(local_procmail)dnl
FEATURE(masquerade_entire_domain)dnl
FEATURE(redirect)dnl
FEATURE(relay_based_on_MX)dnl
FEATURE(relay_entire_domain)dnl
FEATURE(relay_local_from)dnl
FEATURE(use_ct_file)dnl
FEATURE(use_cw_file)dnl
FEATURE(`domaintable',`hash -o /etc/mail/domaintable')dnl
FEATURE(`genericstable',`hash -o /etc/mail/genericstable')dnl
FEATURE(`mailertable',`hash -o /etc/mail/mailertable')dnl
FEATURE(`virtusertable',`hash -o /etc/mail/virtusertable')dnl
FEATURE(nouucp)dnl


MAILER(procmail)dnl
MAILER(smtp)dnl
