// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Fast Socket feature.
class FastSocket {
  /// Whether Fast Socket features are enabled in the node pool.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [FastSocket].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocket({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory FastSocket.fromMap(Map<String, dynamic> map) {
    return FastSocket(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

