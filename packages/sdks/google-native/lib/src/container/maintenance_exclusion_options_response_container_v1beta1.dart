// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsResponseContainerV1beta1 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final pulumi.Input<String> scope;

  /// Creates a new [MaintenanceExclusionOptionsResponseContainerV1beta1].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  MaintenanceExclusionOptionsResponseContainerV1beta1({required this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scope': scope};
  }

  factory MaintenanceExclusionOptionsResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MaintenanceExclusionOptionsResponseContainerV1beta1(
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
