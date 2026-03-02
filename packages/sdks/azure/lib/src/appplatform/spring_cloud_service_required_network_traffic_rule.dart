// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceRequiredNetworkTrafficRule {
  /// The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  final pulumi.Input<String>? direction;
  /// The FQDN list of required traffic.
  final pulumi.Input<List<String>>? fqdns;
  /// The IP list of required traffic.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The port of required traffic.
  final pulumi.Input<int>? port;
  /// The protocol of required traffic.
  final pulumi.Input<String>? protocol;

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
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns'] as List).cast<String>()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses'] as List).cast<String>()).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

