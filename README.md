# doveadm-tools
**doveadm-tools** - wrapper scripts set for the Dovecot's administration utility doveadm(1):

* **doveadm-backup** - performs one-way synchronization of mailboxes
 from Dovecot's mail storage to a local directory or via tcp connection.

* **doveadm-expunge** - expunges messages in `Junk` and `Trash` folders and purges mailboxes for every user.

* **doveadm-mdboxrm** - removes SIS enabled user's mdbox storages.

* **doveadm-report-last-login** - prints Dovecot last-login dictionary file in human readable form.

* **doveadm-report-quota** - shows current quota usage.

* **doveadm-rm-attachments** - removes attachments from messages that match the criteria specified via options.

* **doveadm-rm-savedbefore** - removes messages, which were saved before the given date specification.

* **dsisck** - Dovecot SIS consistency check and repair. Based on explanation of SIS operation <sup>[1](#fn1),[2](#fn2),[3](#fn3)</sup>. Main purpose of this program is to deduplicate identical attachments that was saved in separate files for some reason. For instance, attachment deduplication was broken in Dovecot v2.2.16 upwards and fixed in v2.2.22. Every attachment was saved in a separate file.

## References
<a name="fn1">1.</a> http://www.dovecot.org/list/dovecot/2010-August/052175.html    
<a name="fn2">2.</a> http://dovecot.org/list/dovecot/2010-July/050832.html    
<a name="fn3">3.</a> http://dovecot.org/list/dovecot/2010-July/050992.html    
