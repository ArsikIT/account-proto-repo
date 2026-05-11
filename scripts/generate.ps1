$ErrorActionPreference = "Stop"

$rootDir = Split-Path -Parent $PSScriptRoot
$outDir = Join-Path $rootDir 'gen\go'
$protoDir = Join-Path $rootDir 'proto'

New-Item -ItemType Directory -Force -Path $outDir | Out-Null

protoc `
  -I $protoDir `
  --go_out=$outDir `
  --go_opt=paths=source_relative `
  --go-grpc_out=$outDir `
  --go-grpc_opt=paths=source_relative `
  (Join-Path $protoDir 'account\v1\account.proto')
