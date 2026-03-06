// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_change_response_deny_settings_change.dart';
import 'deployment_stacks_what_if_change_response_deployment_scope_change.dart';
import 'deployment_stacks_what_if_resource_change_response.dart';

/// Changes predicted to the deployment stack as a result of the what-if operation.
class DeploymentStacksWhatIfChangeResponse {
  /// Predicted changes to the deployment stack deny settings.
  final pulumi.Input<DeploymentStacksWhatIfChangeResponseDenySettingsChange> denySettingsChange;
  /// Predicted changes to the deployment scope for the deployment stack.
  final pulumi.Input<DeploymentStacksWhatIfChangeResponseDeploymentScopeChange>? deploymentScopeChange;
  /// List of resource changes predicted by What-If operation.
  final pulumi.Input<List<DeploymentStacksWhatIfResourceChangeResponse>> resourceChanges;

  /// Creates a new [DeploymentStacksWhatIfChangeResponse].
  /// [denySettingsChange] Predicted changes to the deployment stack deny settings.
  /// [deploymentScopeChange] Predicted changes to the deployment scope for the deployment stack.
  /// [resourceChanges] List of resource changes predicted by What-If operation.
  const DeploymentStacksWhatIfChangeResponse({
    required this.denySettingsChange,
    this.deploymentScopeChange,
    required this.resourceChanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denySettingsChange': pulumi.Input.mapInputValue<DeploymentStacksWhatIfChangeResponseDenySettingsChange, Map<String, dynamic>>(denySettingsChange, (value) => value.toMap()),
      'deploymentScopeChange': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfChangeResponseDeploymentScopeChange, Map<String, dynamic>>(deploymentScopeChange, (value) => value.toMap()),
      'resourceChanges': pulumi.Input.mapInputValue<List<DeploymentStacksWhatIfResourceChangeResponse>, List<Map<String, dynamic>>>(resourceChanges, (value) => pulumi.Input.encodeList<DeploymentStacksWhatIfResourceChangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentStacksWhatIfChangeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfChangeResponse(
      denySettingsChange: pulumi.Input.fromValue(DeploymentStacksWhatIfChangeResponseDenySettingsChange.fromMap((map['denySettingsChange']! as Map).cast<String, dynamic>())),
      deploymentScopeChange: (() { final guardedValue = map['deploymentScopeChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksWhatIfChangeResponseDeploymentScopeChange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceChanges: pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentStacksWhatIfResourceChangeResponse>(map['resourceChanges']!, (value) => DeploymentStacksWhatIfResourceChangeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

