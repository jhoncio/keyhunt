default:
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c oldbloom/bloom.cpp -o oldbloom.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c bloom/bloom.cpp -o bloom.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-unused-parameter -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c base58/base58.c -o base58.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c rmd160/rmd160.c -o rmd160.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/sha3.c -o sha3.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/keccak.c -o keccak.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c xxhash/xxhash.c -o xxhash.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c util.c -o util.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/Int.cpp -o Int.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/Point.cpp -o Point.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/SECP256K1.cpp -o SECP256K1.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/IntMod.cpp -o IntMod.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c secp256k1/Random.cpp -o Random.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c secp256k1/IntGroup.cpp -o IntGroup.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/ripemd160.o -ftree-vectorize -flto -fopenmp -c hash/ripemd160.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/sha256.o -ftree-vectorize -flto -fopenmp -c hash/sha256.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/ripemd160_sse.o -ftree-vectorize -flto -fopenmp -c hash/ripemd160_sse.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/sha256_sse.o -ftree-vectorize -flto -fopenmp -c hash/sha256_sse.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -o keyhunt keyhunt.cpp base58.o rmd160.o hash/ripemd160.o hash/ripemd160_sse.o hash/sha256.o hash/sha256_sse.o bloom.o oldbloom.o xxhash.o util.o Int.o Point.o SECP256K1.o IntMod.o Random.o IntGroup.o sha3.o keccak.o -lm -lpthread -fopenmp
	rm -r *.o
clean:
	rm -f keyhunt
legacy:
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c oldbloom/bloom.cpp -o oldbloom.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c bloom/bloom.cpp -o bloom.o
	gcc -m64 -march=native -mtune=native -mavx2 -Wno-unused-result -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c base58/base58.c -o base58.o
	gcc -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c xxhash/xxhash.c -o xxhash.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c util.c -o util.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/sha3.c -o sha3.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/keccak.c -o keccak.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c hashing.c -o hashing.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c gmp256k1/Int.cpp -o Int.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c gmp256k1/Point.cpp -o Point.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c gmp256k1/GMP256K1.cpp -o GMP256K1.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c gmp256k1/IntMod.cpp -o IntMod.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c gmp256k1/Random.cpp -o Random.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c gmp256k1/IntGroup.cpp -o IntGroup.o
	g++ -m64 -march=native -mtune=native -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -o keyhunt keyhunt_legacy.cpp base58.o bloom.o oldbloom.o xxhash.o util.o Int.o Point.o GMP256K1.o IntMod.o IntGroup.o Random.o hashing.o sha3.o keccak.o -lm -lpthread -lcrypto -lgmp -fopenmp
	rm -r *.o
bsgsd:
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c oldbloom/bloom.cpp -o oldbloom.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c bloom/bloom.cpp -o bloom.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-unused-parameter -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c base58/base58.c -o base58.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c rmd160/rmd160.c -o rmd160.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/sha3.c -o sha3.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c sha3/keccak.c -o keccak.o
	gcc -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c xxhash/xxhash.c -o xxhash.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c util.c -o util.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/Int.cpp -o Int.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/Point.cpp -o Point.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/SECP256K1.cpp -o SECP256K1.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -fopenmp -c secp256k1/IntMod.cpp -o IntMod.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c secp256k1/Random.cpp -o Random.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -flto -fopenmp -c secp256k1/IntGroup.cpp -o IntGroup.o
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/ripemd160.o -ftree-vectorize -flto -fopenmp -c hash/ripemd160.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/sha256.o -ftree-vectorize -flto -fopenmp -c hash/sha256.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/ripemd160_sse.o -ftree-vectorize -flto -fopenmp -c hash/ripemd160_sse.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -o hash/sha256_sse.o -ftree-vectorize -flto -fopenmp -c hash/sha256_sse.cpp
	g++ -m64 -march=native -mtune=native -mssse3 -mavx2 -Wall -Wextra -Wno-deprecated-copy -Ofast -ffast-math -funroll-loops -ftree-vectorize -o bsgsd bsgsd.cpp base58.o rmd160.o hash/ripemd160.o hash/ripemd160_sse.o hash/sha256.o hash/sha256_sse.o bloom.o oldbloom.o xxhash.o util.o Int.o Point.o SECP256K1.o IntMod.o Random.o IntGroup.o sha3.o keccak.o -lm -lpthread -fopenmp
	rm -r *.o
