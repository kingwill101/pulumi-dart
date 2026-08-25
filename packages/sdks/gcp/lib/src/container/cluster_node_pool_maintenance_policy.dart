// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_maintenance_policy_exclusion_until_end_of_support.dart';

class ClusterNodePoolMaintenancePolicy {
  /// Maintenance exclusion until the end of support.
  final pulumi.Input<List<ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>?>? exclusionUntilEndOfSupports;

  /// Creates a new [ClusterNodePoolMaintenancePolicy].
  /// [exclusionUntilEndOfSupports] Maintenance exclusion until the end of support.
  const ClusterNodePoolMaintenancePolicy({
    this.exclusionUntilEndOfSupports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionUntilEndOfSupports': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>, List<Map<String, dynamic>>>(exclusionUntilEndOfSupports, (value) => pulumi.Input.encodeList<ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterNodePoolMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolMaintenancePolicy(
      exclusionUntilEndOfSupports: (() { final guardedValue = map['exclusionUntilEndOfSupports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>(guardedValue, (value) => ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
