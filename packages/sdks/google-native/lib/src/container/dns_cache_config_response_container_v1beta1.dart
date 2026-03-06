// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigResponseContainerV1beta1 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [DnsCacheConfigResponseContainerV1beta1].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  const DnsCacheConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DnsCacheConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

