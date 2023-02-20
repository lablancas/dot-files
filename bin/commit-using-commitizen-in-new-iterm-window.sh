#!/bin/bash
# this wrapper makes sure that $REPO is the only argument
# specified in the custom action's Parameters field and is necessary
# due to https://jira.atlassian.com/browse/SRCTREEWIN-2291
osascript /Users/lucas/bin/commit-using-commitizen-in-new-iterm-window.scpt $@
exit 0
