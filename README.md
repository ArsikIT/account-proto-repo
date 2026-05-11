# Account Proto Repo

This repository stores the protobuf contracts and generated Go code for the account service.

## Structure
- `proto/account/v1/account.proto` - source protobuf contract
- `gen/go/account/v1/` - generated Go protobuf and gRPC files
- `scripts/generate.sh` - generation script for Unix-like systems and CI
- `scripts/generate.ps1` - generation script for Windows PowerShell

## Generate Go Code

### Windows
```powershell
.\scripts\generate.ps1
```

### Linux / macOS
```bash
./scripts/generate.sh
```

## Requirements
- `protoc`
- `protoc-gen-go`
- `protoc-gen-go-grpc`

## Notes
- Edit only files inside `proto/`
- Do not edit files inside `gen/` manually
- Re-run generation after every change in `account.proto`
