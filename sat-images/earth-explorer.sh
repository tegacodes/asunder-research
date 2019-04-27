c1o () {
	scene=$1
	pth=`echo $scene | cut -c 11-13`
	row=`echo $scene | cut -c 14-16`
	mkdir -p $scene
	cd $scene
	parallel -j3 wget --continue --no-verbose http://landsat-pds.s3.amazonaws.com/c1/L8/$pth/$row/$scene/${scene}_{} ::: B{1..9}.TIF MTL.txt MTL.json
	cd -
}

c1v () {
	scene=$1
	pth=`echo $scene | cut -c 11-13`
	row=`echo $scene | cut -c 14-16`
	mkdir -p $scene
	cd $scene
	parallel -j3 wget --continue --no-verbose http://landsat-pds.s3.amazonaws.com/c1/L8/$pth/$row/$scene/${scene}_{} ::: B{2..4}.TIF MTL.txt MTL.json
	cd -
}

c1v LC08_L1TP_089084_20190311_20190325_01_T1
