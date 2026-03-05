// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_maintenance_exclusion_window.dart';

class ClusterMaintenancePolicyMaintenanceExclusion {
  /// A unique (per cluster) id for the window.
  final pulumi.Input<String>? id;
  /// Represents an arbitrary window of time.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyMaintenanceExclusionWindow>? window;

  /// Creates a new [ClusterMaintenancePolicyMaintenanceExclusion].
  /// [id] A unique (per cluster) id for the window.
  /// [window] Represents an arbitrary window of time.
  ClusterMaintenancePolicyMaintenanceExclusion({
    this.id,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'window': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyMaintenanceExclusionWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicyMaintenanceExclusion.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyMaintenanceExclusion(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyMaintenanceExclusionWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

