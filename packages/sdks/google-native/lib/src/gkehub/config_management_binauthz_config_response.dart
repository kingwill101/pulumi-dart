// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigResponse {
  /// Whether binauthz is enabled in this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfigManagementBinauthzConfigResponse].
  /// [enabled] Whether binauthz is enabled in this cluster.
  const ConfigManagementBinauthzConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfigManagementBinauthzConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

