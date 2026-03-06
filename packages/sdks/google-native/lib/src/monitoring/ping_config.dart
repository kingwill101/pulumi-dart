// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information involved in sending ICMP pings alongside public HTTP/TCP checks. For HTTP, the pings are performed for each part of the redirect chain.
class PingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final pulumi.Input<int>? pingsCount;

  /// Creates a new [PingConfig].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  const PingConfig({
    this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingsCount': ?pingsCount,
    };
  }

  factory PingConfig.fromMap(Map<String, dynamic> map) {
    return PingConfig(
      pingsCount: (() { final guardedValue = map['pingsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

