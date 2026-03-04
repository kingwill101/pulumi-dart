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
  final pulumi.Input<String> correlationId;

  /// The debug setting of the deployment.
  final pulumi.Input<DebugSettingResponse> debugSetting;

  /// The list of deployment dependencies.
  final pulumi.Input<List<DependencyResponse>> dependencies;

  /// The duration of the template deployment.
  final pulumi.Input<String> duration;

  /// The deployment error.
  final pulumi.Input<ErrorResponseResponse> error;

  /// The deployment mode. Possible values are Incremental and Complete.
  final pulumi.Input<String> mode;

  /// The deployment on error behavior.
  final pulumi.Input<OnErrorDeploymentExtendedResponse> onErrorDeployment;

  /// Array of provisioned resources.
  final pulumi.Input<List<ResourceReferenceResponse>> outputResources;

  /// Key/value pairs that represent deployment output.
  final pulumi.Input<dynamic> outputs;

  /// Deployment parameters.
  final pulumi.Input<dynamic> parameters;

  /// The URI referencing the parameters.
  final pulumi.Input<ParametersLinkResponse> parametersLink;

  /// The list of resource providers needed for the deployment.
  final pulumi.Input<List<ProviderResponse>> providers;

  /// Denotes the state of provisioning.
  final pulumi.Input<String> provisioningState;

  /// The hash produced for the template.
  final pulumi.Input<String> templateHash;

  /// The URI referencing the template.
  final pulumi.Input<TemplateLinkResponse> templateLink;

  /// The timestamp of the template deployment.
  final pulumi.Input<String> timestamp;

  /// Array of validated resources.
  final pulumi.Input<List<ResourceReferenceResponse>> validatedResources;

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
      'debugSetting':
          pulumi.Input.mapInputValue<
            DebugSettingResponse,
            Map<String, dynamic>
          >(debugSetting, (value) => value.toMap()),
      'dependencies':
          pulumi.Input.mapInputValue<
            List<DependencyResponse>,
            List<Map<String, dynamic>>
          >(
            dependencies,
            (value) =>
                pulumi.Input.encodeList<
                  DependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'duration': duration,
      'error':
          pulumi.Input.mapInputValue<
            ErrorResponseResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'mode': mode,
      'onErrorDeployment':
          pulumi.Input.mapInputValue<
            OnErrorDeploymentExtendedResponse,
            Map<String, dynamic>
          >(onErrorDeployment, (value) => value.toMap()),
      'outputResources':
          pulumi.Input.mapInputValue<
            List<ResourceReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            outputResources,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'outputs': outputs,
      'parameters': parameters,
      'parametersLink':
          pulumi.Input.mapInputValue<
            ParametersLinkResponse,
            Map<String, dynamic>
          >(parametersLink, (value) => value.toMap()),
      'providers':
          pulumi.Input.mapInputValue<
            List<ProviderResponse>,
            List<Map<String, dynamic>>
          >(
            providers,
            (value) =>
                pulumi.Input.encodeList<ProviderResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'provisioningState': provisioningState,
      'templateHash': templateHash,
      'templateLink':
          pulumi.Input.mapInputValue<
            TemplateLinkResponse,
            Map<String, dynamic>
          >(templateLink, (value) => value.toMap()),
      'timestamp': timestamp,
      'validatedResources':
          pulumi.Input.mapInputValue<
            List<ResourceReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            validatedResources,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DeploymentPropertiesExtendedResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentPropertiesExtendedResponse(
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      debugSetting: pulumi.Input.fromValue(
        DebugSettingResponse.fromMap(
          (map['debugSetting']! as Map).cast<String, dynamic>(),
        ),
      ),
      dependencies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DependencyResponse>(
          map['dependencies']!,
          (value) => DependencyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      error: pulumi.Input.fromValue(
        ErrorResponseResponse.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      onErrorDeployment: pulumi.Input.fromValue(
        OnErrorDeploymentExtendedResponse.fromMap(
          (map['onErrorDeployment']! as Map).cast<String, dynamic>(),
        ),
      ),
      outputResources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ResourceReferenceResponse>(
          map['outputResources']!,
          (value) => ResourceReferenceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      outputs: pulumi.Input.fromValue(map['outputs']),
      parameters: pulumi.Input.fromValue(map['parameters']),
      parametersLink: pulumi.Input.fromValue(
        ParametersLinkResponse.fromMap(
          (map['parametersLink']! as Map).cast<String, dynamic>(),
        ),
      ),
      providers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ProviderResponse>(
          map['providers']!,
          (value) =>
              ProviderResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      templateHash: pulumi.Input.fromValue(map['templateHash'] as String),
      templateLink: pulumi.Input.fromValue(
        TemplateLinkResponse.fromMap(
          (map['templateLink']! as Map).cast<String, dynamic>(),
        ),
      ),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
      validatedResources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ResourceReferenceResponse>(
          map['validatedResources']!,
          (value) => ResourceReferenceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
