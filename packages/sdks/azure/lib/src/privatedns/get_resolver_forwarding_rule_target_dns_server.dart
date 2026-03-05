// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResolverForwardingRuleTargetDnsServer {
  /// The DNS server IP address.
  final pulumi.Input<String> ipAddress;
  /// The DNS server port.
  final pulumi.Input<int> port;

  /// Creates a new [GetResolverForwardingRuleTargetDnsServer].
  /// [ipAddress] The DNS server IP address.
  /// [port] The DNS server port.
  GetResolverForwardingRuleTargetDnsServer({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory GetResolverForwardingRuleTargetDnsServer.fromMap(Map<String, dynamic> map) {
    return GetResolverForwardingRuleTargetDnsServer(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

