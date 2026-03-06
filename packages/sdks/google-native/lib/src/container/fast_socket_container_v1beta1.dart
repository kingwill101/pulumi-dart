// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Fast Socket feature.
class FastSocketContainerV1beta1 {
  /// Whether Fast Socket features are enabled in the node pool.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [FastSocketContainerV1beta1].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  const FastSocketContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory FastSocketContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FastSocketContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

