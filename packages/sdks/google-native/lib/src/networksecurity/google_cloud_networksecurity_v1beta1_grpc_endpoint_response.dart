// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final pulumi.Input<String> targetUri;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse(
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
