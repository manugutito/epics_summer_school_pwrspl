# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = pwspl
# pwspl.dbd will be created and installed
DBD += pwspl.dbd

# pwspl.dbd will be made up from these files:
pwspl_DBD += base.dbd

# Include dbd files from all support applications:
#pwspl_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#pwspl_LIBS += xxx

# pwspl_registerRecordDeviceDriver.cpp derives from pwspl.dbd
pwspl_SRCS += pwspl_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
pwspl_SRCS_DEFAULT += pwsplMain.cpp
pwspl_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#pwspl_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
pwspl_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

