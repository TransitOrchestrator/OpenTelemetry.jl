OTLP_VERSION = v"1.5.0"

using Downloads
using CodecZlib
using Tar
using ProtoBuf
using Glob

download_url = "https://github.com/open-telemetry/opentelemetry-proto/archive/refs/tags/v$OTLP_VERSION.tar.gz"

open(Downloads.download(download_url)) do tar_gz
    tar = GzipDecompressorStream(tar_gz)
    dir = Tar.extract(tar)
    proto_dir = joinpath(dir, "opentelemetry-proto-$OTLP_VERSION")
    println(proto_dir)

    # Compile all proto files recursively
    for proto_file in Glob.glob("**/*.proto", proto_dir)
        println("Compiling: $proto_file")
        protojl(proto_file, proto_dir, "../src")
    end
end

# TODO: Still need to manually merge these subpackages
