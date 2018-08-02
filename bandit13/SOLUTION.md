    bandit12@bandit:~$ cd $(mktemp -d)
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ cp ~/data.txt .
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ xxd -r data.txt > data1.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data1.bin
    data1.bin: gzip compressed data, was "data2.bin", last modified: Thu Dec 28 13:34:36 2017, max compression, from Unix
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ zcat data1.bin > data2.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data2.bin
    data2.bin: bzip2 compressed data, block size = 900k
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ bzcat data2.bin > data3.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data3.bin
    data3.bin: gzip compressed data, was "data4.bin", last modified: Thu Dec 28 13:34:36 2017, max compression, from Unix
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ zcat data3.bin > data4.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data4.bin
    data4.bin: POSIX tar archive (GNU)
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ tar -xvf data4.bin
    data5.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data5.bin
    data5.bin: POSIX tar archive (GNU)
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ tar -xvf data5.bin
    data6.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data6.bin
    data6.bin: bzip2 compressed data, block size = 900k
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ bzcat data6.bin > data7.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data7.bin
    data7.bin: POSIX tar archive (GNU)
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ tar -xvf data7.bin
    data8.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data8.bin
    data8.bin: gzip compressed data, was "data9.bin", last modified: Thu Dec 28 13:34:36 2017, max compression, from Unix
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ zcat data8.bin > data9.bin

    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ file data9.bin
    data9.bin: ASCII text
    bandit12@bandit:/tmp/tmp.zXQldDZZxE$ cat data9.bin
    The password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
