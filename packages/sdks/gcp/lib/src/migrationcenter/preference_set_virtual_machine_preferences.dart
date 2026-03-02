// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences_compute_engine_preferences.dart';
import 'preference_set_virtual_machine_preferences_region_preferences.dart';
import 'preference_set_virtual_machine_preferences_sole_tenancy_preferences.dart';
import 'preference_set_virtual_machine_preferences_vmware_engine_preferences.dart';

class PreferenceSetVirtualMachinePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `COMMITMENT_PLAN_NONE`, `COMMITMENT_PLAN_ONE_YEAR`, `COMMITMENT_PLAN_THREE_YEARS`
  final pulumi.Input<String>? commitmentPlan;
  /// The user preferences relating to Compute Engine target platform.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferencesComputeEnginePreferences>? computeEnginePreferences;
  /// The user preferences relating to target regions.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferencesRegionPreferences>? regionPreferences;
  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with. Possible values: `SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED`, `SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE`, `SIZING_OPTIMIZATION_STRATEGY_MODERATE`, `SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE`
  final pulumi.Input<String>? sizingOptimizationStrategy;
  /// Preferences concerning Sole Tenancy nodes and VMs.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences>? soleTenancyPreferences;
  /// Target product for assets using this preference set. Specify either target product or business goal, but not both. Possible values: `COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED`, `COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY`
  final pulumi.Input<String>? targetProduct;
  /// The user preferences relating to Google Cloud VMware Engine target platform.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences>? vmwareEnginePreferences;

  /// Creates a new [PreferenceSetVirtualMachinePreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `COMMITMENT_PLAN_NONE`, `COMMITMENT_PLAN_ONE_YEAR`, `COMMITMENT_PLAN_THREE_YEARS`
  /// [computeEnginePreferences] The user preferences relating to Compute Engine target platform.
  /// [regionPreferences] The user preferences relating to target regions.
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with. Possible values: `SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED`, `SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE`, `SIZING_OPTIMIZATION_STRATEGY_MODERATE`, `SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE`
  /// [soleTenancyPreferences] Preferences concerning Sole Tenancy nodes and VMs.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both. Possible values: `COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED`, `COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY`
  /// [vmwareEnginePreferences] The user preferences relating to Google Cloud VMware Engine target platform.
  PreferenceSetVirtualMachinePreferences({
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
      'computeEnginePreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferencesComputeEnginePreferences, Map<String, dynamic>>(computeEnginePreferences, (value) => value.toMap()),
      'regionPreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferencesRegionPreferences, Map<String, dynamic>>(regionPreferences, (value) => value.toMap()),
      'sizingOptimizationStrategy': ?sizingOptimizationStrategy,
      'soleTenancyPreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences, Map<String, dynamic>>(soleTenancyPreferences, (value) => value.toMap()),
      'targetProduct': ?targetProduct,
      'vmwareEnginePreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences, Map<String, dynamic>>(vmwareEnginePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetVirtualMachinePreferences.fromMap(Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferences(
      commitmentPlan: map['commitmentPlan'] == null ? null : (map['commitmentPlan']! as String).input(),
      computeEnginePreferences: map['computeEnginePreferences'] == null ? null : (PreferenceSetVirtualMachinePreferencesComputeEnginePreferences.fromMap((map['computeEnginePreferences']! as Map).cast<String, dynamic>())).input(),
      regionPreferences: map['regionPreferences'] == null ? null : (PreferenceSetVirtualMachinePreferencesRegionPreferences.fromMap((map['regionPreferences']! as Map).cast<String, dynamic>())).input(),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] == null ? null : (map['sizingOptimizationStrategy']! as String).input(),
      soleTenancyPreferences: map['soleTenancyPreferences'] == null ? null : (PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences.fromMap((map['soleTenancyPreferences']! as Map).cast<String, dynamic>())).input(),
      targetProduct: map['targetProduct'] == null ? null : (map['targetProduct']! as String).input(),
      vmwareEnginePreferences: map['vmwareEnginePreferences'] == null ? null : (PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences.fromMap((map['vmwareEnginePreferences']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

