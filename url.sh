#!/bin/bash
function asURL() {
        PREFIX="file://$(pwd)/";
        sed "s*^*$PREFIX*" |
        sed 's/ /%20/g'; 
}
find "$@" | asURL
