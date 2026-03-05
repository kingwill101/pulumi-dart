// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.
class IntraNodeVisibilityConfig {
  /// Enables intra node visibility for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [IntraNodeVisibilityConfig].
  /// [enabled] Enables intra node visibility for this cluster.
  IntraNodeVisibilityConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory IntraNodeVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return IntraNodeVisibilityConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

