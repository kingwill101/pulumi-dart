// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Shielded Nodes feature.
class ShieldedNodesContainerV1beta1 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ShieldedNodesContainerV1beta1].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  ShieldedNodesContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ShieldedNodesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesContainerV1beta1(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
