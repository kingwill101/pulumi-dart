// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_change_response_deny_settings_change.dart';
import 'deployment_stacks_what_if_change_response_deployment_scope_change.dart';
import 'deployment_stacks_what_if_resource_change_response.dart';

/// Changes predicted to the deployment stack as a result of the what-if operation.
class DeploymentStacksWhatIfChangeResponse {
  /// Predicted changes to the deployment stack deny settings.
  final DeploymentStacksWhatIfChangeResponseDenySettingsChange denySettingsChange;
  /// Predicted changes to the deployment scope for the deployment stack.
  final DeploymentStacksWhatIfChangeResponseDeploymentScopeChange? deploymentScopeChange;
  /// List of resource changes predicted by What-If operation.
  final List<DeploymentStacksWhatIfResourceChangeResponse> resourceChanges;

  /// Creates a new [DeploymentStacksWhatIfChangeResponse].
  /// [denySettingsChange] Predicted changes to the deployment stack deny settings.
  /// [deploymentScopeChange] Predicted changes to the deployment scope for the deployment stack.
  /// [resourceChanges] List of resource changes predicted by What-If operation.
  DeploymentStacksWhatIfChangeResponse({
    required this.denySettingsChange,
    this.deploymentScopeChange,
    required this.resourceChanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denySettingsChange': denySettingsChange.toMap(),
      'deploymentScopeChange': ?deploymentScopeChange == null ? null : deploymentScopeChange!.toMap(),
      'resourceChanges': pulumi.Input.encodeList<DeploymentStacksWhatIfResourceChangeResponse, Map<String, dynamic>>(resourceChanges, (value) => value.toMap()),
    };
  }

  factory DeploymentStacksWhatIfChangeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfChangeResponse(
      denySettingsChange: DeploymentStacksWhatIfChangeResponseDenySettingsChange.fromMap((map['denySettingsChange'] as Map).cast<String, dynamic>()),
      deploymentScopeChange: map['deploymentScopeChange'] == null ? null : DeploymentStacksWhatIfChangeResponseDeploymentScopeChange.fromMap((map['deploymentScopeChange'] as Map).cast<String, dynamic>()),
      resourceChanges: pulumi.Input.decodeList<DeploymentStacksWhatIfResourceChangeResponse>(map['resourceChanges'], (value) => DeploymentStacksWhatIfResourceChangeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

