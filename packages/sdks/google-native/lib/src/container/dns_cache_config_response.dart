// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigResponse {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [DnsCacheConfigResponse].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  DnsCacheConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DnsCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

