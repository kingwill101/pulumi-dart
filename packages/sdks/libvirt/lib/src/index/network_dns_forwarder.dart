// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsForwarder {
  /// Sets the address for each DNS forwarder, defining where to direct DNS queries.
  final pulumi.Input<String?>? addr;
  /// Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  final pulumi.Input<String?>? domain;
  /// Specifies the port number associated with the SRV record.
  final pulumi.Input<double?>? port;

  /// Creates a new [NetworkDnsForwarder].
  /// [addr] Sets the address for each DNS forwarder, defining where to direct DNS queries.
  /// [domain] Configures the domain associated with each DNS forwarder, specifying the context for resolution.
  /// [port] Specifies the port number associated with the SRV record.
  const NetworkDnsForwarder({
    this.addr,
    this.domain,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': ?addr,
      'domain': ?domain,
      'port': ?port,
    };
  }

  factory NetworkDnsForwarder.fromMap(Map<String, dynamic> map) {
    return NetworkDnsForwarder(
      addr: (() { final guardedValue = map['addr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
