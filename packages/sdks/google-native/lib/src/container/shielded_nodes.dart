// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Shielded Nodes feature.
class ShieldedNodes {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ShieldedNodes].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  ShieldedNodes({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ShieldedNodes.fromMap(Map<String, dynamic> map) {
    return ShieldedNodes(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

