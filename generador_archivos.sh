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
    NDATAS = int(stdin.readline())
    cases = []
    for _ in range(NDATAS):
        N,M = map(int, stdin.readline().split()) #Number of Junctions, Number of roads
        case = [[N,M]]
        for _ in range(M):
            street = list(map(int, stdin.readline().split()))
            case.append(street)
        cases.append(case)
    return cases

def main():
    cases = read_input(sys.stdin)
    print()

if __name__ == '__main__':
    main()" > "0${i}_TORO_MATIAS.py"
done