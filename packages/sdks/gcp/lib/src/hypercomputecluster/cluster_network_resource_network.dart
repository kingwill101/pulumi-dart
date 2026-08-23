// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkResourceNetwork {
  /// Name of the network, in the format
  /// 'projects/{project}/global/networks/{network}'.
  final pulumi.Input<String>? network;
  /// Name of the particular subnetwork being used by the cluster, in the format
  /// 'projects/{project}/regions/{region}/subnetworks/{subnetwork}'.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [ClusterNetworkResourceNetwork].
  /// [network] Name of the network, in the format
  /// [subnetwork] Name of the particular subnetwork being used by the cluster, in the format
  const ClusterNetworkResourceNetwork({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory ClusterNetworkResourceNetwork.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkResourceNetwork(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
