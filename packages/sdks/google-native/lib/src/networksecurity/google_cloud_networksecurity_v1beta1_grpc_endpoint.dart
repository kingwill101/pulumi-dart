// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1beta1GrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final pulumi.Input<String> targetUri;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1GrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  GoogleCloudNetworksecurityV1beta1GrpcEndpoint({required this.targetUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory GoogleCloudNetworksecurityV1beta1GrpcEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1beta1GrpcEndpoint(
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
