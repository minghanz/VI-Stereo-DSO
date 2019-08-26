#!/bin/bash
#usage: python xxx.py file_name
# dataname="MH_01_easy"
#dataname="MH_02_easy"
#dataname="MH_03_medium"
#dataname="MH_04_difficult"
#dataname="MH_05_difficult"
#dataname="V2_03_difficult"
#dataname="V2_01_easy"
#dataname="V2_02_medium"
#dataname="V1_02_medium"
# dataname="V1_01_easy"
# #dataname="V1_03_difficult"
#     # run dso
#      ./build/bin/dso_dataset \
#  	  files0=/media/minghanz/Seagate_Backup_Plus_Drive/EuRoC_MAV_Dataset/${dataname}/mav0/cam0/data \
#  	  calib0=/home/minghanz/VI-Stereo-DSO/calib/euroc/cam0.txt \
# 	  imu_info=/home/minghanz/VI-Stereo-DSO/calib/euroc/IMU_info.txt \
# 	  groundtruth=/media/minghanz/Seagate_Backup_Plus_Drive/EuRoC_MAV_Dataset/${dataname}/mav0/state_groundtruth_estimate0/data.csv \
# 	  imudata=/media/minghanz/Seagate_Backup_Plus_Drive/EuRoC_MAV_Dataset/${dataname}/mav0/imu0/data.csv \
# 	  pic_timestamp=/media/minghanz/Seagate_Backup_Plus_Drive/EuRoC_MAV_Dataset/${dataname}/mav0/cam0/data.csv \
#  	  preset=0 mode=1 \
# 	  quiet=1 nomt=1 \
#           savefile_tail=nt_${dataname}\
# 	  use_stereo=0\
# 	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0


dataname="small"
# dataname="medium"
# dataname="large"
# run dso on sf data
     ./build/bin/dso_dataset \
 	  files0=/media/minghanz/Seagate_Backup_Plus_Drive/cam_IMU_calib_data/${dataname}/VINS_mono_fmt/cam0 \
 	  calib0=/media/minghanz/Seagate_Backup_Plus_Drive/cam_IMU_calib_data/OpenCV_camIMUcalib_calib_for_dso.txt \
	  imu_info=/media/minghanz/Seagate_Backup_Plus_Drive/cam_IMU_calib_data/${dataname}/VINS_mono_fmt/IMU_info.txt \
	  imudata=/media/minghanz/Seagate_Backup_Plus_Drive/cam_IMU_calib_data/${dataname}/VINS_mono_fmt/imu0.csv \
	  pic_timestamp=/media/minghanz/Seagate_Backup_Plus_Drive/cam_IMU_calib_data/${dataname}/VINS_mono_fmt/cam0_tstamp.csv \
 	  preset=0 mode=2 \
	  quiet=1 nomt=1 \
          savefile_tail=nt_${dataname}\
	  use_stereo=0\
	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0
