// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for fine-grained cost management feature.
class CostManagementConfig {
  /// Whether the feature is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [CostManagementConfig].
  /// [enabled] Whether the feature is enabled or not.
  const CostManagementConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory CostManagementConfig.fromMap(Map<String, dynamic> map) {
    return CostManagementConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
