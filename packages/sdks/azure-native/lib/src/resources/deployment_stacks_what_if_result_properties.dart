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
  final pulumi.Input<ActionOnUnmanage> actionOnUnmanage;
  /// The debug setting of the deployment.
  final pulumi.Input<DeploymentStacksDebugSetting>? debugSetting;
  /// Defines how resources deployed by the stack are locked.
  final pulumi.Input<DenySettings> denySettings;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final pulumi.Input<String>? deploymentScope;
  /// The deployment stack id to use as the basis for comparison.
  final pulumi.Input<String> deploymentStackResourceId;
  /// Deployment stack description. Max length of 4096 characters.
  final pulumi.Input<String>? description;
  /// The deployment extension configs. Keys of this object are extension aliases as defined in the deployment template.
  final pulumi.Input<Map<String, Map<String, DeploymentExtensionConfigItem>>>? extensionConfigs;
  /// External input definitions, used by external tooling to define expected external input values.
  final pulumi.Input<Map<String, DeploymentExternalInputDefinition>>? externalInputDefinitions;
  /// External input values, used by external tooling for parameter evaluation.
  final pulumi.Input<Map<String, DeploymentExternalInput>>? externalInputs;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<Map<String, DeploymentParameter>>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<DeploymentStacksParametersLink>? parametersLink;
  /// The interval to persist the deployment stack what-if result in ISO 8601 format.
  final pulumi.Input<String> retentionInterval;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<dynamic>? template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<DeploymentStacksTemplateLink>? templateLink;
  /// The validation level of the deployment stack
  final pulumi.Input<String>? validationLevel;

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
      'actionOnUnmanage': pulumi.Input.mapInputValue<ActionOnUnmanage, Map<String, dynamic>>(actionOnUnmanage, (value) => value.toMap()),
      'debugSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksDebugSetting, Map<String, dynamic>>(debugSetting, (value) => value.toMap()),
      'denySettings': pulumi.Input.mapInputValue<DenySettings, Map<String, dynamic>>(denySettings, (value) => value.toMap()),
      'deploymentScope': ?deploymentScope,
      'deploymentStackResourceId': deploymentStackResourceId,
      'description': ?description,
      'extensionConfigs': ?pulumi.Input.mapOptionalInputValue<Map<String, Map<String, DeploymentExtensionConfigItem>>, Map<String, Map<String, Map<String, dynamic>>>>(extensionConfigs, (value) => pulumi.Input.encodeMapValues<Map<String, DeploymentExtensionConfigItem>, Map<String, Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeMapValues<DeploymentExtensionConfigItem, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'externalInputDefinitions': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentExternalInputDefinition>, Map<String, Map<String, dynamic>>>(externalInputDefinitions, (value) => pulumi.Input.encodeMapValues<DeploymentExternalInputDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalInputs': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentExternalInput>, Map<String, Map<String, dynamic>>>(externalInputs, (value) => pulumi.Input.encodeMapValues<DeploymentExternalInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<DeploymentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parametersLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksParametersLink, Map<String, dynamic>>(parametersLink, (value) => value.toMap()),
      'retentionInterval': retentionInterval,
      'template': ?template,
      'templateLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksTemplateLink, Map<String, dynamic>>(templateLink, (value) => value.toMap()),
      'validationLevel': ?validationLevel,
    };
  }

  factory DeploymentStacksWhatIfResultProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultProperties(
      actionOnUnmanage: pulumi.Input.fromValue(ActionOnUnmanage.fromMap((map['actionOnUnmanage']! as Map).cast<String, dynamic>())),
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksDebugSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denySettings: pulumi.Input.fromValue(DenySettings.fromMap((map['denySettings']! as Map).cast<String, dynamic>())),
      deploymentScope: (() { final guardedValue = map['deploymentScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStackResourceId: pulumi.Input.fromValue(map['deploymentStackResourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionConfigs: (() { final guardedValue = map['extensionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Map<String, DeploymentExtensionConfigItem>>(guardedValue, (value) => pulumi.Input.decodeMapValues<DeploymentExtensionConfigItem>(value, (value) => DeploymentExtensionConfigItem.fromMap((value as Map).cast<String, dynamic>())))); })(),
      externalInputDefinitions: (() { final guardedValue = map['externalInputDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentExternalInputDefinition>(guardedValue, (value) => DeploymentExternalInputDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      externalInputs: (() { final guardedValue = map['externalInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentExternalInput>(guardedValue, (value) => DeploymentExternalInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentParameter>(guardedValue, (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksParametersLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionInterval: pulumi.Input.fromValue(map['retentionInterval'] as String),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      templateLink: (() { final guardedValue = map['templateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksTemplateLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationLevel: (() { final guardedValue = map['validationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

