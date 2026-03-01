// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_response.dart';
import 'region_preferences_response.dart';
import 'sole_tenancy_preferences_response.dart';
import 'vmware_engine_preferences_response.dart';

/// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesResponse {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final String commitmentPlan;
  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final ComputeEnginePreferencesResponse computeEnginePreferences;
  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  final RegionPreferencesResponse regionPreferences;
  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final String sizingOptimizationStrategy;
  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final SoleTenancyPreferencesResponse soleTenancyPreferences;
  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final String targetProduct;
  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final VmwareEnginePreferencesResponse vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesResponse].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  VirtualMachinePreferencesResponse({
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
      'computeEnginePreferences': computeEnginePreferences.toMap(),
      'regionPreferences': regionPreferences.toMap(),
      'sizingOptimizationStrategy': sizingOptimizationStrategy,
      'soleTenancyPreferences': soleTenancyPreferences.toMap(),
      'targetProduct': targetProduct,
      'vmwareEnginePreferences': vmwareEnginePreferences.toMap(),
    };
  }

  factory VirtualMachinePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesResponse(
      commitmentPlan: map['commitmentPlan'] as String,
      computeEnginePreferences: ComputeEnginePreferencesResponse.fromMap((map['computeEnginePreferences'] as Map).cast<String, dynamic>()),
      regionPreferences: RegionPreferencesResponse.fromMap((map['regionPreferences'] as Map).cast<String, dynamic>()),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] as String,
      soleTenancyPreferences: SoleTenancyPreferencesResponse.fromMap((map['soleTenancyPreferences'] as Map).cast<String, dynamic>()),
      targetProduct: map['targetProduct'] as String,
      vmwareEnginePreferences: VmwareEnginePreferencesResponse.fromMap((map['vmwareEnginePreferences'] as Map).cast<String, dynamic>()),
    );
  }
}

