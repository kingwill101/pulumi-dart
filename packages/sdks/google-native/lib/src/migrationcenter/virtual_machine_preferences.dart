// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences.dart';
import 'region_preferences.dart';
import 'sole_tenancy_preferences.dart';
import 'virtual_machine_preferences_commitment_plan.dart';
import 'virtual_machine_preferences_sizing_optimization_strategy.dart';
import 'virtual_machine_preferences_target_product.dart';
import 'vmware_engine_preferences.dart';

/// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<VirtualMachinePreferencesCommitmentPlan>? commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final pulumi.Input<ComputeEnginePreferences>? computeEnginePreferences;

  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  final pulumi.Input<RegionPreferences>? regionPreferences;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final pulumi.Input<VirtualMachinePreferencesSizingOptimizationStrategy>?
  sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final pulumi.Input<SoleTenancyPreferences>? soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final pulumi.Input<VirtualMachinePreferencesTargetProduct>? targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final pulumi.Input<VmwareEnginePreferences>? vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  VirtualMachinePreferences({
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
      'commitmentPlan':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePreferencesCommitmentPlan,
            String
          >(commitmentPlan, (value) => value.wireValue),
      'computeEnginePreferences':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeEnginePreferences,
            Map<String, dynamic>
          >(computeEnginePreferences, (value) => value.toMap()),
      'regionPreferences':
          ?pulumi.Input.mapOptionalInputValue<
            RegionPreferences,
            Map<String, dynamic>
          >(regionPreferences, (value) => value.toMap()),
      'sizingOptimizationStrategy':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePreferencesSizingOptimizationStrategy,
            String
          >(sizingOptimizationStrategy, (value) => value.wireValue),
      'soleTenancyPreferences':
          ?pulumi.Input.mapOptionalInputValue<
            SoleTenancyPreferences,
            Map<String, dynamic>
          >(soleTenancyPreferences, (value) => value.toMap()),
      'targetProduct':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePreferencesTargetProduct,
            String
          >(targetProduct, (value) => value.wireValue),
      'vmwareEnginePreferences':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareEnginePreferences,
            Map<String, dynamic>
          >(vmwareEnginePreferences, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePreferences.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferences(
      commitmentPlan: (() {
        final guardedValue = map['commitmentPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePreferencesCommitmentPlan.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      computeEnginePreferences: (() {
        final guardedValue = map['computeEnginePreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeEnginePreferences.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      regionPreferences: (() {
        final guardedValue = map['regionPreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegionPreferences.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sizingOptimizationStrategy: (() {
        final guardedValue = map['sizingOptimizationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePreferencesSizingOptimizationStrategy.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      soleTenancyPreferences: (() {
        final guardedValue = map['soleTenancyPreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoleTenancyPreferences.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetProduct: (() {
        final guardedValue = map['targetProduct'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePreferencesTargetProduct.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      vmwareEnginePreferences: (() {
        final guardedValue = map['vmwareEnginePreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VmwareEnginePreferences.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
