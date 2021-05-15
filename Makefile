
COMPOSANT = micro-ecc-rfc6979

LIB = ${COMPOSANT}.a
LIB_OBJS = uECC.o rfc6979sha256p256csprng.o hmacsha256.o hmac.o sha256.o

include ../gcc.mk


all: $(LIB)
clean:
	rm -f ${LIB}  ${LIB_OBJS}

main : main.o ${LIB}
	gcc -o $@ $^

${DESTINATION_LIB}: ${LIB}
	cp $< $@

