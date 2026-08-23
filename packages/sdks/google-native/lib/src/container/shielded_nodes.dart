// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Shielded Nodes feature.
class ShieldedNodes {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ShieldedNodes].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  const ShieldedNodes({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ShieldedNodes.fromMap(Map<String, dynamic> map) {
    return ShieldedNodes(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
