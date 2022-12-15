##########################################################
# General VPC variables:
##########################################################

REGION = "eu-de"
# Region for the VSI. Supported regions: https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-vpc
# Example: REGION = "eu-de"

ZONE = "eu-de-2"
# Availability zone for VSI. Supported zones: https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-vpc
# Example: ZONE = "eu-de-2"

DOMAIN_NAME = "example.com"
# The DOMAIN_NAME variable should contain at least one "." as a separator. It is a private domain and it is not reacheable to and from the outside world.
# The DOMAIN_NAME variable could be like a subdomain name. Ex.: staging.example.com
# Domain names can only use letters, numbers, and hyphens.
# Hyphens cannot be used at the beginning or end of the domain name.
# You can't use a domain name that is already in use.
# Domain names are not case sensitive.

ASCS-VIRT-HOSTNAME = "sapascs"
# ASCS Virtual hostname​
# Default =  "sap($your_sap_sid)ascs"

ERS-VIRT-HOSTNAME =  "sapers"
# ERS Virtual Hostname​  
# Default =  "sap($your_sap_sid)ascs"

HANA-VIRT-HOSTNAME = "dbhana"
# Hana Virtual Hostname
# Default = "db($your_hana_sid)hana"

VPC = "ic4sap"
# EXISTING VPC, previously created by the user in the same region as the VSI. The list of available VPCs: https://cloud.ibm.com/vpc-ext/network/vpcs
# Example: VPC = "ic4sap"

SECURITY_GROUP = "ic4sap-securitygroup"
# EXISTING Security group, previously created by the user in the same VPC. The list of available Security Groups: https://cloud.ibm.com/vpc-ext/network/securityGroups
# Example: SECURITY_GROUP = "ic4sap-securitygroup"

RESOURCE_GROUP = "wes-automation"
# EXISTING Resource group, previously created by the user. The list of available Resource Groups: https://cloud.ibm.com/account/resource-groups
# Example: RESOURCE_GROUP = "wes-automation"

SUBNET = "ic4sap-subnet"
# EXISTING Subnet in the same region and zone as the VSI, previously created by the user. The list of available Subnets: https://cloud.ibm.com/vpc-ext/network/subnets
# Example: SUBNET = "ic4sap-subnet"

SSH_KEYS = [ "r010-57bfc315-f9e5-46bf-bf61-d87a24a9ce7a", "r010-3fcd9fe7-d4a7-41ce-8bb3-d96e936b2c7e" ]
# List of SSH Keys UUIDs that are allowed to SSH as root to the VSI. The SSH Keys should be created for the same region as the VSI. The list of available SSH Keys UUIDs: https://cloud.ibm.com/vpc-ext/compute/sshKeys
# Example: SSH_KEYS = ["r010-8f72b994-c17f-4500-af8f-d05680374t3c", "r011-8f72v884-c17f-4500-af8f-d05900374t3c"]


##########################################################
# File Shares variables:
##########################################################

share_profile = "tier-5iops"
# Enter the IOPs (IOPS per GB) tier for File Share storage. Valid values are 3, 5, and 10.

# File shares sizes:
usrsap-as1      = "20"
usrsap-as2      = "20"
usrsap-sapascs  = "20"
usrsap-sapers   = "20"
usrsap-sapmnt   = "20"
usrsap-sapsys   = "20"
usrsap-trans    = "80"
# Enter Custom File Shares sizes for SAP mounts.

##########################################################
# DB VSI variables:
##########################################################
DB-HOSTNAME-1 = "hanadb-1"
# Hana Cluster VSI1 Hostname.
# The Hostname for the DB VSI. The hostname should be up to 13 characters, as required by SAP
# Default: DB-HOSTNAME-1 = "hanadb-$your_hana_sid-1"

DB-HOSTNAME-2 = "hanadb-2"
# Hana Cluster VSI2 Hostname.
# The Hostname for the DB VSI. The hostname should be up to 13 characters, as required by SAP
# Default: DB-HOSTNAME-2 = "hanadb-$your_hana_sid-2"

DB-PROFILE = "mx2-16x128"
# The DB VSI profile. Supported profiles for DB VSI: mx2-16x128. The list of available profiles: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles&interface=ui

DB-IMAGE = "ibm-redhat-8-4-amd64-sap-hana-4"
# OS image for DB VSI. Supported OS images for DB VSIs: ibm-redhat-8-4-amd64-sap-hana-4
# The list of available VPC Operating Systems supported by SAP: SAP note '2927211 - SAP Applications on IBM Virtual Private Cloud (VPC) Infrastructure environment' https://launchpad.support.sap.com/#/notes/2927211; The list of all available OS images: https://cloud.ibm.com/docs/vpc?topic=vpc-about-images
# Example: DB-IMAGE = "ibm-redhat-8-4-amd64-sap-hana-4" 

##########################################################
# SAP APP VSI variables:
##########################################################
APP-HOSTNAME-1 = "sapapp-1"
# SAP Cluster VSI1 Hostname.
# The Hostname for the SAP APP VSI. The hostname should be up to 13 characters, as required by SAP
# Default: APP-HOSTNAME-1 = "sapapp-$your_sap_sid-1"

APP-HOSTNAME-2 = "sapapp-2"
# SAP Cluster VSI2 Hostname.
# The Hostname for the SAP APP VSI. The hostname should be up to 13 characters, as required by SAP
# Default: APP-HOSTNAME-2 = "sapapp-$your_sap_sid-2"

APP-PROFILE = "bx2-4x16"
# The APP VSI profile. Supported profiles: bx2-4x16. The list of available profiles: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles&interface=ui

APP-IMAGE = "ibm-redhat-8-4-amd64-sap-hana-4"
# OS image for SAP APP VSI. Supported OS images for APP VSIs: ibm-redhat-8-4-amd64-sap-hana-4.
# The list of available VPC Operating Systems supported by SAP: SAP note '2927211 - SAP Applications on IBM Virtual Private Cloud (VPC) Infrastructure environment' https://launchpad.support.sap.com/#/notes/2927211; The list of all available OS images: https://cloud.ibm.com/docs/vpc?topic=vpc-about-images
# Example: APP-IMAGE = "ibm-redhat-8-4-amd64-sap-hana-4" 

##########################################################
# SAP HANA configuration
##########################################################

hana_sid = "HDB"
# SAP HANA system ID. Should follow the SAP rules for SID naming.
# Obs. This will be used  also as identification number across different HA name resources. Duplicates are not allowed.
# Example: hana_sid = "HDB"

hana_sysno = "00"
# SAP HANA instance number. Should follow the SAP rules for instance number naming.
# Example: hana_sysno = "00"

hana_system_usage = "custom"
# System usage. Default: custom. Suported values: production, test, development, custom
# Example: hana_system_usage = "custom"

hana_components = "server"
# SAP HANA Components. Default: server. Supported values: all, client, es, ets, lcapps, server, smartda, streaming, rdsync, xs, studio, afl, sca, sop, eml, rme, rtl, trp
# Example: hana_components = "server"

kit_saphana_file = "/storage/HANADB/51055299.ZIP"
# SAP HANA Installation kit path
# Supported SAP HANA versions on Red Hat 8.4 and Suse 15.3: HANA 2.0 SP 5 Rev 57, kit file: 51055299.ZIP
# Supported SAP HANA versions on Red Hat 7.6: HANA 2.0 SP 5 Rev 52, kit file: 51054623.ZIP
# Example for Red Hat 7: kit_saphana_file = "/storage/HANADB/51054623.ZIP"
# Example for Red Hat 8 or Suse 15: kit_saphana_file = "/storage/HANADB/51055299.ZIP"

##########################################################
# SAP system configuration
##########################################################

sap_sid = "S4A"
# SAP System ID
# Obs. This will be used  also as identification number across different HA name resources. Duplicates are not allowed.

sap_ascs_instance_number = "00"
# The central ABAP service instance number. Should follow the SAP rules for instance number naming.
# Example: sap_ascs_instance_number = "00"

sap_ers_instance_number = "01"
# The enqueue replication server instance number. Should follow the SAP rules for instance number naming.
# Example: sap_ers_instance_number = "01"

sap_ci_instance_number = "10"
# The primary application server instance number. Should follow the SAP rules for instance number naming.
# Example: sap_ci_instance_number = "10"

sap_aas_instance_number = "20"
# The additional application server instance number. Should follow the SAP rules for instance number naming.
# Example: sap_aas_instance_number = "20"

hdb_concurrent_jobs = "23"
# Number of concurrent jobs used to load and/or extract archives to HANA Host

##########################################################
# SAP S/4HANA APP Kit Paths
##########################################################

kit_sapcar_file = "/storage/S4HANA/SAPCAR_1010-70006178.EXE"
kit_swpm_file = "/storage/S4HANA/SWPM20SP13_1-80003424.SAR"
kit_sapexe_file = "/storage/S4HANA/SAPEXE_100-70005283.SAR"
kit_sapexedb_file = "/storage/S4HANA/SAPEXEDB_100-70005282.SAR"
kit_igsexe_file = "/storage/S4HANA/igsexe_1-70005417.sar"
kit_igshelper_file = "/storage/S4HANA/igshelper_17-10010245.sar"
kit_saphotagent_file = "/storage/S4HANA/SAPHOSTAGENT51_51-20009394.SAR"
kit_hdbclient_file = "/storage/S4HANA/IMDB_CLIENT20_009_28-80002082.SAR"
kit_s4hana_export = "/storage/S4HANA/export"
