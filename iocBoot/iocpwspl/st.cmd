#!../../bin/linux-x86_64/pwspl

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change pwspl to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/pwspl.dbd"
pwspl_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/pwspl.db","project=pwspl")

iocInit()

## Start any sequence programs
#seq sncpwspl,"user=iocadm"
