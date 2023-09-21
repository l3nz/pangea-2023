#! /usr/bin/perl

$pid = `head --lines 1 /var/run/sendmail.pid`;
chomp $pid;
$res = `kill $pid`;
print $res;

$res2 = `m4 pangea.mc >/etc/sendmail.cf`;
print $res2;

$res2 = `sendmail -bi`;
print $res2;



$res2 = `sendmail -X /var/log/sendmail.X -bd`;
print $res2;
