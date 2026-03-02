// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of gVNIC feature.
class VirtualNIC {
  /// Whether gVNIC features are enabled in the node pool.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VirtualNIC].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  VirtualNIC({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VirtualNIC.fromMap(Map<String, dynamic> map) {
    return VirtualNIC(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

