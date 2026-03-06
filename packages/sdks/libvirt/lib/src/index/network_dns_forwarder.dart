// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsForwarder {
  /// Sets the address for each DNS forwarder, defining where to direct DNS queries.
  final pulumi.Input<String>? addr;
  /// Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  final pulumi.Input<String>? domain;

  /// Creates a new [NetworkDnsForwarder].
  /// [addr] Sets the address for each DNS forwarder, defining where to direct DNS queries.
  /// [domain] Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  const NetworkDnsForwarder({
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
      addr: (() { final guardedValue = map['addr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

