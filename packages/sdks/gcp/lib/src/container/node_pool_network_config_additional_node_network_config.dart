// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final pulumi.Input<String?>? network;
  /// ) The IP stack type of the additional node interface. Possible values are `IPV4`, `IPV4_IPV6` and `IPV6`. If unset, the value is inferred from the additional subnetwork.
  final pulumi.Input<String?>? stackType;
  /// Name of the subnetwork where the additional interface belongs.
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [NodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs.
  /// [stackType] ) The IP stack type of the additional node interface. Possible values are `IPV4`, `IPV4_IPV6` and `IPV6`. If unset, the value is inferred from the additional subnetwork.
  /// [subnetwork] Name of the subnetwork where the additional interface belongs.
  const NodePoolNetworkConfigAdditionalNodeNetworkConfig({
    this.network,
    this.stackType,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
    };
  }

  factory NodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
