import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The protocol used by this TargetServer.
enum TargetServerProtocol implements pulumi.PulumiEnum<String> {
  protocolUnspecified("PROTOCOL_UNSPECIFIED"),
  http("HTTP"),
  http2("HTTP2"),
  grpcTarget("GRPC_TARGET"),
  grpc("GRPC"),
  externalCallout("EXTERNAL_CALLOUT");

  const TargetServerProtocol(this.wireValue);
  @override
  final String wireValue;

  static TargetServerProtocol fromValue(String value) {
    for (final item in TargetServerProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetServerProtocol value: $value');
  }
}
