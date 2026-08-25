// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_maintenance_exclusion.dart';
import 'cluster_maintenance_policy_window.dart';

class ClusterMaintenancePolicy {
  /// Exclusions to automatic maintenance. Non-emergency maintenance should not occur
  /// in these windows. Each exclusion has a unique name and may be active or expired.
  /// The max number of maintenance exclusions allowed at a given time is 3.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterMaintenancePolicyMaintenanceExclusion>?>? maintenanceExclusions;
  /// Specifies the maintenance window in which maintenance may be performed.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyWindow> window;

  /// Creates a new [ClusterMaintenancePolicy].
  /// [maintenanceExclusions] Exclusions to automatic maintenance. Non-emergency maintenance should not occur
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  const ClusterMaintenancePolicy({
    this.maintenanceExclusions,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceExclusions': ?pulumi.Input.mapOptionalInputValue<List<ClusterMaintenancePolicyMaintenanceExclusion>, List<Map<String, dynamic>>>(maintenanceExclusions, (value) => pulumi.Input.encodeList<ClusterMaintenancePolicyMaintenanceExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'window': pulumi.Input.mapInputValue<ClusterMaintenancePolicyWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicy(
      maintenanceExclusions: (() { final guardedValue = map['maintenanceExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMaintenancePolicyMaintenanceExclusion>(guardedValue, (value) => ClusterMaintenancePolicyMaintenanceExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      window: pulumi.Input.fromValue(ClusterMaintenancePolicyWindow.fromMap((map['window']! as Map).cast<String, dynamic>())),
    );
  }
}
