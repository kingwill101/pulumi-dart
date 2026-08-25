// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_maintenance_policy_exclusion_until_end_of_support.dart';

class NodePoolMaintenancePolicy {
  /// When enabled, the node pool will not be automatically upgraded by GKE until the node pool version's end of support date. Structure is documented below.
  final pulumi.Input<List<NodePoolMaintenancePolicyExclusionUntilEndOfSupport>?>? exclusionUntilEndOfSupports;

  /// Creates a new [NodePoolMaintenancePolicy].
  /// [exclusionUntilEndOfSupports] When enabled, the node pool will not be automatically upgraded by GKE until the node pool version's end of support date. Structure is documented below.
  const NodePoolMaintenancePolicy({
    this.exclusionUntilEndOfSupports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionUntilEndOfSupports': ?pulumi.Input.mapOptionalInputValue<List<NodePoolMaintenancePolicyExclusionUntilEndOfSupport>, List<Map<String, dynamic>>>(exclusionUntilEndOfSupports, (value) => pulumi.Input.encodeList<NodePoolMaintenancePolicyExclusionUntilEndOfSupport, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodePoolMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolMaintenancePolicy(
      exclusionUntilEndOfSupports: (() { final guardedValue = map['exclusionUntilEndOfSupports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolMaintenancePolicyExclusionUntilEndOfSupport>(guardedValue, (value) => NodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
