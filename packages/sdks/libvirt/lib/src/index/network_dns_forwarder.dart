// ignore_for_file: unused_element, unnecessary_cast


class NetworkDnsForwarder {
  /// Sets the address for each DNS forwarder, defining where to direct DNS queries.
  final String? addr;
  /// Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  final String? domain;

  /// Creates a new [NetworkDnsForwarder].
  /// [addr] Sets the address for each DNS forwarder, defining where to direct DNS queries.
  /// [domain] Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  NetworkDnsForwarder({
    this.addr,
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': ?addr,
      'domain': ?domain,
    };
  }

  factory NetworkDnsForwarder.fromMap(Map<String, dynamic> map) {
    return NetworkDnsForwarder(
      addr: map['addr'] == null ? null : map['addr'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}

