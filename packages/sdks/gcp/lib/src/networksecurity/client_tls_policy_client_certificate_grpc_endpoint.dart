// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientTlsPolicyClientCertificateGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final pulumi.Input<String> targetUri;

  /// Creates a new [ClientTlsPolicyClientCertificateGrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  ClientTlsPolicyClientCertificateGrpcEndpoint({required this.targetUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory ClientTlsPolicyClientCertificateGrpcEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClientTlsPolicyClientCertificateGrpcEndpoint(
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
