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
    required pulumi.Output<ActionOnUnmanage> actionOnUnmanage,
    pulumi.Output<bool>? bypassStackOutOfSyncError,
    pulumi.Output<DeploymentStacksDebugSetting>? debugSetting,
    required pulumi.Output<DenySettings> denySettings,
    pulumi.Output<String>? deploymentScope,
    pulumi.Output<String>? deploymentStackName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, DeploymentParameter>>? parameters,
    pulumi.Output<DeploymentStacksParametersLink>? parametersLink,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<dynamic>? template,
    pulumi.Output<DeploymentStacksTemplateLink>? templateLink,
  }) :
      actionOnUnmanage = pulumi.Input.asInput<ActionOnUnmanage>(actionOnUnmanage),
      bypassStackOutOfSyncError = pulumi.Input.asOptionalInput<bool>(bypassStackOutOfSyncError),
      debugSetting = pulumi.Input.asOptionalInput<DeploymentStacksDebugSetting>(debugSetting),
      denySettings = pulumi.Input.asInput<DenySettings>(denySettings),
      deploymentScope = pulumi.Input.asOptionalInput<String>(deploymentScope),
      deploymentStackName = pulumi.Input.asOptionalInput<String>(deploymentStackName),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      parameters = pulumi.Input.asOptionalInput<Map<String, DeploymentParameter>>(parameters),
      parametersLink = pulumi.Input.asOptionalInput<DeploymentStacksParametersLink>(parametersLink),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asOptionalInput<dynamic>(template),
      templateLink = pulumi.Input.asOptionalInput<DeploymentStacksTemplateLink>(templateLink);

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
      actionOnUnmanage: pulumi.Output.create<ActionOnUnmanage>(ActionOnUnmanage.fromMap((map['actionOnUnmanage'] as Map).cast<String, dynamic>())),
      bypassStackOutOfSyncError: map['bypassStackOutOfSyncError'] == null ? null : pulumi.Output.create<bool>(map['bypassStackOutOfSyncError'] as bool),
      debugSetting: map['debugSetting'] == null ? null : pulumi.Output.create<DeploymentStacksDebugSetting>(DeploymentStacksDebugSetting.fromMap((map['debugSetting'] as Map).cast<String, dynamic>())),
      denySettings: pulumi.Output.create<DenySettings>(DenySettings.fromMap((map['denySettings'] as Map).cast<String, dynamic>())),
      deploymentScope: map['deploymentScope'] == null ? null : pulumi.Output.create<String>(map['deploymentScope'] as String),
      deploymentStackName: map['deploymentStackName'] == null ? null : pulumi.Output.create<String>(map['deploymentStackName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, DeploymentParameter>>(pulumi.Input.decodeMapValues<DeploymentParameter>(map['parameters'], (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>()))),
      parametersLink: map['parametersLink'] == null ? null : pulumi.Output.create<DeploymentStacksParametersLink>(DeploymentStacksParametersLink.fromMap((map['parametersLink'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: map['template'] == null ? null : pulumi.Output.create<dynamic>(map['template']),
      templateLink: map['templateLink'] == null ? null : pulumi.Output.create<DeploymentStacksTemplateLink>(DeploymentStacksTemplateLink.fromMap((map['templateLink'] as Map).cast<String, dynamic>())),
    );
  }
}

