../bin/scan -input_dir models/ -output_dir scans/ -height 3 -noise_std 0.07 -distance 4 -tilt -30 -shift 0 -num_views 6

../bin/scan -input_dir models/ -output_dir scans/ -noise_std 0.07 -distance 4 -distance 6 -tilt -15 -shift 0 -num_views 6

../bin/scan -input_dir models/ -output_dir scans/ -noise_std 0.07 -distance 6 -tilt -15 -shift -1.5 -shift 1.5 -num_views 6

../bin/train -input_dir scans/ -output_dir database/ -num_clusters 40

#../bin/classify -database_file_name database.yaml -scene_file_name test/scenes/chairAndDesk1.pcd -window_size 0.6 -local_maxima_threshold 0.4 -use_icp 1 -icp_threshold 0.01

#../bin/classify -database_file_name database.yaml -scene_file_name test/scenes/chair1-1.pcd -window_size 0.6 -local_maxima_threshold 0.4 -use_icp 1 -icp_threshold 0.01

#../bin/eval_clustering -scans_dir scans/ -database_dir database/