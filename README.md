# docker-couchpotato

Dockerfile to set up a Couchpotato container

## Build

    docker build --tag apps/couchpotato .

## Run

    docker run -d -p 5050:5050 -v <LOCAL_MOVIES_FOLDER>:/movies --name couchpotato apps/couchpotato

## Known Problems

As CouchPotato routinely updates itself, the Docker container will stop to run after an update. This is because CouchPotato restarts itself in the process and a Docker container stops once the initially running process ends. When that happends, you need to restart the container with

    docker start couchpotato

Starting with Docker 1.3, you can now use the `--restart=always` flag to let Docker handle the automatic restart of the container.

    docker run -d -p 5050:5050 -v <LOCAL_MOVIES_FOLDER>:/movies --name couchpotato apps/couchpotato --restart=always

Thanks to Ashex1 for the hint!

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
