// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the KALM addon.
class KalmConfigResponse {
  /// Whether KALM is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KalmConfigResponse].
  /// [enabled] Whether KALM is enabled for this cluster.
  KalmConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KalmConfigResponse.fromMap(Map<String, dynamic> map) {
    return KalmConfigResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

