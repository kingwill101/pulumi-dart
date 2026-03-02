// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Fast Socket feature.
class FastSocketResponseContainerV1beta1 {
  /// Whether Fast Socket features are enabled in the node pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [FastSocketResponseContainerV1beta1].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocketResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory FastSocketResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FastSocketResponseContainerV1beta1(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

