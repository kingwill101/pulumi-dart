// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for fine-grained cost management feature.
class CostManagementConfigContainerV1beta1 {
  /// Whether the feature is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [CostManagementConfigContainerV1beta1].
  /// [enabled] Whether the feature is enabled or not.
  CostManagementConfigContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory CostManagementConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CostManagementConfigContainerV1beta1(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
