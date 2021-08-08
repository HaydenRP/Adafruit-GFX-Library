FROM alpine:3.14 AS builder
RUN apk add --no-cache libc-dev freetype-dev gcc make
WORKDIR /fontConvertBuild/src
COPY ./fontconvert/fontconvert.c  .
COPY ./fontconvert/Makefile .
COPY ./gfxfont.h  ../
RUN make

FROM alpine:3.14
RUN apk add --no-cache freetype
WORKDIR /bin/fontconverter
COPY --from=builder /fontConvertBuild/src/fontconvert .

ENTRYPOINT [ "/bin/fontconverter/fontconvert" ]