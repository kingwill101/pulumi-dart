// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences_sole_tenancy_preferences_node_type.dart';

class PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR`, `COMMITMENT_3_YEAR`
  final pulumi.Input<String>? commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final pulumi.Input<double>? cpuOvercommitRatio;
  /// Sole Tenancy nodes maintenance policy. Possible values: `HOST_MAINTENANCE_POLICY_UNSPECIFIED`, `HOST_MAINTENANCE_POLICY_DEFAULT`, `HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE`, `HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP`
  final pulumi.Input<String>? hostMaintenancePolicy;
  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  /// Structure is documented below.
  final pulumi.Input<List<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType>>? nodeTypes;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR`, `COMMITMENT_3_YEAR`
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy. Possible values: `HOST_MAINTENANCE_POLICY_UNSPECIFIED`, `HOST_MAINTENANCE_POLICY_DEFAULT`, `HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE`, `HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP`
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan,
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'hostMaintenancePolicy': ?hostMaintenancePolicy,
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences.fromMap(Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuOvercommitRatio: (() { final guardedValue = map['cpuOvercommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType>(guardedValue, (value) => PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

