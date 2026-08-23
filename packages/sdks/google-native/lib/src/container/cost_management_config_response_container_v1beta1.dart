// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for fine-grained cost management feature.
class CostManagementConfigResponseContainerV1beta1 {
  /// Whether the feature is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [CostManagementConfigResponseContainerV1beta1].
  /// [enabled] Whether the feature is enabled or not.
  const CostManagementConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory CostManagementConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CostManagementConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
