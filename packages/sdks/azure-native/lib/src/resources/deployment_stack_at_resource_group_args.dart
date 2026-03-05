// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage.dart';
import 'deny_settings.dart';
import 'deployment_parameter.dart';
import 'deployment_stacks_debug_setting.dart';
import 'deployment_stacks_parameters_link.dart';
import 'deployment_stacks_template_link.dart';

/// {@template pulumi_resources_deployment_stack_at_resource_group_args_doc}
/// The set of arguments for DeploymentStackAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stack_at_resource_group_args_doc}
class DeploymentStackAtResourceGroupArgs {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final pulumi.Input<ActionOnUnmanage> actionOnUnmanage;
  /// Flag to bypass service errors that indicate the stack resource list is not correctly synchronized.
  final pulumi.Input<bool>? bypassStackOutOfSyncError;
  /// The debug setting of the deployment.
  final pulumi.Input<DeploymentStacksDebugSetting>? debugSetting;
  /// Defines how resources deployed by the stack are locked.
  final pulumi.Input<DenySettings> denySettings;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final pulumi.Input<String>? deploymentScope;
  /// Name of the deployment stack.
  final pulumi.Input<String>? deploymentStackName;
  /// Deployment stack description. Max length of 4096 characters.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final pulumi.Input<String>? location;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<Map<String, DeploymentParameter>>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<DeploymentStacksParametersLink>? parametersLink;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<dynamic>? template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<DeploymentStacksTemplateLink>? templateLink;

  /// Creates a new [DeploymentStackAtResourceGroupArgs].
  /// [actionOnUnmanage] Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  /// [bypassStackOutOfSyncError] Flag to bypass service errors that indicate the stack resource list is not correctly synchronized.
  /// [debugSetting] The debug setting of the deployment.
  /// [denySettings] Defines how resources deployed by the stack are locked.
  /// [deploymentScope] The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  /// [deploymentStackName] Name of the deployment stack.
  /// [description] Deployment stack description. Max length of 4096 characters.
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  /// [parametersLink] The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [template] The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  /// [templateLink] The URI of the template. Use either the templateLink property or the template property, but not both.
  DeploymentStackAtResourceGroupArgs({
    required this.actionOnUnmanage,
    this.bypassStackOutOfSyncError,
    this.debugSetting,
    required this.denySettings,
    this.deploymentScope,
    this.deploymentStackName,
    this.description,
    this.location,
    this.parameters,
    this.parametersLink,
    required this.resourceGroupName,
    this.tags,
    this.template,
    this.templateLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': pulumi.Input.mapInputValue<ActionOnUnmanage, Map<String, dynamic>>(actionOnUnmanage, (value) => value.toMap()),
      'bypassStackOutOfSyncError': ?bypassStackOutOfSyncError,
      'debugSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksDebugSetting, Map<String, dynamic>>(debugSetting, (value) => value.toMap()),
      'denySettings': pulumi.Input.mapInputValue<DenySettings, Map<String, dynamic>>(denySettings, (value) => value.toMap()),
      'deploymentScope': ?deploymentScope,
      'deploymentStackName': ?deploymentStackName,
      'description': ?description,
      'location': ?location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<DeploymentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parametersLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksParametersLink, Map<String, dynamic>>(parametersLink, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'template': ?template,
      'templateLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksTemplateLink, Map<String, dynamic>>(templateLink, (value) => value.toMap()),
    };
  }

  factory DeploymentStackAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentStackAtResourceGroupArgs(
      actionOnUnmanage: pulumi.Input.fromValue(ActionOnUnmanage.fromMap((map['actionOnUnmanage']! as Map).cast<String, dynamic>())),
      bypassStackOutOfSyncError: (() { final guardedValue = map['bypassStackOutOfSyncError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksDebugSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denySettings: pulumi.Input.fromValue(DenySettings.fromMap((map['denySettings']! as Map).cast<String, dynamic>())),
      deploymentScope: (() { final guardedValue = map['deploymentScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStackName: (() { final guardedValue = map['deploymentStackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentParameter>(guardedValue, (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksParametersLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      templateLink: (() { final guardedValue = map['templateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksTemplateLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

