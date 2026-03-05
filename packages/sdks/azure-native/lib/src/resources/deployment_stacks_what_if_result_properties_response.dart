// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage_response.dart';
import 'deny_settings_response.dart';
import 'deployment_parameter_response.dart';
import 'deployment_stacks_debug_setting_response.dart';
import 'deployment_stacks_diagnostic_response.dart';
import 'deployment_stacks_parameters_link_response.dart';
import 'deployment_stacks_what_if_change_response.dart';
import 'error_detail_response.dart';

/// DeploymentStack WhatIfResult Properties
class DeploymentStacksWhatIfResultPropertiesResponse {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final pulumi.Input<ActionOnUnmanageResponse> actionOnUnmanage;
  /// All of the changes predicted by the deployment stack what-if operation.
  final pulumi.Input<DeploymentStacksWhatIfChangeResponse> changes;
  /// The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  final pulumi.Input<String> correlationId;
  /// The debug setting of the deployment.
  final pulumi.Input<DeploymentStacksDebugSettingResponse>? debugSetting;
  /// Defines how resources deployed by the stack are locked.
  final pulumi.Input<DenySettingsResponse> denySettings;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final pulumi.Input<String>? deploymentScope;
  /// The timestamp for when the deployment stack was last modified. This can be used to determine if the what-if data is still current.
  final pulumi.Input<String> deploymentStackLastModified;
  /// The deployment stack id to use as the basis for comparison.
  final pulumi.Input<String> deploymentStackResourceId;
  /// Deployment stack description. Max length of 4096 characters.
  final pulumi.Input<String>? description;
  /// List of resource diagnostics detected by What-If operation.
  final pulumi.Input<List<DeploymentStacksDiagnosticResponse>> diagnostics;
  /// The error detail.
  final pulumi.Input<ErrorDetailResponse>? error;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<Map<String, DeploymentParameterResponse>>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<DeploymentStacksParametersLinkResponse>? parametersLink;
  /// State of the deployment stack.
  final pulumi.Input<String> provisioningState;
  /// The interval to persist the deployment stack what-if result in ISO 8601 format.
  final pulumi.Input<String> retentionInterval;
  /// The validation level of the deployment stack
  final pulumi.Input<String>? validationLevel;

  /// Creates a new [DeploymentStacksWhatIfResultPropertiesResponse].
  /// [actionOnUnmanage] Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  /// [changes] All of the changes predicted by the deployment stack what-if operation.
  /// [correlationId] The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  /// [debugSetting] The debug setting of the deployment.
  /// [denySettings] Defines how resources deployed by the stack are locked.
  /// [deploymentScope] The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  /// [deploymentStackLastModified] The timestamp for when the deployment stack was last modified. This can be used to determine if the what-if data is still current.
  /// [deploymentStackResourceId] The deployment stack id to use as the basis for comparison.
  /// [description] Deployment stack description. Max length of 4096 characters.
  /// [diagnostics] List of resource diagnostics detected by What-If operation.
  /// [error] The error detail.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  /// [parametersLink] The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [provisioningState] State of the deployment stack.
  /// [retentionInterval] The interval to persist the deployment stack what-if result in ISO 8601 format.
  /// [validationLevel] The validation level of the deployment stack
  DeploymentStacksWhatIfResultPropertiesResponse({
    required this.actionOnUnmanage,
    required this.changes,
    required this.correlationId,
    this.debugSetting,
    required this.denySettings,
    this.deploymentScope,
    required this.deploymentStackLastModified,
    required this.deploymentStackResourceId,
    this.description,
    required this.diagnostics,
    this.error,
    this.parameters,
    this.parametersLink,
    required this.provisioningState,
    required this.retentionInterval,
    this.validationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': pulumi.Input.mapInputValue<ActionOnUnmanageResponse, Map<String, dynamic>>(actionOnUnmanage, (value) => value.toMap()),
      'changes': pulumi.Input.mapInputValue<DeploymentStacksWhatIfChangeResponse, Map<String, dynamic>>(changes, (value) => value.toMap()),
      'correlationId': correlationId,
      'debugSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksDebugSettingResponse, Map<String, dynamic>>(debugSetting, (value) => value.toMap()),
      'denySettings': pulumi.Input.mapInputValue<DenySettingsResponse, Map<String, dynamic>>(denySettings, (value) => value.toMap()),
      'deploymentScope': ?deploymentScope,
      'deploymentStackLastModified': deploymentStackLastModified,
      'deploymentStackResourceId': deploymentStackResourceId,
      'description': ?description,
      'diagnostics': pulumi.Input.mapInputValue<List<DeploymentStacksDiagnosticResponse>, List<Map<String, dynamic>>>(diagnostics, (value) => pulumi.Input.encodeList<DeploymentStacksDiagnosticResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentParameterResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<DeploymentParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parametersLink': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksParametersLinkResponse, Map<String, dynamic>>(parametersLink, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'retentionInterval': retentionInterval,
      'validationLevel': ?validationLevel,
    };
  }

  factory DeploymentStacksWhatIfResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultPropertiesResponse(
      actionOnUnmanage: pulumi.Input.fromValue(ActionOnUnmanageResponse.fromMap((map['actionOnUnmanage']! as Map).cast<String, dynamic>())),
      changes: pulumi.Input.fromValue(DeploymentStacksWhatIfChangeResponse.fromMap((map['changes']! as Map).cast<String, dynamic>())),
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksDebugSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denySettings: pulumi.Input.fromValue(DenySettingsResponse.fromMap((map['denySettings']! as Map).cast<String, dynamic>())),
      deploymentScope: (() { final guardedValue = map['deploymentScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStackLastModified: pulumi.Input.fromValue(map['deploymentStackLastModified'] as String),
      deploymentStackResourceId: pulumi.Input.fromValue(map['deploymentStackResourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnostics: pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentStacksDiagnosticResponse>(map['diagnostics']!, (value) => DeploymentStacksDiagnosticResponse.fromMap((value as Map).cast<String, dynamic>()))),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentParameterResponse>(guardedValue, (value) => DeploymentParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksParametersLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      retentionInterval: pulumi.Input.fromValue(map['retentionInterval'] as String),
      validationLevel: (() { final guardedValue = map['validationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

