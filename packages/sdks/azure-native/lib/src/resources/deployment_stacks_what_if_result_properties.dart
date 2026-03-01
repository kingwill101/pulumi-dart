// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage.dart';
import 'deny_settings.dart';
import 'deployment_extension_config_item.dart';
import 'deployment_external_input.dart';
import 'deployment_external_input_definition.dart';
import 'deployment_parameter.dart';
import 'deployment_stacks_debug_setting.dart';
import 'deployment_stacks_parameters_link.dart';
import 'deployment_stacks_template_link.dart';

/// DeploymentStack WhatIfResult Properties
class DeploymentStacksWhatIfResultProperties {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final ActionOnUnmanage actionOnUnmanage;
  /// The debug setting of the deployment.
  final DeploymentStacksDebugSetting? debugSetting;
  /// Defines how resources deployed by the stack are locked.
  final DenySettings denySettings;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final String? deploymentScope;
  /// The deployment stack id to use as the basis for comparison.
  final String deploymentStackResourceId;
  /// Deployment stack description. Max length of 4096 characters.
  final String? description;
  /// The deployment extension configs. Keys of this object are extension aliases as defined in the deployment template.
  final Map<String, Map<String, DeploymentExtensionConfigItem>>? extensionConfigs;
  /// External input definitions, used by external tooling to define expected external input values.
  final Map<String, DeploymentExternalInputDefinition>? externalInputDefinitions;
  /// External input values, used by external tooling for parameter evaluation.
  final Map<String, DeploymentExternalInput>? externalInputs;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final Map<String, DeploymentParameter>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final DeploymentStacksParametersLink? parametersLink;
  /// The interval to persist the deployment stack what-if result in ISO 8601 format.
  final String retentionInterval;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final dynamic template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final DeploymentStacksTemplateLink? templateLink;
  /// The validation level of the deployment stack
  final String? validationLevel;

  /// Creates a new [DeploymentStacksWhatIfResultProperties].
  /// [actionOnUnmanage] Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  /// [debugSetting] The debug setting of the deployment.
  /// [denySettings] Defines how resources deployed by the stack are locked.
  /// [deploymentScope] The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  /// [deploymentStackResourceId] The deployment stack id to use as the basis for comparison.
  /// [description] Deployment stack description. Max length of 4096 characters.
  /// [extensionConfigs] The deployment extension configs. Keys of this object are extension aliases as defined in the deployment template.
  /// [externalInputDefinitions] External input definitions, used by external tooling to define expected external input values.
  /// [externalInputs] External input values, used by external tooling for parameter evaluation.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  /// [parametersLink] The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [retentionInterval] The interval to persist the deployment stack what-if result in ISO 8601 format.
  /// [template] The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  /// [templateLink] The URI of the template. Use either the templateLink property or the template property, but not both.
  /// [validationLevel] The validation level of the deployment stack
  DeploymentStacksWhatIfResultProperties({
    required this.actionOnUnmanage,
    this.debugSetting,
    required this.denySettings,
    this.deploymentScope,
    required this.deploymentStackResourceId,
    this.description,
    this.extensionConfigs,
    this.externalInputDefinitions,
    this.externalInputs,
    this.parameters,
    this.parametersLink,
    required this.retentionInterval,
    this.template,
    this.templateLink,
    this.validationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': actionOnUnmanage.toMap(),
      'debugSetting': ?debugSetting == null ? null : debugSetting!.toMap(),
      'denySettings': denySettings.toMap(),
      'deploymentScope': ?deploymentScope,
      'deploymentStackResourceId': deploymentStackResourceId,
      'description': ?description,
      'extensionConfigs': ?extensionConfigs == null ? null : pulumi.Input.encodeMapValues<Map<String, DeploymentExtensionConfigItem>, Map<String, Map<String, dynamic>>>(extensionConfigs!, (value) => pulumi.Input.encodeMapValues<DeploymentExtensionConfigItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalInputDefinitions': ?externalInputDefinitions == null ? null : pulumi.Input.encodeMapValues<DeploymentExternalInputDefinition, Map<String, dynamic>>(externalInputDefinitions!, (value) => value.toMap()),
      'externalInputs': ?externalInputs == null ? null : pulumi.Input.encodeMapValues<DeploymentExternalInput, Map<String, dynamic>>(externalInputs!, (value) => value.toMap()),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<DeploymentParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'parametersLink': ?parametersLink == null ? null : parametersLink!.toMap(),
      'retentionInterval': retentionInterval,
      'template': ?template,
      'templateLink': ?templateLink == null ? null : templateLink!.toMap(),
      'validationLevel': ?validationLevel,
    };
  }

  factory DeploymentStacksWhatIfResultProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultProperties(
      actionOnUnmanage: ActionOnUnmanage.fromMap((map['actionOnUnmanage'] as Map).cast<String, dynamic>()),
      debugSetting: map['debugSetting'] == null ? null : DeploymentStacksDebugSetting.fromMap((map['debugSetting'] as Map).cast<String, dynamic>()),
      denySettings: DenySettings.fromMap((map['denySettings'] as Map).cast<String, dynamic>()),
      deploymentScope: map['deploymentScope'] == null ? null : map['deploymentScope'] as String,
      deploymentStackResourceId: map['deploymentStackResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      extensionConfigs: map['extensionConfigs'] == null ? null : pulumi.Input.decodeMapValues<Map<String, DeploymentExtensionConfigItem>>(map['extensionConfigs'], (value) => pulumi.Input.decodeMapValues<DeploymentExtensionConfigItem>(value, (value) => DeploymentExtensionConfigItem.fromMap((value as Map).cast<String, dynamic>()))),
      externalInputDefinitions: map['externalInputDefinitions'] == null ? null : pulumi.Input.decodeMapValues<DeploymentExternalInputDefinition>(map['externalInputDefinitions'], (value) => DeploymentExternalInputDefinition.fromMap((value as Map).cast<String, dynamic>())),
      externalInputs: map['externalInputs'] == null ? null : pulumi.Input.decodeMapValues<DeploymentExternalInput>(map['externalInputs'], (value) => DeploymentExternalInput.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<DeploymentParameter>(map['parameters'], (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>())),
      parametersLink: map['parametersLink'] == null ? null : DeploymentStacksParametersLink.fromMap((map['parametersLink'] as Map).cast<String, dynamic>()),
      retentionInterval: map['retentionInterval'] as String,
      template: map['template'] == null ? null : map['template'],
      templateLink: map['templateLink'] == null ? null : DeploymentStacksTemplateLink.fromMap((map['templateLink'] as Map).cast<String, dynamic>()),
      validationLevel: map['validationLevel'] == null ? null : map['validationLevel'] as String,
    );
  }
}

