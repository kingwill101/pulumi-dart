// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final pulumi.Input<String> targetUri;

  /// Creates a new [ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  const ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetUri': targetUri,
    };
  }

  factory ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint(
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}

