// ignore_for_file: unused_element, unnecessary_cast


class GetSpringCloudServiceRequiredNetworkTrafficRule {
  /// The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  final String direction;
  /// The FQDN list of required traffic.
  final List<String> fqdns;
  /// The IP list of required traffic.
  final List<String> ipAddresses;
  /// The port of required traffic.
  final int port;
  /// The protocol of required traffic.
  final String protocol;

  /// Creates a new [GetSpringCloudServiceRequiredNetworkTrafficRule].
  /// [direction] The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  /// [fqdns] The FQDN list of required traffic.
  /// [ipAddresses] The IP list of required traffic.
  /// [port] The port of required traffic.
  /// [protocol] The protocol of required traffic.
  GetSpringCloudServiceRequiredNetworkTrafficRule({
    required this.direction,
    required this.fqdns,
    required this.ipAddresses,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'fqdns': fqdns,
      'ipAddresses': ipAddresses,
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetSpringCloudServiceRequiredNetworkTrafficRule.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceRequiredNetworkTrafficRule(
      direction: map['direction'] as String,
      fqdns: (map['fqdns'] as List).cast<String>(),
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

