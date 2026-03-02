// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenant_node_type_response_migrationcenter_v1alpha1.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferencesResponseMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<String> commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final pulumi.Input<double> cpuOvercommitRatio;
  /// Sole Tenancy nodes maintenance policy.
  final pulumi.Input<String> hostMaintenancePolicy;
  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final pulumi.Input<List<SoleTenantNodeTypeResponseMigrationcenterV1alpha1>> nodeTypes;

  /// Creates a new [SoleTenancyPreferencesResponseMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy.
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  SoleTenancyPreferencesResponseMigrationcenterV1alpha1({
    required this.commitmentPlan,
    required this.cpuOvercommitRatio,
    required this.hostMaintenancePolicy,
    required this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': commitmentPlan,
      'cpuOvercommitRatio': cpuOvercommitRatio,
      'hostMaintenancePolicy': hostMaintenancePolicy,
      'nodeTypes': pulumi.Input.mapInputValue<List<SoleTenantNodeTypeResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<SoleTenantNodeTypeResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenancyPreferencesResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferencesResponseMigrationcenterV1alpha1(
      commitmentPlan: (map['commitmentPlan'] as String).input(),
      cpuOvercommitRatio: (map['cpuOvercommitRatio'] as double).input(),
      hostMaintenancePolicy: (map['hostMaintenancePolicy'] as String).input(),
      nodeTypes: (pulumi.Input.decodeList<SoleTenantNodeTypeResponseMigrationcenterV1alpha1>(map['nodeTypes'], (value) => SoleTenantNodeTypeResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

