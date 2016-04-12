# doveadm-tools
**doveadm-tools** - wrapper scripts set for the Dovecot's administration utility doveadm(1):

* **doveadm-backup** - iterates over passwd-file databases and performs one-way synchronization of mailboxes
 from Dovecot's mail storage to a local directory or via tcp connection.

* **doveadm-expunge** - iterates over passwd-file databases and expunges and purges messages in `Junk` and `Trash` folders for all users.

* **doveadm-mdboxrm** - removes SIS enabled user's mdbox storages.

* **doveadm-report-quota** - iterates over passwd-file databases and shows current quota usage.

* **dsisck** - Dovecot SIS consistency check and repair. Based on explanation of SIS operation <sup>[1](#fn1),[2](#fn2),[3](#fn3)</sup>. Main purpose of this program is to deduplicate identical attachments that was saved in separate files for some reason. For instance, attachment deduplication was broken in Dovecot v2.2.16 upwards and fixed in v2.2.22. Every attachment was saved in a separate file.

## References
<a name="fn1">1.</a> http://www.dovecot.org/list/dovecot/2010-August/052175.html    
<a name="fn2">2.</a> http://dovecot.org/list/dovecot/2010-July/050832.html    
<a name="fn3">3.</a> http://dovecot.org/list/dovecot/2010-July/050992.html    
