// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionNetworkEndpointGroupPscData {
  /// Address allocated from given subnetwork for PSC. This IP address acts
  /// as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  final pulumi.Input<String> consumerPscAddress;
  /// The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// this flag isn't specified for a PSC NEG with endpoint type
  /// private-service-connect, then PSC NEG will be connected to a first port in the
  /// available PSC producer port range.
  final pulumi.Input<String> producerPort;
  /// The PSC connection id of the PSC Network Endpoint Group Consumer.
  final pulumi.Input<String> pscConnectionId;
  /// The connection status of the PSC Network Endpoint Group Consumer.
  /// Possible values: 'STATUS_UNSPECIFIED', 'PENDING', 'ACCEPTED',
  /// 'REJECTED', 'CLOSED', 'NEEDS_ATTENTION'
  final pulumi.Input<String> pscConnectionStatus;

  /// Creates a new [GetRegionNetworkEndpointGroupPscData].
  /// [consumerPscAddress] Address allocated from given subnetwork for PSC. This IP address acts
  /// [producerPort] The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// [pscConnectionId] The PSC connection id of the PSC Network Endpoint Group Consumer.
  /// [pscConnectionStatus] The connection status of the PSC Network Endpoint Group Consumer.
  const GetRegionNetworkEndpointGroupPscData({
    required this.consumerPscAddress,
    required this.producerPort,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerPscAddress': consumerPscAddress,
      'producerPort': producerPort,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
    };
  }

  factory GetRegionNetworkEndpointGroupPscData.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupPscData(
      consumerPscAddress: pulumi.Input.fromValue(map['consumerPscAddress'] as String),
      producerPort: pulumi.Input.fromValue(map['producerPort'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      pscConnectionStatus: pulumi.Input.fromValue(map['pscConnectionStatus'] as String),
    );
  }
}
