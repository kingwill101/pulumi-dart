// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_machine_preference_sole_tenancy_preference_node_type.dart';

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference {
  /// (Output)
  /// Commitment plan to consider when calculating costs for virtual machine
  /// insights and recommendations.
  /// If you are unsure which value to set, a 3 year commitment plan is often a
  /// good value to start with.
  /// Possible values:
  /// ON_DEMAND
  /// COMMITMENT_1_YEAR_MONTHLY_PAYMENTS
  /// COMMITMENT_3_YEAR_MONTHLY_PAYMENTS
  /// COMMITMENT_1_YEAR_UPFRONT_PAYMENT
  /// COMMITMENT_3_YEAR_UPFRONT_PAYMENT
  final pulumi.Input<String>? commitmentPlan;
  /// (Output)
  /// CPU overcommit ratio.
  /// Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  final pulumi.Input<double>? cpuOvercommitRatio;
  /// (Output)
  /// Sole Tenancy nodes maintenance policy.
  /// Possible values:
  /// HOST_MAINTENANCE_POLICY_DEFAULT
  /// HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE
  /// HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP
  final pulumi.Input<String>? hostMaintenancePolicy;
  /// (Output)
  /// A list of sole tenant node types.
  /// An empty list means that all possible node types will be considered.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType>>? nodeTypes;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference].
  /// [commitmentPlan] (Output)
  /// [cpuOvercommitRatio] (Output)
  /// [hostMaintenancePolicy] (Output)
  /// [nodeTypes] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference({
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
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuOvercommitRatio: (() { final guardedValue = map['cpuOvercommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
