REM VCD URL
set VCD_URL=lecloud.bull-services.ch

REM VCD Org Name
REM set VCD_ORG_NAME=2b99ef6c-e3f1-4b7c-bb06-2207a3468e87
set VCD_ORG_NAME=ITComp

REM VCD VDC Name
set VCD_ORG_VDC_NAME=vDC_ITComp

REM VCD Catalog Name
set VCD_CATALOG_NAME=ITComp_Catalog

set OFVTOOL_URL="vcloud://%VCD_USER_NAME%@%VCD_URL%?org=%VCD_ORG_NAME%&vdc=%VCD_ORG_VDC_NAME%&vappTemplate=centos72&catalog=%VCD_CATALOG_NAME%"

cd output-centos71-vmware-iso
ovftool --vCloudTemplate --disableVerification --acceptAllEulas --overwrite centos71.vmx %OFVTOOL_URL%