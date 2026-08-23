// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for fine-grained cost management feature.
class CostManagementConfigResponse {
  /// Whether the feature is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [CostManagementConfigResponse].
  /// [enabled] Whether the feature is enabled or not.
  const CostManagementConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory CostManagementConfigResponse.fromMap(Map<String, dynamic> map) {
    return CostManagementConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
