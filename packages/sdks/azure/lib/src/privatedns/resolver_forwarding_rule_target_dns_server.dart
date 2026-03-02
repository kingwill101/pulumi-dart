// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverForwardingRuleTargetDnsServer {
  /// DNS server IP address.
  final pulumi.Input<String> ipAddress;
  /// DNS server port.
  final pulumi.Input<int>? port;

  /// Creates a new [ResolverForwardingRuleTargetDnsServer].
  /// [ipAddress] DNS server IP address.
  /// [port] DNS server port.
  ResolverForwardingRuleTargetDnsServer({
    required this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': ?port,
    };
  }

  factory ResolverForwardingRuleTargetDnsServer.fromMap(Map<String, dynamic> map) {
    return ResolverForwardingRuleTargetDnsServer(
      ipAddress: (map['ipAddress'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

