// ignore_for_file: unused_element, unnecessary_cast


class ClusterPscConfig {
  /// Required. The consumer network where the network address of
  /// the discovery endpoint will be reserved, in the form of
  /// projects/{network_project_id_or_number}/global/networks/{network_id}.
  final String network;

  /// Creates a new [ClusterPscConfig].
  /// [network] Required. The consumer network where the network address of
  ClusterPscConfig({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory ClusterPscConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPscConfig(
      network: map['network'] as String,
    );
  }
}

