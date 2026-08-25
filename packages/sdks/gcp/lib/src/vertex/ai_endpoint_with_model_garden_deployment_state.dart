// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import 'ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config.dart';

/// Input properties used for looking up and filtering AiEndpointWithModelGardenDeployment resources.
class AiEndpointWithModelGardenDeploymentState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfig?>? deployConfig;
  /// Output only. The display name assigned to the model deployed to the endpoint.
  /// This is not required to delete the resource but is used for debug logging.
  final pulumi.Input<String?>? deployedModelDisplayName;
  /// Output only. The unique numeric ID that Vertex AI assigns to the model at the time it is deployed to the endpoint.
  /// It is required to undeploy the model from the endpoint during resource deletion as described in
  /// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/undeployModel.
  final pulumi.Input<String?>? deployedModelId;
  /// Resource ID segment making up resource `endpoint`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? endpoint;
  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentEndpointConfig?>? endpointConfig;
  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  final pulumi.Input<String?>? huggingFaceModelId;
  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The model config to use for the deployment.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfig?>? modelConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Model Garden model to deploy.
  /// Format:
  /// `publishers/{publisher}/models/{publisher_model}@{version_id}`, or
  /// `publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001`.
  final pulumi.Input<String?>? publisherModelName;

  /// Creates a new [AiEndpointWithModelGardenDeploymentState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const AiEndpointWithModelGardenDeploymentState({
    this.deletionPolicy,
    this.deployConfig,
    this.deployedModelDisplayName,
    this.deployedModelId,
    this.endpoint,
    this.endpointConfig,
    this.huggingFaceModelId,
    this.location,
    this.modelConfig,
    this.project,
    this.publisherModelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployConfig: (() { final guardedValue = map['deployConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentDeployConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployedModelDisplayName: (() { final guardedValue = map['deployedModelDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployedModelId: (() { final guardedValue = map['deployedModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointConfig: (() { final guardedValue = map['endpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      huggingFaceModelId: (() { final guardedValue = map['huggingFaceModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelConfig: (() { final guardedValue = map['modelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherModelName: (() { final guardedValue = map['publisherModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
