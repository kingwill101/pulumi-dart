// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_info_response.dart';

/// The connection information through which to interact with a blockchain node.
class ConnectionInfoResponse {
  /// The endpoint information through which to interact with a blockchain node.
  final pulumi.Input<EndpointInfoResponse> endpointInfo;
  /// A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [ConnectionInfoResponse].
  /// [endpointInfo] The endpoint information through which to interact with a blockchain node.
  /// [serviceAttachment] A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  const ConnectionInfoResponse({
    required this.endpointInfo,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInfo': pulumi.Input.mapInputValue<EndpointInfoResponse, Map<String, dynamic>>(endpointInfo, (value) => value.toMap()),
      'serviceAttachment': serviceAttachment,
    };
  }

  factory ConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionInfoResponse(
      endpointInfo: pulumi.Input.fromValue(EndpointInfoResponse.fromMap((map['endpointInfo']! as Map).cast<String, dynamic>())),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
