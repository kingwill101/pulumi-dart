// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences_response_migrationcenter_v1alpha1.dart';
import 'region_preferences_response_migrationcenter_v1alpha1.dart';
import 'sole_tenancy_preferences_response_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_network_cost_parameters_response.dart';
import 'virtual_machine_preferences_sizing_optimization_custom_parameters_response.dart';
import 'vmware_engine_preferences_response_migrationcenter_v1alpha1.dart';

/// VirtualMachinePreferences enables you to create sets of preferences, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesResponseMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<String> commitmentPlan;
  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final pulumi.Input<ComputeEnginePreferencesResponseMigrationcenterV1alpha1> computeEnginePreferences;
  /// Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  final pulumi.Input<VirtualMachinePreferencesNetworkCostParametersResponse> networkCostParameters;
  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  final pulumi.Input<RegionPreferencesResponseMigrationcenterV1alpha1> regionPreferences;
  /// Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  final pulumi.Input<VirtualMachinePreferencesSizingOptimizationCustomParametersResponse> sizingOptimizationCustomParameters;
  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final pulumi.Input<String> sizingOptimizationStrategy;
  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final pulumi.Input<SoleTenancyPreferencesResponseMigrationcenterV1alpha1> soleTenancyPreferences;
  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final pulumi.Input<String> targetProduct;
  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final pulumi.Input<VmwareEnginePreferencesResponseMigrationcenterV1alpha1> vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesResponseMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [networkCostParameters] Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  /// [sizingOptimizationCustomParameters] Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  const VirtualMachinePreferencesResponseMigrationcenterV1alpha1({
    required this.commitmentPlan,
    required this.computeEnginePreferences,
    required this.networkCostParameters,
    required this.regionPreferences,
    required this.sizingOptimizationCustomParameters,
    required this.sizingOptimizationStrategy,
    required this.soleTenancyPreferences,
    required this.targetProduct,
    required this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': commitmentPlan,
      'computeEnginePreferences': pulumi.Input.mapInputValue<ComputeEnginePreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(computeEnginePreferences, (value) => value.toMap()),
      'networkCostParameters': pulumi.Input.mapInputValue<VirtualMachinePreferencesNetworkCostParametersResponse, Map<String, dynamic>>(networkCostParameters, (value) => value.toMap()),
      'regionPreferences': pulumi.Input.mapInputValue<RegionPreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(regionPreferences, (value) => value.toMap()),
      'sizingOptimizationCustomParameters': pulumi.Input.mapInputValue<VirtualMachinePreferencesSizingOptimizationCustomParametersResponse, Map<String, dynamic>>(sizingOptimizationCustomParameters, (value) => value.toMap()),
      'sizingOptimizationStrategy': sizingOptimizationStrategy,
      'soleTenancyPreferences': pulumi.Input.mapInputValue<SoleTenancyPreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(soleTenancyPreferences, (value) => value.toMap()),
      'targetProduct': targetProduct,
      'vmwareEnginePreferences': pulumi.Input.mapInputValue<VmwareEnginePreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(vmwareEnginePreferences, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesResponseMigrationcenterV1alpha1(
      commitmentPlan: pulumi.Input.fromValue(map['commitmentPlan'] as String),
      computeEnginePreferences: pulumi.Input.fromValue(ComputeEnginePreferencesResponseMigrationcenterV1alpha1.fromMap((map['computeEnginePreferences']! as Map).cast<String, dynamic>())),
      networkCostParameters: pulumi.Input.fromValue(VirtualMachinePreferencesNetworkCostParametersResponse.fromMap((map['networkCostParameters']! as Map).cast<String, dynamic>())),
      regionPreferences: pulumi.Input.fromValue(RegionPreferencesResponseMigrationcenterV1alpha1.fromMap((map['regionPreferences']! as Map).cast<String, dynamic>())),
      sizingOptimizationCustomParameters: pulumi.Input.fromValue(VirtualMachinePreferencesSizingOptimizationCustomParametersResponse.fromMap((map['sizingOptimizationCustomParameters']! as Map).cast<String, dynamic>())),
      sizingOptimizationStrategy: pulumi.Input.fromValue(map['sizingOptimizationStrategy'] as String),
      soleTenancyPreferences: pulumi.Input.fromValue(SoleTenancyPreferencesResponseMigrationcenterV1alpha1.fromMap((map['soleTenancyPreferences']! as Map).cast<String, dynamic>())),
      targetProduct: pulumi.Input.fromValue(map['targetProduct'] as String),
      vmwareEnginePreferences: pulumi.Input.fromValue(VmwareEnginePreferencesResponseMigrationcenterV1alpha1.fromMap((map['vmwareEnginePreferences']! as Map).cast<String, dynamic>())),
    );
  }
}

