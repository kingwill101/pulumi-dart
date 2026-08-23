// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options_scope_container_v1beta1.dart';

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsContainerV1beta1 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final pulumi.Input<MaintenanceExclusionOptionsScopeContainerV1beta1>? scope;

  /// Creates a new [MaintenanceExclusionOptionsContainerV1beta1].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  const MaintenanceExclusionOptionsContainerV1beta1({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?pulumi.Input.mapOptionalInputValue<MaintenanceExclusionOptionsScopeContainerV1beta1, String>(scope, (value) => value.wireValue),
    };
  }

  factory MaintenanceExclusionOptionsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceExclusionOptionsContainerV1beta1(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceExclusionOptionsScopeContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
