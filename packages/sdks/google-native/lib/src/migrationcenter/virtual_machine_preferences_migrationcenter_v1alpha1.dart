// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences_migrationcenter_v1alpha1.dart';
import 'region_preferences_migrationcenter_v1alpha1.dart';
import 'sole_tenancy_preferences_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_commitment_plan_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_network_cost_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_custom_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_strategy_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_target_product_migrationcenter_v1alpha1.dart';
import 'vmware_engine_preferences_migrationcenter_v1alpha1.dart';

/// VirtualMachinePreferences enables you to create sets of preferences, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1>? commitmentPlan;
  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final pulumi.Input<ComputeEnginePreferencesMigrationcenterV1alpha1>? computeEnginePreferences;
  /// Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  final pulumi.Input<VirtualMachinePreferencesNetworkCostParameters>? networkCostParameters;
  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  final pulumi.Input<RegionPreferencesMigrationcenterV1alpha1>? regionPreferences;
  /// Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  final pulumi.Input<VirtualMachinePreferencesSizingOptimizationCustomParameters>? sizingOptimizationCustomParameters;
  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final pulumi.Input<VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1>? sizingOptimizationStrategy;
  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final pulumi.Input<SoleTenancyPreferencesMigrationcenterV1alpha1>? soleTenancyPreferences;
  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final pulumi.Input<VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1>? targetProduct;
  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final pulumi.Input<VmwareEnginePreferencesMigrationcenterV1alpha1>? vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [networkCostParameters] Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  /// [sizingOptimizationCustomParameters] Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  const VirtualMachinePreferencesMigrationcenterV1alpha1({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.networkCostParameters,
    this.regionPreferences,
    this.sizingOptimizationCustomParameters,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1, String>(commitmentPlan, (value) => value.wireValue),
      'computeEnginePreferences': ?pulumi.Input.mapOptionalInputValue<ComputeEnginePreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(computeEnginePreferences, (value) => value.toMap()),
      'networkCostParameters': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesNetworkCostParameters, Map<String, dynamic>>(networkCostParameters, (value) => value.toMap()),
      'regionPreferences': ?pulumi.Input.mapOptionalInputValue<RegionPreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(regionPreferences, (value) => value.toMap()),
      'sizingOptimizationCustomParameters': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesSizingOptimizationCustomParameters, Map<String, dynamic>>(sizingOptimizationCustomParameters, (value) => value.toMap()),
      'sizingOptimizationStrategy': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1, String>(sizingOptimizationStrategy, (value) => value.wireValue),
      'soleTenancyPreferences': ?pulumi.Input.mapOptionalInputValue<SoleTenancyPreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(soleTenancyPreferences, (value) => value.toMap()),
      'targetProduct': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1, String>(targetProduct, (value) => value.wireValue),
      'vmwareEnginePreferences': ?pulumi.Input.mapOptionalInputValue<VmwareEnginePreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(vmwareEnginePreferences, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesMigrationcenterV1alpha1(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1.fromValue(guardedValue as String)); })(),
      computeEnginePreferences: (() { final guardedValue = map['computeEnginePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeEnginePreferencesMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkCostParameters: (() { final guardedValue = map['networkCostParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesNetworkCostParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regionPreferences: (() { final guardedValue = map['regionPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionPreferencesMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sizingOptimizationCustomParameters: (() { final guardedValue = map['sizingOptimizationCustomParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesSizingOptimizationCustomParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sizingOptimizationStrategy: (() { final guardedValue = map['sizingOptimizationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1.fromValue(guardedValue as String)); })(),
      soleTenancyPreferences: (() { final guardedValue = map['soleTenancyPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoleTenancyPreferencesMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetProduct: (() { final guardedValue = map['targetProduct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1.fromValue(guardedValue as String)); })(),
      vmwareEnginePreferences: (() { final guardedValue = map['vmwareEnginePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareEnginePreferencesMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
