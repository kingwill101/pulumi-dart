// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage.dart';
import 'deny_settings.dart';
import 'deployment_parameter.dart';
import 'deployment_stacks_debug_setting.dart';
import 'deployment_stacks_parameters_link.dart';
import 'deployment_stacks_template_link.dart';

/// {@template pulumi_resources_deployment_stack_at_subscription_args_doc}
/// The set of arguments for DeploymentStackAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stack_at_subscription_args_doc}
class DeploymentStackAtSubscriptionArgs {
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
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<dynamic>? template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<DeploymentStacksTemplateLink>? templateLink;

  /// Creates a new [DeploymentStackAtSubscriptionArgs].
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
  /// [tags] Resource tags.
  /// [template] The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  /// [templateLink] The URI of the template. Use either the templateLink property or the template property, but not both.
  DeploymentStackAtSubscriptionArgs({
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
      'tags': ?tags,
      'template': ?template,
      'templateLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksTemplateLink, Map<String, dynamic>>(templateLink, (value) => value.toMap()),
    };
  }

  factory DeploymentStackAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentStackAtSubscriptionArgs(
      actionOnUnmanage: (ActionOnUnmanage.fromMap((map['actionOnUnmanage'] as Map).cast<String, dynamic>())).input(),
      bypassStackOutOfSyncError: map['bypassStackOutOfSyncError'] == null ? null : (map['bypassStackOutOfSyncError'] as bool).input(),
      debugSetting: map['debugSetting'] == null ? null : (DeploymentStacksDebugSetting.fromMap((map['debugSetting'] as Map).cast<String, dynamic>())).input(),
      denySettings: (DenySettings.fromMap((map['denySettings'] as Map).cast<String, dynamic>())).input(),
      deploymentScope: map['deploymentScope'] == null ? null : (map['deploymentScope'] as String).input(),
      deploymentStackName: map['deploymentStackName'] == null ? null : (map['deploymentStackName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<DeploymentParameter>(map['parameters'], (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parametersLink: map['parametersLink'] == null ? null : (DeploymentStacksParametersLink.fromMap((map['parametersLink'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      template: map['template'] == null ? null : (map['template']).input(),
      templateLink: map['templateLink'] == null ? null : (DeploymentStacksTemplateLink.fromMap((map['templateLink'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

