// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_machine_preference_compute_engine_preference.dart';
import 'report_summary_group_finding_preference_set_finding_machine_preference_region_preference.dart';
import 'report_summary_group_finding_preference_set_finding_machine_preference_sole_tenancy_preference.dart';
import 'report_summary_group_finding_preference_set_finding_machine_preference_vmware_engine_preference.dart';

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreference {
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
  /// The user preferences relating to Compute Engine target platform.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference>>? computeEnginePreferences;
  /// (Output)
  /// The user preferences relating to target regions.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference>>? regionPreferences;
  /// (Output)
  /// Possible values:
  /// SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
  /// SIZING_OPTIMIZATION_STRATEGY_MODERATE
  /// SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE
  final pulumi.Input<String>? sizingOptimizationStrategy;
  /// (Output)
  /// Preferences concerning Sole Tenancy nodes and VMs.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference>>? soleTenancyPreferences;
  /// (Output)
  /// Possible values:
  /// COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
  /// COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE
  /// COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY
  final pulumi.Input<String>? targetProduct;
  /// (Output)
  /// The user preferences relating to Google Cloud VMware Engine target platform.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceVmwareEnginePreference>>? vmwareEnginePreferences;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreference].
  /// [commitmentPlan] (Output)
  /// [computeEnginePreferences] (Output)
  /// [regionPreferences] (Output)
  /// [sizingOptimizationStrategy] (Output)
  /// [soleTenancyPreferences] (Output)
  /// [targetProduct] (Output)
  /// [vmwareEnginePreferences] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreference({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.regionPreferences,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan,
      'computeEnginePreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference>, List<Map<String, dynamic>>>(computeEnginePreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionPreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference>, List<Map<String, dynamic>>>(regionPreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sizingOptimizationStrategy': ?sizingOptimizationStrategy,
      'soleTenancyPreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference>, List<Map<String, dynamic>>>(soleTenancyPreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetProduct': ?targetProduct,
      'vmwareEnginePreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceVmwareEnginePreference>, List<Map<String, dynamic>>>(vmwareEnginePreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceVmwareEnginePreference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreference.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreference(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeEnginePreferences: (() { final guardedValue = map['computeEnginePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regionPreferences: (() { final guardedValue = map['regionPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sizingOptimizationStrategy: (() { final guardedValue = map['sizingOptimizationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      soleTenancyPreferences: (() { final guardedValue = map['soleTenancyPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetProduct: (() { final guardedValue = map['targetProduct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareEnginePreferences: (() { final guardedValue = map['vmwareEnginePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceVmwareEnginePreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceVmwareEnginePreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
