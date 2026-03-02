// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import 'ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config.dart';

/// {@template pulumi_vertex_ai_endpoint_with_model_garden_deployment_ai_endpoint_with_model_garden_deployment_args_doc}
/// The set of arguments for AiEndpointWithModelGardenDeployment.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_with_model_garden_deployment_ai_endpoint_with_model_garden_deployment_args_doc}
class AiEndpointWithModelGardenDeploymentArgs {
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfig>? deployConfig;
  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentEndpointConfig>? endpointConfig;
  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  final pulumi.Input<String>? huggingFaceModelId;
  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The model config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfig>? modelConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Model Garden model to deploy.
  /// Format:
  /// `publishers/{publisher}/models/{publisher_model}@{version_id}`, or
  /// `publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001`.
  final pulumi.Input<String>? publisherModelName;

  /// Creates a new [AiEndpointWithModelGardenDeploymentArgs].
  /// [deployConfig] The deploy config to use for the deployment.
  /// [endpointConfig] The endpoint config to use for the deployment.
  /// [huggingFaceModelId] The Hugging Face model to deploy.
  /// [location] Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelConfig] The model config to use for the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [publisherModelName] The Model Garden model to deploy.
  AiEndpointWithModelGardenDeploymentArgs({
    this.deployConfig,
    this.endpointConfig,
    this.huggingFaceModelId,
    required this.location,
    this.modelConfig,
    this.project,
    this.publisherModelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentDeployConfig, Map<String, dynamic>>(deployConfig, (value) => value.toMap()),
      'endpointConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentEndpointConfig, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'huggingFaceModelId': ?huggingFaceModelId,
      'location': location,
      'modelConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfig, Map<String, dynamic>>(modelConfig, (value) => value.toMap()),
      'project': ?project,
      'publisherModelName': ?publisherModelName,
    };
  }

  factory AiEndpointWithModelGardenDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentArgs(
      deployConfig: map['deployConfig'] == null ? null : (AiEndpointWithModelGardenDeploymentDeployConfig.fromMap((map['deployConfig']! as Map).cast<String, dynamic>())).input(),
      endpointConfig: map['endpointConfig'] == null ? null : (AiEndpointWithModelGardenDeploymentEndpointConfig.fromMap((map['endpointConfig']! as Map).cast<String, dynamic>())).input(),
      huggingFaceModelId: map['huggingFaceModelId'] == null ? null : (map['huggingFaceModelId']! as String).input(),
      location: (map['location'] as String).input(),
      modelConfig: map['modelConfig'] == null ? null : (AiEndpointWithModelGardenDeploymentModelConfig.fromMap((map['modelConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      publisherModelName: map['publisherModelName'] == null ? null : (map['publisherModelName']! as String).input(),
    );
  }
}

