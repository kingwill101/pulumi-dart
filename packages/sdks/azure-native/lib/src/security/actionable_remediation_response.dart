// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category_configuration_response.dart';
import 'target_branch_configuration_response.dart';

/// Configuration payload for PR Annotations.
class ActionableRemediationResponse {
  /// Repository branch configuration for PR Annotations.
  final pulumi.Input<TargetBranchConfigurationResponse>? branchConfiguration;
  /// Gets or sets list of categories and severity levels.
  final pulumi.Input<List<CategoryConfigurationResponse>>? categoryConfigurations;
  /// Update Settings.
  ///
  /// Enabled - Resource should inherit configurations from parent.
  /// Disabled - Resource should not inherit configurations from parent.
  final pulumi.Input<String>? inheritFromParentState;
  /// ActionableRemediation Setting.
  /// None - the setting was never set.
  /// Enabled - ActionableRemediation is enabled.
  /// Disabled - ActionableRemediation is disabled.
  final pulumi.Input<String>? state;

  /// Creates a new [ActionableRemediationResponse].
  /// [branchConfiguration] Repository branch configuration for PR Annotations.
  /// [categoryConfigurations] Gets or sets list of categories and severity levels.
  /// [inheritFromParentState] Update Settings.
  /// [state] ActionableRemediation Setting.
  ActionableRemediationResponse({
    this.branchConfiguration,
    this.categoryConfigurations,
    this.inheritFromParentState,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchConfiguration': ?pulumi.Input.mapOptionalInputValue<TargetBranchConfigurationResponse, Map<String, dynamic>>(branchConfiguration, (value) => value.toMap()),
      'categoryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CategoryConfigurationResponse>, List<Map<String, dynamic>>>(categoryConfigurations, (value) => pulumi.Input.encodeList<CategoryConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inheritFromParentState': ?inheritFromParentState,
      'state': ?state,
    };
  }

  factory ActionableRemediationResponse.fromMap(Map<String, dynamic> map) {
    return ActionableRemediationResponse(
      branchConfiguration: map['branchConfiguration'] == null ? null : (TargetBranchConfigurationResponse.fromMap((map['branchConfiguration'] as Map).cast<String, dynamic>())).input(),
      categoryConfigurations: map['categoryConfigurations'] == null ? null : (pulumi.Input.decodeList<CategoryConfigurationResponse>(map['categoryConfigurations'], (value) => CategoryConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inheritFromParentState: map['inheritFromParentState'] == null ? null : (map['inheritFromParentState'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

