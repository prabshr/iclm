#!/bin/bash
#Author P. Shrestha
odate="180625"
gridname="1x1_falkenberg"
export cdate=`date +%y%m%d`
export spath=$CSMDATA"/lnd/clm2/mappingdata/maps"/${gridname}
export cpath=$HOME"/clm5.0/tools/mkmapdata"
mapfiles=(                                                             \ 
	"map_0.25x0.25_MODIS_to_${gridname}_nomask_aave_da_c" \ 
	"map_0.5x0.5_AVHRR_to_${gridname}_nomask_aave_da_c" \
	"map_0.5x0.5_MODIS_to_${gridname}_nomask_aave_da_c" \
	"map_0.9x1.25_GRDC_to_${gridname}_nomask_aave_da_c" \
	"map_10x10min_IGBPmergeICESatGIS_to_${gridname}_nomask_aave_da_c" \ 
	"map_10x10min_nomask_to_${gridname}_nomask_aave_da_c" \
	"map_1km-merge-10min_HYDRO1K-merge-nomask_to_${gridname}_nomask_aave_da_c" \
	"map_360x720cru_cruncep_to_${gridname}_nomask_aave_da_c" \
	"map_3x3min_GLOBE-Gardner-mergeGIS_to_${gridname}_nomask_aave_da_c" \
	"map_3x3min_GLOBE-Gardner_to_${gridname}_nomask_aave_da_c" \
	"map_3x3min_LandScan2004_to_${gridname}_nomask_aave_da_c" \
	"map_3x3min_MODIS-wCsp_to_${gridname}_nomask_aave_da_c" \
	"map_3x3min_USGS_to_${gridname}_nomask_aave_da_c" \
	"map_5x5min_IGBP-GSDP_to_${gridname}_nomask_aave_da_c" \
	"map_5x5min_ISRIC-WISE_to_${gridname}_nomask_aave_da_c" \
	"map_5x5min_nomask_to_${gridname}_nomask_aave_da_c" \
	"map_5x5min_ORNL-Soil_to_${gridname}_nomask_aave_da_c" )

for maps in ${mapfiles[*]}
do
 mpfil1=${maps%*}${odate}".nc"
 mpfil2=${maps%*}${cdate}".nc"
 echo "cp" $spath/$mpfil1 " "$cpath/$mpfil2
 cp $spath/$mpfil1 $cpath/$mpfil2
done
