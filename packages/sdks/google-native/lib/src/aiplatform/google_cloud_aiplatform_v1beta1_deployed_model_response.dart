// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_automatic_resources_response.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_private_endpoints_response.dart';

/// A deployment of a Model. Endpoints contain one or more DeployedModels.
class GoogleCloudAiplatformV1beta1DeployedModelResponse {
  /// A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1AutomaticResourcesResponse> automaticResources;
  /// Timestamp when the DeployedModel was created.
  final pulumi.Input<String> createTime;
  /// A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse> dedicatedResources;
  /// If true, deploy the model without explainable feature, regardless the existence of Model.explanation_spec or explanation_spec.
  final pulumi.Input<bool> disableExplanations;
  /// The display name of the DeployedModel. If not provided upon creation, the Model's display_name is used.
  final pulumi.Input<String> displayName;
  /// If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  final pulumi.Input<bool> enableAccessLogging;
  /// If true, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging. Only supported for custom-trained Models and AutoML Tabular Models.
  final pulumi.Input<bool> enableContainerLogging;
  /// Explanation configuration for this DeployedModel. When deploying a Model using EndpointService.DeployModel, this value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of explanation_spec is not populated, the value of the same field of Model.explanation_spec is inherited. If the corresponding Model.explanation_spec is not populated, all fields of the explanation_spec will be used for the explanation configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExplanationSpecResponse> explanationSpec;
  /// The resource name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint. The resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed.
  final pulumi.Input<String> model;
  /// The version ID of the model that is deployed.
  final pulumi.Input<String> modelVersionId;
  /// Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PrivateEndpointsResponse> privateEndpoints;
  /// The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String> serviceAccount;
  /// The resource name of the shared DeploymentResourcePool to deploy on. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final pulumi.Input<String> sharedResources;

  /// Creates a new [GoogleCloudAiplatformV1beta1DeployedModelResponse].
  /// [automaticResources] A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  /// [createTime] Timestamp when the DeployedModel was created.
  /// [dedicatedResources] A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  /// [disableExplanations] If true, deploy the model without explainable feature, regardless the existence of Model.explanation_spec or explanation_spec.
  /// [displayName] The display name of the DeployedModel. If not provided upon creation, the Model's display_name is used.
  /// [enableAccessLogging] If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  /// [enableContainerLogging] If true, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging. Only supported for custom-trained Models and AutoML Tabular Models.
  /// [explanationSpec] Explanation configuration for this DeployedModel. When deploying a Model using EndpointService.DeployModel, this value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of explanation_spec is not populated, the value of the same field of Model.explanation_spec is inherited. If the corresponding Model.explanation_spec is not populated, all fields of the explanation_spec will be used for the explanation configuration.
  /// [model] The resource name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint. The resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed.
  /// [modelVersionId] The version ID of the model that is deployed.
  /// [privateEndpoints] Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  /// [serviceAccount] The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [sharedResources] The resource name of the shared DeploymentResourcePool to deploy on. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  const GoogleCloudAiplatformV1beta1DeployedModelResponse({
    required this.automaticResources,
    required this.createTime,
    required this.dedicatedResources,
    required this.disableExplanations,
    required this.displayName,
    required this.enableAccessLogging,
    required this.enableContainerLogging,
    required this.explanationSpec,
    required this.model,
    required this.modelVersionId,
    required this.privateEndpoints,
    required this.serviceAccount,
    required this.sharedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1AutomaticResourcesResponse, Map<String, dynamic>>(automaticResources, (value) => value.toMap()),
      'createTime': createTime,
      'dedicatedResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'disableExplanations': disableExplanations,
      'displayName': displayName,
      'enableAccessLogging': enableAccessLogging,
      'enableContainerLogging': enableContainerLogging,
      'explanationSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ExplanationSpecResponse, Map<String, dynamic>>(explanationSpec, (value) => value.toMap()),
      'model': model,
      'modelVersionId': modelVersionId,
      'privateEndpoints': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PrivateEndpointsResponse, Map<String, dynamic>>(privateEndpoints, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'sharedResources': sharedResources,
    };
  }

  factory GoogleCloudAiplatformV1beta1DeployedModelResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DeployedModelResponse(
      automaticResources: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1AutomaticResourcesResponse.fromMap((map['automaticResources']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dedicatedResources: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap((map['dedicatedResources']! as Map).cast<String, dynamic>())),
      disableExplanations: pulumi.Input.fromValue(map['disableExplanations'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableAccessLogging: pulumi.Input.fromValue(map['enableAccessLogging'] as bool),
      enableContainerLogging: pulumi.Input.fromValue(map['enableContainerLogging'] as bool),
      explanationSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ExplanationSpecResponse.fromMap((map['explanationSpec']! as Map).cast<String, dynamic>())),
      model: pulumi.Input.fromValue(map['model'] as String),
      modelVersionId: pulumi.Input.fromValue(map['modelVersionId'] as String),
      privateEndpoints: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PrivateEndpointsResponse.fromMap((map['privateEndpoints']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      sharedResources: pulumi.Input.fromValue(map['sharedResources'] as String),
    );
  }
}
