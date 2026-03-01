// ignore_for_file: unused_element, unnecessary_cast


class ClusterDiscoveryEndpointPscConfig {
  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final String? network;

  /// Creates a new [ClusterDiscoveryEndpointPscConfig].
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  ClusterDiscoveryEndpointPscConfig({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
    };
  }

  factory ClusterDiscoveryEndpointPscConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDiscoveryEndpointPscConfig(
      network: map['network'] == null ? null : map['network'] as String,
    );
  }
}

