// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// The name or selfLink of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final pulumi.Input<String?>? network;
  /// The IP stack type of the additional node interface. Possible values are IPV4, IPV4_IPV6 and IPV6. If unset, the value is inferred from the additional subnetwork.
  final pulumi.Input<String?>? stackType;
  /// The name or selfLink of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] The name or selfLink of the Google Compute Engine
  /// [stackType] The IP stack type of the additional node interface. Possible values are IPV4, IPV4_IPV6 and IPV6. If unset, the value is inferred from the additional subnetwork.
  /// [subnetwork] The name or selfLink of the Google Compute Engine
  const ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
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

  factory ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
