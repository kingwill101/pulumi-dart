// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_maintenance_policy_exclusion_until_end_of_support.dart';

class GetClusterNodePoolMaintenancePolicy {
  /// Maintenance exclusion until the end of support.
  final pulumi.Input<List<GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>> exclusionUntilEndOfSupports;

  /// Creates a new [GetClusterNodePoolMaintenancePolicy].
  /// [exclusionUntilEndOfSupports] Maintenance exclusion until the end of support.
  const GetClusterNodePoolMaintenancePolicy({
    required this.exclusionUntilEndOfSupports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionUntilEndOfSupports': pulumi.Input.mapInputValue<List<GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>, List<Map<String, dynamic>>>(exclusionUntilEndOfSupports, (value) => pulumi.Input.encodeList<GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolMaintenancePolicy(
      exclusionUntilEndOfSupports: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport>(map['exclusionUntilEndOfSupports']!, (value) => GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
