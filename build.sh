while getopts n: flag
do
    case "${flag}" in
        n) filename=${OPTARG};;
    esac
done

rm -rf build
mkdir build
dasm "${filename}.asm" -f3 -v0 -obuild/"${filename}.bin"