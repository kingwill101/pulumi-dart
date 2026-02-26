## Pulumi protobuf file definitions

`pulumi/proto` is the source of truth for Pulumi RPC protobuf definitions.

Use:

```bash
task proto:generate
```

This will:

1. Ensure `pulumi/` exists (clone from `github.com/pulumi/pulumi` if missing).
2. Ensure `.protobuf/` exists (clone from `github.com/protocolbuffers/protobuf` if missing).
3. Generate Dart protobuf/grpc files into `pulumi-dart/lib/src/pulumirpc`.

The local `proto/` directory is retained for historical reference and should not be edited for active generation flows.
