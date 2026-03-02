// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Fast Socket feature.
class FastSocketResponse {
  /// Whether Fast Socket features are enabled in the node pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [FastSocketResponse].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocketResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory FastSocketResponse.fromMap(Map<String, dynamic> map) {
    return FastSocketResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

