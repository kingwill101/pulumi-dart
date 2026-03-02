// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenancy_preferences_commitment_plan_migrationcenter_v1alpha1.dart';
import 'sole_tenancy_preferences_host_maintenance_policy_migrationcenter_v1alpha1.dart';
import 'sole_tenant_node_type_migrationcenter_v1alpha1.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferencesMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1>? commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final pulumi.Input<double>? cpuOvercommitRatio;
  /// Sole Tenancy nodes maintenance policy.
  final pulumi.Input<SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1>? hostMaintenancePolicy;
  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final pulumi.Input<List<SoleTenantNodeTypeMigrationcenterV1alpha1>>? nodeTypes;

  /// Creates a new [SoleTenancyPreferencesMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy.
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  SoleTenancyPreferencesMigrationcenterV1alpha1({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?pulumi.Input.mapOptionalInputValue<SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1, String>(commitmentPlan, (value) => value.value),
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1, String>(hostMaintenancePolicy, (value) => value.value),
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<SoleTenantNodeTypeMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<SoleTenantNodeTypeMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenancyPreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferencesMigrationcenterV1alpha1(
      commitmentPlan: map['commitmentPlan'] == null ? null : (SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1.fromValue(map['commitmentPlan']! as String)).input(),
      cpuOvercommitRatio: map['cpuOvercommitRatio'] == null ? null : (map['cpuOvercommitRatio']! as double).input(),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null ? null : (SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1.fromValue(map['hostMaintenancePolicy']! as String)).input(),
      nodeTypes: map['nodeTypes'] == null ? null : (pulumi.Input.decodeList<SoleTenantNodeTypeMigrationcenterV1alpha1>(map['nodeTypes']!, (value) => SoleTenantNodeTypeMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

