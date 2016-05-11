#!/bin/bash

set_sprint()
{
	export SPRINT=$1
}

jsprint()
{
	jira ls -q "Sprint = $SPRINT AND project = DEVOPS and status != Closed"
}
