// ignore_for_file: unused_element, unnecessary_cast


class GetResolverForwardingRuleTargetDnsServer {
  /// The DNS server IP address.
  final String ipAddress;
  /// The DNS server port.
  final int port;

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
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}

