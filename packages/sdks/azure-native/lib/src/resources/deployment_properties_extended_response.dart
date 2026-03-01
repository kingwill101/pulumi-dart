// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_setting_response.dart';
import 'dependency_response.dart';
import 'error_response_response.dart';
import 'on_error_deployment_extended_response.dart';
import 'parameters_link_response.dart';
import 'provider_response.dart';
import 'resource_reference_response.dart';
import 'template_link_response.dart';

/// Deployment properties with additional details.
class DeploymentPropertiesExtendedResponse {
  /// The correlation ID of the deployment.
  final String correlationId;
  /// The debug setting of the deployment.
  final DebugSettingResponse debugSetting;
  /// The list of deployment dependencies.
  final List<DependencyResponse> dependencies;
  /// The duration of the template deployment.
  final String duration;
  /// The deployment error.
  final ErrorResponseResponse error;
  /// The deployment mode. Possible values are Incremental and Complete.
  final String mode;
  /// The deployment on error behavior.
  final OnErrorDeploymentExtendedResponse onErrorDeployment;
  /// Array of provisioned resources.
  final List<ResourceReferenceResponse> outputResources;
  /// Key/value pairs that represent deployment output.
  final dynamic outputs;
  /// Deployment parameters.
  final dynamic parameters;
  /// The URI referencing the parameters.
  final ParametersLinkResponse parametersLink;
  /// The list of resource providers needed for the deployment.
  final List<ProviderResponse> providers;
  /// Denotes the state of provisioning.
  final String provisioningState;
  /// The hash produced for the template.
  final String templateHash;
  /// The URI referencing the template.
  final TemplateLinkResponse templateLink;
  /// The timestamp of the template deployment.
  final String timestamp;
  /// Array of validated resources.
  final List<ResourceReferenceResponse> validatedResources;

  /// Creates a new [DeploymentPropertiesExtendedResponse].
  /// [correlationId] The correlation ID of the deployment.
  /// [debugSetting] The debug setting of the deployment.
  /// [dependencies] The list of deployment dependencies.
  /// [duration] The duration of the template deployment.
  /// [error] The deployment error.
  /// [mode] The deployment mode. Possible values are Incremental and Complete.
  /// [onErrorDeployment] The deployment on error behavior.
  /// [outputResources] Array of provisioned resources.
  /// [outputs] Key/value pairs that represent deployment output.
  /// [parameters] Deployment parameters.
  /// [parametersLink] The URI referencing the parameters.
  /// [providers] The list of resource providers needed for the deployment.
  /// [provisioningState] Denotes the state of provisioning.
  /// [templateHash] The hash produced for the template.
  /// [templateLink] The URI referencing the template.
  /// [timestamp] The timestamp of the template deployment.
  /// [validatedResources] Array of validated resources.
  DeploymentPropertiesExtendedResponse({
    required this.correlationId,
    required this.debugSetting,
    required this.dependencies,
    required this.duration,
    required this.error,
    required this.mode,
    required this.onErrorDeployment,
    required this.outputResources,
    required this.outputs,
    required this.parameters,
    required this.parametersLink,
    required this.providers,
    required this.provisioningState,
    required this.templateHash,
    required this.templateLink,
    required this.timestamp,
    required this.validatedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationId': correlationId,
      'debugSetting': debugSetting.toMap(),
      'dependencies': pulumi.Input.encodeList<DependencyResponse, Map<String, dynamic>>(dependencies, (value) => value.toMap()),
      'duration': duration,
      'error': error.toMap(),
      'mode': mode,
      'onErrorDeployment': onErrorDeployment.toMap(),
      'outputResources': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(outputResources, (value) => value.toMap()),
      'outputs': outputs,
      'parameters': parameters,
      'parametersLink': parametersLink.toMap(),
      'providers': pulumi.Input.encodeList<ProviderResponse, Map<String, dynamic>>(providers, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'templateHash': templateHash,
      'templateLink': templateLink.toMap(),
      'timestamp': timestamp,
      'validatedResources': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(validatedResources, (value) => value.toMap()),
    };
  }

  factory DeploymentPropertiesExtendedResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentPropertiesExtendedResponse(
      correlationId: map['correlationId'] as String,
      debugSetting: DebugSettingResponse.fromMap((map['debugSetting'] as Map).cast<String, dynamic>()),
      dependencies: pulumi.Input.decodeList<DependencyResponse>(map['dependencies'], (value) => DependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      duration: map['duration'] as String,
      error: ErrorResponseResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
      onErrorDeployment: OnErrorDeploymentExtendedResponse.fromMap((map['onErrorDeployment'] as Map).cast<String, dynamic>()),
      outputResources: pulumi.Input.decodeList<ResourceReferenceResponse>(map['outputResources'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      outputs: map['outputs'],
      parameters: map['parameters'],
      parametersLink: ParametersLinkResponse.fromMap((map['parametersLink'] as Map).cast<String, dynamic>()),
      providers: pulumi.Input.decodeList<ProviderResponse>(map['providers'], (value) => ProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      templateHash: map['templateHash'] as String,
      templateLink: TemplateLinkResponse.fromMap((map['templateLink'] as Map).cast<String, dynamic>()),
      timestamp: map['timestamp'] as String,
      validatedResources: pulumi.Input.decodeList<ResourceReferenceResponse>(map['validatedResources'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

