// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options_scope.dart';

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptions {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final pulumi.Input<MaintenanceExclusionOptionsScope>? scope;

  /// Creates a new [MaintenanceExclusionOptions].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  const MaintenanceExclusionOptions({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?pulumi.Input.mapOptionalInputValue<MaintenanceExclusionOptionsScope, String>(scope, (value) => value.wireValue),
    };
  }

  factory MaintenanceExclusionOptions.fromMap(Map<String, dynamic> map) {
    return MaintenanceExclusionOptions(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceExclusionOptionsScope.fromValue(guardedValue as String)); })(),
    );
  }
}

