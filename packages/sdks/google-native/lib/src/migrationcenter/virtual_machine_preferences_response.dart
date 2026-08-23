// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences_response.dart';
import 'region_preferences_response.dart';
import 'sole_tenancy_preferences_response.dart';
import 'vmware_engine_preferences_response.dart';

/// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesResponse {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<String> commitmentPlan;
  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final pulumi.Input<ComputeEnginePreferencesResponse> computeEnginePreferences;
  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  final pulumi.Input<RegionPreferencesResponse> regionPreferences;
  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final pulumi.Input<String> sizingOptimizationStrategy;
  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final pulumi.Input<SoleTenancyPreferencesResponse> soleTenancyPreferences;
  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final pulumi.Input<String> targetProduct;
  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final pulumi.Input<VmwareEnginePreferencesResponse> vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesResponse].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  const VirtualMachinePreferencesResponse({
    required this.commitmentPlan,
    required this.computeEnginePreferences,
    required this.regionPreferences,
    required this.sizingOptimizationStrategy,
    required this.soleTenancyPreferences,
    required this.targetProduct,
    required this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': commitmentPlan,
      'computeEnginePreferences': pulumi.Input.mapInputValue<ComputeEnginePreferencesResponse, Map<String, dynamic>>(computeEnginePreferences, (value) => value.toMap()),
      'regionPreferences': pulumi.Input.mapInputValue<RegionPreferencesResponse, Map<String, dynamic>>(regionPreferences, (value) => value.toMap()),
      'sizingOptimizationStrategy': sizingOptimizationStrategy,
      'soleTenancyPreferences': pulumi.Input.mapInputValue<SoleTenancyPreferencesResponse, Map<String, dynamic>>(soleTenancyPreferences, (value) => value.toMap()),
      'targetProduct': targetProduct,
      'vmwareEnginePreferences': pulumi.Input.mapInputValue<VmwareEnginePreferencesResponse, Map<String, dynamic>>(vmwareEnginePreferences, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesResponse(
      commitmentPlan: pulumi.Input.fromValue(map['commitmentPlan'] as String),
      computeEnginePreferences: pulumi.Input.fromValue(ComputeEnginePreferencesResponse.fromMap((map['computeEnginePreferences']! as Map).cast<String, dynamic>())),
      regionPreferences: pulumi.Input.fromValue(RegionPreferencesResponse.fromMap((map['regionPreferences']! as Map).cast<String, dynamic>())),
      sizingOptimizationStrategy: pulumi.Input.fromValue(map['sizingOptimizationStrategy'] as String),
      soleTenancyPreferences: pulumi.Input.fromValue(SoleTenancyPreferencesResponse.fromMap((map['soleTenancyPreferences']! as Map).cast<String, dynamic>())),
      targetProduct: pulumi.Input.fromValue(map['targetProduct'] as String),
      vmwareEnginePreferences: pulumi.Input.fromValue(VmwareEnginePreferencesResponse.fromMap((map['vmwareEnginePreferences']! as Map).cast<String, dynamic>())),
    );
  }
}
