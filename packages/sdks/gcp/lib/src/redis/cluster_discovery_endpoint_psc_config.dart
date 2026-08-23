// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDiscoveryEndpointPscConfig {
  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final pulumi.Input<String>? network;

  /// Creates a new [ClusterDiscoveryEndpointPscConfig].
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  const ClusterDiscoveryEndpointPscConfig({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
    };
  }

  factory ClusterDiscoveryEndpointPscConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDiscoveryEndpointPscConfig(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
