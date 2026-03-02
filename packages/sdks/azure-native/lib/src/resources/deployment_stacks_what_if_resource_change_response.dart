// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_extension_response.dart';
import 'deployment_stacks_what_if_resource_change_response_deny_status_change.dart';
import 'deployment_stacks_what_if_resource_change_response_management_status_change.dart';
import 'deployment_stacks_what_if_resource_change_response_resource_configuration_changes.dart';

/// Information about a single resource change predicted by What-If operation.
class DeploymentStacksWhatIfResourceChangeResponse {
  /// The API version the resource was deployed with
  final pulumi.Input<String> apiVersion;
  /// The confidence level of the predicted change.
  final pulumi.Input<String> changeCertainty;
  /// Type of change that will be made to the resource when the deployment is executed.
  final pulumi.Input<String> changeType;
  /// The predicted changes to the deployment stack deny status of the resource.
  final pulumi.Input<DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange>? denyStatusChange;
  /// The resource id of the Deployment responsible for this change.
  final pulumi.Input<String>? deploymentId;
  /// The extension the resource was deployed with.
  final pulumi.Input<DeploymentExtensionResponse> extension;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final pulumi.Input<String> id;
  /// The extensible resource identifiers.
  final pulumi.Input<dynamic> identifiers;
  /// The predicted changes to the deployment stack management status of the resource.
  final pulumi.Input<DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange>? managementStatusChange;
  /// The predicted changes to the resource configuration.
  final pulumi.Input<DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges>? resourceConfigurationChanges;
  /// The symbolic name of the resource being changed.
  final pulumi.Input<String>? symbolicName;
  /// The resource type.
  final pulumi.Input<String> type;
  /// The explanation about why the resource is unsupported by What-If.
  final pulumi.Input<String>? unsupportedReason;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponse].
  /// [apiVersion] The API version the resource was deployed with
  /// [changeCertainty] The confidence level of the predicted change.
  /// [changeType] Type of change that will be made to the resource when the deployment is executed.
  /// [denyStatusChange] The predicted changes to the deployment stack deny status of the resource.
  /// [deploymentId] The resource id of the Deployment responsible for this change.
  /// [extension] The extension the resource was deployed with.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  /// [identifiers] The extensible resource identifiers.
  /// [managementStatusChange] The predicted changes to the deployment stack management status of the resource.
  /// [resourceConfigurationChanges] The predicted changes to the resource configuration.
  /// [symbolicName] The symbolic name of the resource being changed.
  /// [type] The resource type.
  /// [unsupportedReason] The explanation about why the resource is unsupported by What-If.
  DeploymentStacksWhatIfResourceChangeResponse({
    required this.apiVersion,
    required this.changeCertainty,
    required this.changeType,
    this.denyStatusChange,
    this.deploymentId,
    required this.extension,
    required this.id,
    required this.identifiers,
    this.managementStatusChange,
    this.resourceConfigurationChanges,
    this.symbolicName,
    required this.type,
    this.unsupportedReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'changeCertainty': changeCertainty,
      'changeType': changeType,
      'denyStatusChange': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange, Map<String, dynamic>>(denyStatusChange, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'extension': pulumi.Input.mapInputValue<DeploymentExtensionResponse, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'id': id,
      'identifiers': identifiers,
      'managementStatusChange': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange, Map<String, dynamic>>(managementStatusChange, (value) => value.toMap()),
      'resourceConfigurationChanges': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges, Map<String, dynamic>>(resourceConfigurationChanges, (value) => value.toMap()),
      'symbolicName': ?symbolicName,
      'type': type,
      'unsupportedReason': ?unsupportedReason,
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponse(
      apiVersion: (map['apiVersion'] as String).input(),
      changeCertainty: (map['changeCertainty'] as String).input(),
      changeType: (map['changeType'] as String).input(),
      denyStatusChange: map['denyStatusChange'] == null ? null : (DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange.fromMap((map['denyStatusChange'] as Map).cast<String, dynamic>())).input(),
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId'] as String).input(),
      extension: (DeploymentExtensionResponse.fromMap((map['extension'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      identifiers: (map['identifiers']).input(),
      managementStatusChange: map['managementStatusChange'] == null ? null : (DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange.fromMap((map['managementStatusChange'] as Map).cast<String, dynamic>())).input(),
      resourceConfigurationChanges: map['resourceConfigurationChanges'] == null ? null : (DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges.fromMap((map['resourceConfigurationChanges'] as Map).cast<String, dynamic>())).input(),
      symbolicName: map['symbolicName'] == null ? null : (map['symbolicName'] as String).input(),
      type: (map['type'] as String).input(),
      unsupportedReason: map['unsupportedReason'] == null ? null : (map['unsupportedReason'] as String).input(),
    );
  }
}

