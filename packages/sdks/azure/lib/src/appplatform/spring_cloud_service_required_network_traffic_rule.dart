// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceRequiredNetworkTrafficRule {
  /// The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  final String? direction;
  /// The FQDN list of required traffic.
  final List<String>? fqdns;
  /// The IP list of required traffic.
  final List<String>? ipAddresses;
  /// The port of required traffic.
  final int? port;
  /// The protocol of required traffic.
  final String? protocol;

  /// Creates a new [SpringCloudServiceRequiredNetworkTrafficRule].
  /// [direction] The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  /// [fqdns] The FQDN list of required traffic.
  /// [ipAddresses] The IP list of required traffic.
  /// [port] The port of required traffic.
  /// [protocol] The protocol of required traffic.
  SpringCloudServiceRequiredNetworkTrafficRule({
    this.direction,
    this.fqdns,
    this.ipAddresses,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'fqdns': ?fqdns,
      'ipAddresses': ?ipAddresses,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory SpringCloudServiceRequiredNetworkTrafficRule.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceRequiredNetworkTrafficRule(
      direction: map['direction'] == null ? null : map['direction'] as String,
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

