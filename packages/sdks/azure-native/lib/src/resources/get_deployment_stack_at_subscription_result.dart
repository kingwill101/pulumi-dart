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

/// Result data returned by getDeploymentStackAtSubscription.
class GetDeploymentStackAtSubscriptionResult {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final ActionOnUnmanageResponse actionOnUnmanage;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  final String correlationId;
  /// The debug setting of the deployment.
  final DeploymentStacksDebugSettingResponse? debugSetting;
  /// An array of resources that were deleted during the most recent Deployment stack update. Deleted means that the resource was removed from the template and relevant deletion operations were specified.
  final List<ResourceReferenceResponse> deletedResources;
  /// Defines how resources deployed by the stack are locked.
  final DenySettingsResponse denySettings;
  /// The resourceId of the deployment resource created by the deployment stack.
  final String deploymentId;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final String? deploymentScope;
  /// Deployment stack description. Max length of 4096 characters.
  final String? description;
  /// An array of resources that were detached during the most recent Deployment stack update. Detached means that the resource was removed from the template, but no relevant deletion operations were specified. So, the resource still exists while no longer being associated with the stack.
  final List<ResourceReferenceResponse> detachedResources;
  /// The duration of the last successful Deployment stack update.
  final String duration;
  /// The error detail.
  final ErrorDetailResponse? error;
  /// An array of resources that failed to reach goal state during the most recent update. Each resourceId is accompanied by an error message.
  final List<ResourceReferenceExtendedResponse> failedResources;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final String? location;
  /// The name of the resource
  final String name;
  /// The outputs of the deployment resource created by the deployment stack.
  final dynamic outputs;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final Map<String, DeploymentParameterResponse>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final DeploymentStacksParametersLinkResponse? parametersLink;
  /// State of the deployment stack.
  final String provisioningState;
  /// An array of resources currently managed by the deployment stack.
  final List<ManagedResourceReferenceResponse> resources;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentStackAtSubscriptionResult].
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
  GetDeploymentStackAtSubscriptionResult({
    required this.actionOnUnmanage,
    required this.azureApiVersion,
    required this.correlationId,
    this.debugSetting,
    required this.deletedResources,
    required this.denySettings,
    required this.deploymentId,
    this.deploymentScope,
    this.description,
    required this.detachedResources,
    required this.duration,
    this.error,
    required this.failedResources,
    required this.id,
    this.location,
    required this.name,
    required this.outputs,
    this.parameters,
    this.parametersLink,
    required this.provisioningState,
    required this.resources,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': actionOnUnmanage.toMap(),
      'azureApiVersion': azureApiVersion,
      'correlationId': correlationId,
      'debugSetting': ?debugSetting?.toMap(),
      'deletedResources': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(deletedResources, (value) => value.toMap()),
      'denySettings': denySettings.toMap(),
      'deploymentId': deploymentId,
      'deploymentScope': ?deploymentScope,
      'description': ?description,
      'detachedResources': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(detachedResources, (value) => value.toMap()),
      'duration': duration,
      'error': ?error?.toMap(),
      'failedResources': pulumi.Input.encodeList<ResourceReferenceExtendedResponse, Map<String, dynamic>>(failedResources, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'name': name,
      'outputs': outputs,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<DeploymentParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parametersLink': ?parametersLink?.toMap(),
      'provisioningState': provisioningState,
      'resources': pulumi.Input.encodeList<ManagedResourceReferenceResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDeploymentStackAtSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStackAtSubscriptionResult(
      actionOnUnmanage: ActionOnUnmanageResponse.fromMap((map['actionOnUnmanage']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      correlationId: map['correlationId'] as String,
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return DeploymentStacksDebugSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deletedResources: pulumi.Input.decodeList<ResourceReferenceResponse>(map['deletedResources']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      denySettings: DenySettingsResponse.fromMap((map['denySettings']! as Map).cast<String, dynamic>()),
      deploymentId: map['deploymentId'] as String,
      deploymentScope: (() { final guardedValue = map['deploymentScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detachedResources: pulumi.Input.decodeList<ResourceReferenceResponse>(map['detachedResources']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      duration: map['duration'] as String,
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failedResources: pulumi.Input.decodeList<ResourceReferenceExtendedResponse>(map['failedResources']!, (value) => ResourceReferenceExtendedResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      outputs: map['outputs'],
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DeploymentParameterResponse>(guardedValue, (value) => DeploymentParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return DeploymentStacksParametersLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      resources: pulumi.Input.decodeList<ManagedResourceReferenceResponse>(map['resources']!, (value) => ManagedResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

