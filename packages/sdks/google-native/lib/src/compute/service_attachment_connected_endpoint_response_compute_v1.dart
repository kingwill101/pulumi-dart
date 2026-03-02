// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output Only] A connection connected to this service attachment.
class ServiceAttachmentConnectedEndpointResponseComputeV1 {
  /// The url of the consumer network.
  final pulumi.Input<String> consumerNetwork;
  /// The url of a connected endpoint.
  final pulumi.Input<String> endpoint;
  /// The PSC connection id of the connected endpoint.
  final pulumi.Input<String> pscConnectionId;
  /// The status of a connected endpoint to this service attachment.
  final pulumi.Input<String> status;

  /// Creates a new [ServiceAttachmentConnectedEndpointResponseComputeV1].
  /// [consumerNetwork] The url of the consumer network.
  /// [endpoint] The url of a connected endpoint.
  /// [pscConnectionId] The PSC connection id of the connected endpoint.
  /// [status] The status of a connected endpoint to this service attachment.
  ServiceAttachmentConnectedEndpointResponseComputeV1({
    required this.consumerNetwork,
    required this.endpoint,
    required this.pscConnectionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'endpoint': endpoint,
      'pscConnectionId': pscConnectionId,
      'status': status,
    };
  }

  factory ServiceAttachmentConnectedEndpointResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpointResponseComputeV1(
      consumerNetwork: (map['consumerNetwork'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      pscConnectionId: (map['pscConnectionId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

