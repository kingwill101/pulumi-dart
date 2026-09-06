// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage_response.dart';
import 'deny_settings_response.dart';
import 'deployment_parameter_response.dart';
import 'deployment_stacks_debug_setting_response.dart';
import 'deployment_stacks_parameters_link_response.dart';
import 'error_detail_response.dart';
import 'managed_resource_reference_response.dart';
import 'resource_reference_extended_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeploymentStackAtManagementGroup.
class GetDeploymentStackAtManagementGroupResult {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final ActionOnUnmanageResponse? actionOnUnmanage;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  final String? correlationId;
  /// The debug setting of the deployment.
  final DeploymentStacksDebugSettingResponse? debugSetting;
  /// An array of resources that were deleted during the most recent Deployment stack update. Deleted means that the resource was removed from the template and relevant deletion operations were specified.
  final List<ResourceReferenceResponse>? deletedResources;
  /// Defines how resources deployed by the stack are locked.
  final DenySettingsResponse? denySettings;
  /// The resourceId of the deployment resource created by the deployment stack.
  final String? deploymentId;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final String? deploymentScope;
  /// Deployment stack description. Max length of 4096 characters.
  final String? description;
  /// An array of resources that were detached during the most recent Deployment stack update. Detached means that the resource was removed from the template, but no relevant deletion operations were specified. So, the resource still exists while no longer being associated with the stack.
  final List<ResourceReferenceResponse>? detachedResources;
  /// The duration of the last successful Deployment stack update.
  final String? duration;
  /// The error detail.
  final ErrorDetailResponse? error;
  /// An array of resources that failed to reach goal state during the most recent update. Each resourceId is accompanied by an error message.
  final List<ResourceReferenceExtendedResponse>? failedResources;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The outputs of the deployment resource created by the deployment stack.
  final dynamic outputs;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final Map<String, DeploymentParameterResponse>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final DeploymentStacksParametersLinkResponse? parametersLink;
  /// State of the deployment stack.
  final String? provisioningState;
  /// An array of resources currently managed by the deployment stack.
  final List<ManagedResourceReferenceResponse>? resources;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDeploymentStackAtManagementGroupResult].
  /// [actionOnUnmanage] Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [correlationId] The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  /// [debugSetting] The debug setting of the deployment.
  /// [deletedResources] An array of resources that were deleted during the most recent Deployment stack update. Deleted means that the resource was removed from the template and relevant deletion operations were specified.
  /// [denySettings] Defines how resources deployed by the stack are locked.
  /// [deploymentId] The resourceId of the deployment resource created by the deployment stack.
  /// [deploymentScope] The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  /// [description] Deployment stack description. Max length of 4096 characters.
  /// [detachedResources] An array of resources that were detached during the most recent Deployment stack update. Detached means that the resource was removed from the template, but no relevant deletion operations were specified. So, the resource still exists while no longer being associated with the stack.
  /// [duration] The duration of the last successful Deployment stack update.
  /// [error] The error detail.
  /// [failedResources] An array of resources that failed to reach goal state during the most recent update. Each resourceId is accompanied by an error message.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [name] The name of the resource
  /// [outputs] The outputs of the deployment resource created by the deployment stack.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  /// [parametersLink] The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [provisioningState] State of the deployment stack.
  /// [resources] An array of resources currently managed by the deployment stack.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeploymentStackAtManagementGroupResult({
    this.actionOnUnmanage,
    this.azureApiVersion,
    this.correlationId,
    this.debugSetting,
    this.deletedResources,
    this.denySettings,
    this.deploymentId,
    this.deploymentScope,
    this.description,
    this.detachedResources,
    this.duration,
    this.error,
    this.failedResources,
    this.id,
    this.location,
    this.name,
    this.outputs,
    this.parameters,
    this.parametersLink,
    this.provisioningState,
    this.resources,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': ?actionOnUnmanage?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'correlationId': ?correlationId,
      'debugSetting': ?debugSetting?.toMap(),
      'deletedResources': ?(() { final guardedValue = deletedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'denySettings': ?denySettings?.toMap(),
      'deploymentId': ?deploymentId,
      'deploymentScope': ?deploymentScope,
      'description': ?description,
      'detachedResources': ?(() { final guardedValue = detachedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'duration': ?duration,
      'error': ?error?.toMap(),
      'failedResources': ?(() { final guardedValue = failedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceExtendedResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'outputs': ?outputs,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<DeploymentParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parametersLink': ?parametersLink?.toMap(),
      'provisioningState': ?provisioningState,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ManagedResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDeploymentStackAtManagementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStackAtManagementGroupResult(
      actionOnUnmanage: (() { final guardedValue = map['actionOnUnmanage']; if (guardedValue == null) return null; return ActionOnUnmanageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return DeploymentStacksDebugSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deletedResources: (() { final guardedValue = map['deletedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      denySettings: (() { final guardedValue = map['denySettings']; if (guardedValue == null) return null; return DenySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentScope: (() { final guardedValue = map['deploymentScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detachedResources: (() { final guardedValue = map['detachedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failedResources: (() { final guardedValue = map['failedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceExtendedResponse>(guardedValue, (value) => ResourceReferenceExtendedResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return guardedValue; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DeploymentParameterResponse>(guardedValue, (value) => DeploymentParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return DeploymentStacksParametersLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedResourceReferenceResponse>(guardedValue, (value) => ManagedResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
