# -*- coding: UTF-8 -*-
"""
Create on 2012-11-28
Author : tianwei

"""
import os,sys
import pexpect

from config import * 

def main():
    """
    """
    if len(sys.argv) != 2:
        print "Please input your remote command"
        print sys.argv
        return
    remotecmd = sys.argv[1].strip(" ")
    
    for ip in hostname:
        remote = pexpect.spawn('ssh %s@%s\
                "%s"'%(username,ip,remotecmd))
        if remotecmd.startswith("sudo"):
            remote.expect(["hadoop: "])
            remote.sendline(password)
        
        print "Finish %s"%(ip)
    
    print "Cong, run end!"

if __name__ == "__main__":
    main()
