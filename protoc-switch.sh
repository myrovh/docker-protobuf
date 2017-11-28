#! /bin/sh

arg1=$1

shift 2> /dev/null

case "$arg1" in
  protoc)
    /usr/bin/protoc -I/protobuf $* ;;
  ruby)
    /usr/bin/grpc_tools_ruby_protoc -I/protobuf $*
  bash|sh)
    /bin/$arg1 $* ;;
  *)
    /usr/bin/protoc -I/protobuf $arg1 $*;;
esac