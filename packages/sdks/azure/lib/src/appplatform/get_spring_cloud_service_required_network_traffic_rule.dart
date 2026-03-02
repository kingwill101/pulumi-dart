// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpringCloudServiceRequiredNetworkTrafficRule {
  /// The direction of required traffic. Possible values are `Inbound`, `Outbound`.
  final pulumi.Input<String> direction;
  /// The FQDN list of required traffic.
  final pulumi.Input<List<String>> fqdns;
  /// The IP list of required traffic.
  final pulumi.Input<List<String>> ipAddresses;
  /// The port of required traffic.
  final pulumi.Input<int> port;
  /// The protocol of required traffic.
  final pulumi.Input<String> protocol;

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
      direction: (map['direction'] as String).input(),
      fqdns: ((map['fqdns'] as List).cast<String>()).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

