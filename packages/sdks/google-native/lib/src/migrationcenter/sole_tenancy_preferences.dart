// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenancy_preferences_commitment_plan.dart';
import 'sole_tenancy_preferences_host_maintenance_policy.dart';
import 'sole_tenant_node_type.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<SoleTenancyPreferencesCommitmentPlan>? commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final pulumi.Input<double>? cpuOvercommitRatio;
  /// Sole Tenancy nodes maintenance policy.
  final pulumi.Input<SoleTenancyPreferencesHostMaintenancePolicy>? hostMaintenancePolicy;
  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final pulumi.Input<List<SoleTenantNodeType>>? nodeTypes;

  /// Creates a new [SoleTenancyPreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy.
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  const SoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?pulumi.Input.mapOptionalInputValue<SoleTenancyPreferencesCommitmentPlan, String>(commitmentPlan, (value) => value.wireValue),
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<SoleTenancyPreferencesHostMaintenancePolicy, String>(hostMaintenancePolicy, (value) => value.wireValue),
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<SoleTenantNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<SoleTenantNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenancyPreferences.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferences(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoleTenancyPreferencesCommitmentPlan.fromValue(guardedValue as String)); })(),
      cpuOvercommitRatio: (() { final guardedValue = map['cpuOvercommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoleTenancyPreferencesHostMaintenancePolicy.fromValue(guardedValue as String)); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoleTenantNodeType>(guardedValue, (value) => SoleTenantNodeType.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
