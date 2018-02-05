sqlite3_crash_on_write 332
sqlite3_test_control_pending_byte 65536
sqlite3 db test.db -vfs writecrash
db eval {
      UPDATE t1 SET b = randomblob(899) WHERE (a%3)==0
    }
set {} {}
