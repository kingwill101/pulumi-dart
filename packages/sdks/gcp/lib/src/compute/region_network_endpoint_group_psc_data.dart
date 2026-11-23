// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkEndpointGroupPscData {
  /// (Output)
  /// Address allocated from given subnetwork for PSC. This IP address acts
  /// as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  final pulumi.Input<String?>? consumerPscAddress;
  /// The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// this flag isn't specified for a PSC NEG with endpoint type
  /// private-service-connect, then PSC NEG will be connected to a first port in the
  /// available PSC producer port range.
  final pulumi.Input<String?>? producerPort;
  /// (Output)
  /// The PSC connection id of the PSC Network Endpoint Group Consumer.
  final pulumi.Input<String?>? pscConnectionId;
  /// (Output)
  /// The connection status of the PSC Network Endpoint Group Consumer.
  /// Possible values: `STATUS_UNSPECIFIED`, `PENDING`, `ACCEPTED`,
  /// `REJECTED`, `CLOSED`, `NEEDS_ATTENTION`
  final pulumi.Input<String?>? pscConnectionStatus;

  /// Creates a new [RegionNetworkEndpointGroupPscData].
  /// [consumerPscAddress] (Output)
  /// [producerPort] The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// [pscConnectionId] (Output)
  /// [pscConnectionStatus] (Output)
  const RegionNetworkEndpointGroupPscData({
    this.consumerPscAddress,
    this.producerPort,
    this.pscConnectionId,
    this.pscConnectionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerPscAddress': ?consumerPscAddress,
      'producerPort': ?producerPort,
      'pscConnectionId': ?pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
    };
  }

  factory RegionNetworkEndpointGroupPscData.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupPscData(
      consumerPscAddress: (() { final guardedValue = map['consumerPscAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producerPort: (() { final guardedValue = map['producerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionStatus: (() { final guardedValue = map['pscConnectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
