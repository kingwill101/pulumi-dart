// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientTlsPolicyServerValidationCaGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final pulumi.Input<String> targetUri;

  /// Creates a new [ClientTlsPolicyServerValidationCaGrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  ClientTlsPolicyServerValidationCaGrpcEndpoint({required this.targetUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory ClientTlsPolicyServerValidationCaGrpcEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClientTlsPolicyServerValidationCaGrpcEndpoint(
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
