// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigContainerV1beta1 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DnsCacheConfigContainerV1beta1].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  DnsCacheConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DnsCacheConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

