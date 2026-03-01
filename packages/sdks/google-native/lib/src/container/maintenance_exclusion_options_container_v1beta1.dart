// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_scope_container_v1beta1.dart';

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsContainerV1beta1 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final MaintenanceExclusionOptionsScopeContainerV1beta1? scope;

  /// Creates a new [MaintenanceExclusionOptionsContainerV1beta1].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  MaintenanceExclusionOptionsContainerV1beta1({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope == null ? null : scope!.value,
    };
  }

  factory MaintenanceExclusionOptionsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceExclusionOptionsContainerV1beta1(
      scope: map['scope'] == null ? null : MaintenanceExclusionOptionsScopeContainerV1beta1.fromValue(map['scope'] as String),
    );
  }
}

