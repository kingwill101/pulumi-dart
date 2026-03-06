// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NodeLocal DNSCache
class DnsCacheConfig {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DnsCacheConfig].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  const DnsCacheConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

