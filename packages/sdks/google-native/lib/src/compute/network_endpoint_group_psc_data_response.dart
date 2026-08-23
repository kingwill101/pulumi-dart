// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All data that is specifically relevant to only network endpoint groups of type PRIVATE_SERVICE_CONNECT.
class NetworkEndpointGroupPscDataResponse {
  /// Address allocated from given subnetwork for PSC. This IP address acts as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  final pulumi.Input<String> consumerPscAddress;
  /// The PSC connection id of the PSC Network Endpoint Group Consumer.
  final pulumi.Input<String> pscConnectionId;
  /// The connection status of the PSC Forwarding Rule.
  final pulumi.Input<String> pscConnectionStatus;

  /// Creates a new [NetworkEndpointGroupPscDataResponse].
  /// [consumerPscAddress] Address allocated from given subnetwork for PSC. This IP address acts as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  /// [pscConnectionId] The PSC connection id of the PSC Network Endpoint Group Consumer.
  /// [pscConnectionStatus] The connection status of the PSC Forwarding Rule.
  const NetworkEndpointGroupPscDataResponse({
    required this.consumerPscAddress,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerPscAddress': consumerPscAddress,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
    };
  }

  factory NetworkEndpointGroupPscDataResponse.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupPscDataResponse(
      consumerPscAddress: pulumi.Input.fromValue(map['consumerPscAddress'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      pscConnectionStatus: pulumi.Input.fromValue(map['pscConnectionStatus'] as String),
    );
  }
}
