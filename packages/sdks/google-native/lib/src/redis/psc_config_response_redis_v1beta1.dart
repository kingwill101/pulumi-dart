// ignore_for_file: unused_element, unnecessary_cast


class PscConfigResponseRedisV1beta1 {
  /// The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  final String network;

  /// Creates a new [PscConfigResponseRedisV1beta1].
  /// [network] The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  PscConfigResponseRedisV1beta1({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory PscConfigResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return PscConfigResponseRedisV1beta1(
      network: map['network'] as String,
    );
  }
}

