// ignore_for_file: unused_element, unnecessary_cast


class PscConfig {
  /// The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  final String network;

  /// Creates a new [PscConfig].
  /// [network] The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  PscConfig({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory PscConfig.fromMap(Map<String, dynamic> map) {
    return PscConfig(
      network: map['network'] as String,
    );
  }
}

