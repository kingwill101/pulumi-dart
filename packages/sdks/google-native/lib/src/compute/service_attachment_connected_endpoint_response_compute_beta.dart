// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output Only] A connection connected to this service attachment.
class ServiceAttachmentConnectedEndpointResponseComputeBeta {
  /// The url of the consumer network.
  final pulumi.Input<String> consumerNetwork;
  /// The url of a connected endpoint.
  final pulumi.Input<String> endpoint;
  /// The PSC connection id of the connected endpoint.
  final pulumi.Input<String> pscConnectionId;
  /// The status of a connected endpoint to this service attachment.
  final pulumi.Input<String> status;

  /// Creates a new [ServiceAttachmentConnectedEndpointResponseComputeBeta].
  /// [consumerNetwork] The url of the consumer network.
  /// [endpoint] The url of a connected endpoint.
  /// [pscConnectionId] The PSC connection id of the connected endpoint.
  /// [status] The status of a connected endpoint to this service attachment.
  ServiceAttachmentConnectedEndpointResponseComputeBeta({
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

  factory ServiceAttachmentConnectedEndpointResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpointResponseComputeBeta(
      consumerNetwork: pulumi.Input.fromValue(map['consumerNetwork'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

