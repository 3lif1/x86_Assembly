#!/usr/bin/env python
import subprocess
import argparse

def commands(commit):
    subprocess.call(["git", "add", "-A"])
    subprocess.call(["git", "commit", "-m", commit])
    subprocess.call(["git", "push"])

def get_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("-m", "--commit", dest="commit", help="specify your commit")
    options = parser.parse_args()
    #handling errors:
    if not options.commit:
        parser.error("[-] Please specify your commitment")
    return options
options = get_arguments()
commands(options.commit)
