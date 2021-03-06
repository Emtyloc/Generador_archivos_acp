#!/bin/sh

if [[ $1 == '' ]]
then
    echo "FOLDER NAME MISSING! try bash generador_archivos.sh 'foldername'"
    exit 1
fi

folderName=$1

mkdir $folderName
cd $folderName
for i in {1..6}
do
touch "0${i}_TORO_MATIAS.py"
echo "import sys
from collections import defaultdict

def read_input(stdin:sys.stdin):
    alldata = stdin.readlines()
    return alldata

def main():
    cases = read_input(sys.stdin)
    print(cases)

if __name__ == '__main__':
    main()" > "0${i}_TORO_MATIAS.py"
done