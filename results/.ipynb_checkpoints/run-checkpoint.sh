gpu=$1
# ACL-GAN
folder="/home/yhuang2/PROJs/LS4GAN/benchmarking/ACL-GAN/results"
echo selfie to anime
fidelity --gpu $gpu --fid --input1 $folder/selfie2anime/atob/_03_bar/      --input2 /data/datasets/cyclegan_benchmarking/datasets/selfie2anime/testB
fidelity --gpu $gpu --kid --input1 $folder/selfie2anime/atob/_03_bar/      --input2 /data/datasets/cyclegan_benchmarking/datasets/selfie2anime/testB  --kid-subset-size 50
echo anime to selfie
fidelity --gpu $gpu --fid --input1 $folder/selfie2anime/btoa/_03_bar/      --input2 /data/datasets/cyclegan_benchmarking/datasets/selfie2anime/testA
fidelity --gpu $gpu --kid --input1 $folder/selfie2anime/btoa/_03_bar/      --input2 /data/datasets/cyclegan_benchmarking/datasets/selfie2anime/testA  --kid-subset-size 50
echo male to female
fidelity --gpu $gpu --fid --input1 $folder/male2female/atob/centerCrop/    --input2 /data/datasets/cyclegan_benchmarking/datasets/celeba_male2female_test-center/testB
fidelity --gpu $gpu --kid --input1 $folder/male2female/atob/centerCrop/    --input2 /data/datasets/cyclegan_benchmarking/datasets/celeba_male2female_test-center/testB
echo female to male
fidelity --gpu $gpu --fid --input1 $folder/male2female/btoa/centerCrop/    --input2 /data/datasets/cyclegan_benchmarking/datasets/celeba_male2female_test-center/testA
fidelity --gpu $gpu --kid --input1 $folder/male2female/btoa/centerCrop/    --input2 /data/datasets/cyclegan_benchmarking/datasets/celeba_male2female_test-center/testA
echo remove glasses
fidelity --gpu $gpu --fid --input1 $folder/glassesRemoval/atob/centerCrop/ --input2 /data/datasets/cyclegan_benchmarking/datasets/glasses_test-center/testB --samples-find-deep
fidelity --gpu $gpu --kid --input1 $folder/glassesRemoval/atob/centerCrop/ --input2 /data/datasets/cyclegan_benchmarking/datasets/glasses_test-center/testB --samples-find-deep
echo add glasses
fidelity --gpu $gpu --fid --input1 $folder/glassesRemoval/btoa/centerCrop/ --input2 /data/datasets/cyclegan_benchmarking/datasets/glasses_test-center/testA --samples-find-deep
fidelity --gpu $gpu --kid --input1 $folder/glassesRemoval/btoa/centerCrop/ --input2 /data/datasets/cyclegan_benchmarking/datasets/glasses_test-center/testA --samples-find-deep
