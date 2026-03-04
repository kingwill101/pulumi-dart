// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IndexPrivateEndpoints proto is used to provide paths for users to send requests via private endpoints (e.g. private service access, private service connect). To send request via private service access, use match_grpc_address. To send request via private service connect, use service_attachment.
class GoogleCloudAiplatformV1IndexPrivateEndpointsResponse {
  /// The ip address used to send match gRPC requests.
  final pulumi.Input<String> matchGrpcAddress;

  /// The name of the service attachment resource. Populated if private service connect is enabled.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GoogleCloudAiplatformV1IndexPrivateEndpointsResponse].
  /// [matchGrpcAddress] The ip address used to send match gRPC requests.
  /// [serviceAttachment] The name of the service attachment resource. Populated if private service connect is enabled.
  GoogleCloudAiplatformV1IndexPrivateEndpointsResponse({
    required this.matchGrpcAddress,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchGrpcAddress': matchGrpcAddress,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GoogleCloudAiplatformV1IndexPrivateEndpointsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1IndexPrivateEndpointsResponse(
      matchGrpcAddress: pulumi.Input.fromValue(
        map['matchGrpcAddress'] as String,
      ),
      serviceAttachment: pulumi.Input.fromValue(
        map['serviceAttachment'] as String,
      ),
    );
  }
}
