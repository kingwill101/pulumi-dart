// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import 'ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config.dart';

/// Input properties used for looking up and filtering AiEndpointWithModelGardenDeployment resources.
class AiEndpointWithModelGardenDeploymentState {
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfig>? deployConfig;
  /// Output only. The display name assigned to the model deployed to the endpoint.
  /// This is not required to delete the resource but is used for debug logging.
  final pulumi.Input<String>? deployedModelDisplayName;
  /// Output only. The unique numeric ID that Vertex AI assigns to the model at the time it is deployed to the endpoint.
  /// It is required to undeploy the model from the endpoint during resource deletion as described in
  /// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/undeployModel.
  final pulumi.Input<String>? deployedModelId;
  /// Resource ID segment making up resource `endpoint`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? endpoint;
  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentEndpointConfig>? endpointConfig;
  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  final pulumi.Input<String>? huggingFaceModelId;
  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
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

  /// Creates a new [AiEndpointWithModelGardenDeploymentState].
  /// [deployConfig] The deploy config to use for the deployment.
  /// [deployedModelDisplayName] Output only. The display name assigned to the model deployed to the endpoint.
  /// [deployedModelId] Output only. The unique numeric ID that Vertex AI assigns to the model at the time it is deployed to the endpoint.
  /// [endpoint] Resource ID segment making up resource `endpoint`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [endpointConfig] The endpoint config to use for the deployment.
  /// [huggingFaceModelId] The Hugging Face model to deploy.
  /// [location] Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelConfig] The model config to use for the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [publisherModelName] The Model Garden model to deploy.
  AiEndpointWithModelGardenDeploymentState({
    pulumi.Output<AiEndpointWithModelGardenDeploymentDeployConfig>? deployConfig,
    pulumi.Output<String>? deployedModelDisplayName,
    pulumi.Output<String>? deployedModelId,
    pulumi.Output<String>? endpoint,
    pulumi.Output<AiEndpointWithModelGardenDeploymentEndpointConfig>? endpointConfig,
    pulumi.Output<String>? huggingFaceModelId,
    pulumi.Output<String>? location,
    pulumi.Output<AiEndpointWithModelGardenDeploymentModelConfig>? modelConfig,
    pulumi.Output<String>? project,
    pulumi.Output<String>? publisherModelName,
  }) :
      deployConfig = pulumi.Input.asOptionalInput<AiEndpointWithModelGardenDeploymentDeployConfig>(deployConfig),
      deployedModelDisplayName = pulumi.Input.asOptionalInput<String>(deployedModelDisplayName),
      deployedModelId = pulumi.Input.asOptionalInput<String>(deployedModelId),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      endpointConfig = pulumi.Input.asOptionalInput<AiEndpointWithModelGardenDeploymentEndpointConfig>(endpointConfig),
      huggingFaceModelId = pulumi.Input.asOptionalInput<String>(huggingFaceModelId),
      location = pulumi.Input.asOptionalInput<String>(location),
      modelConfig = pulumi.Input.asOptionalInput<AiEndpointWithModelGardenDeploymentModelConfig>(modelConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      publisherModelName = pulumi.Input.asOptionalInput<String>(publisherModelName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentDeployConfig, Map<String, dynamic>>(deployConfig, (value) => value.toMap()),
      'deployedModelDisplayName': ?deployedModelDisplayName,
      'deployedModelId': ?deployedModelId,
      'endpoint': ?endpoint,
      'endpointConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentEndpointConfig, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'huggingFaceModelId': ?huggingFaceModelId,
      'location': ?location,
      'modelConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfig, Map<String, dynamic>>(modelConfig, (value) => value.toMap()),
      'project': ?project,
      'publisherModelName': ?publisherModelName,
    };
  }

  factory AiEndpointWithModelGardenDeploymentState.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentState(
      deployConfig: map['deployConfig'] == null ? null : pulumi.Output.create<AiEndpointWithModelGardenDeploymentDeployConfig>(AiEndpointWithModelGardenDeploymentDeployConfig.fromMap((map['deployConfig'] as Map).cast<String, dynamic>())),
      deployedModelDisplayName: map['deployedModelDisplayName'] == null ? null : pulumi.Output.create<String>(map['deployedModelDisplayName'] as String),
      deployedModelId: map['deployedModelId'] == null ? null : pulumi.Output.create<String>(map['deployedModelId'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      endpointConfig: map['endpointConfig'] == null ? null : pulumi.Output.create<AiEndpointWithModelGardenDeploymentEndpointConfig>(AiEndpointWithModelGardenDeploymentEndpointConfig.fromMap((map['endpointConfig'] as Map).cast<String, dynamic>())),
      huggingFaceModelId: map['huggingFaceModelId'] == null ? null : pulumi.Output.create<String>(map['huggingFaceModelId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      modelConfig: map['modelConfig'] == null ? null : pulumi.Output.create<AiEndpointWithModelGardenDeploymentModelConfig>(AiEndpointWithModelGardenDeploymentModelConfig.fromMap((map['modelConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publisherModelName: map['publisherModelName'] == null ? null : pulumi.Output.create<String>(map['publisherModelName'] as String),
    );
  }
}

