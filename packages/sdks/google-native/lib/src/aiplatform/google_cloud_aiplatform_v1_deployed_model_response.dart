// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_automatic_resources_response.dart';
import 'google_cloud_aiplatform_v1_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1_private_endpoints_response.dart';

/// A deployment of a Model. Endpoints contain one or more DeployedModels.
class GoogleCloudAiplatformV1DeployedModelResponse {
  /// A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  final GoogleCloudAiplatformV1AutomaticResourcesResponse automaticResources;
  /// Timestamp when the DeployedModel was created.
  final String createTime;
  /// A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  final GoogleCloudAiplatformV1DedicatedResourcesResponse dedicatedResources;
  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final bool disableContainerLogging;
  /// The display name of the DeployedModel. If not provided upon creation, the Model's display_name is used.
  final String displayName;
  /// If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  final bool enableAccessLogging;
  /// Explanation configuration for this DeployedModel. When deploying a Model using EndpointService.DeployModel, this value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of explanation_spec is not populated, the value of the same field of Model.explanation_spec is inherited. If the corresponding Model.explanation_spec is not populated, all fields of the explanation_spec will be used for the explanation configuration.
  final GoogleCloudAiplatformV1ExplanationSpecResponse explanationSpec;
  /// The resource name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint. The resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed.
  final String model;
  /// The version ID of the model that is deployed.
  final String modelVersionId;
  /// Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  final GoogleCloudAiplatformV1PrivateEndpointsResponse privateEndpoints;
  /// The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final String serviceAccount;

  /// Creates a new [GoogleCloudAiplatformV1DeployedModelResponse].
  /// [automaticResources] A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  /// [createTime] Timestamp when the DeployedModel was created.
  /// [dedicatedResources] A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  /// [disableContainerLogging] For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  /// [displayName] The display name of the DeployedModel. If not provided upon creation, the Model's display_name is used.
  /// [enableAccessLogging] If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  /// [explanationSpec] Explanation configuration for this DeployedModel. When deploying a Model using EndpointService.DeployModel, this value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of explanation_spec is not populated, the value of the same field of Model.explanation_spec is inherited. If the corresponding Model.explanation_spec is not populated, all fields of the explanation_spec will be used for the explanation configuration.
  /// [model] The resource name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint. The resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed.
  /// [modelVersionId] The version ID of the model that is deployed.
  /// [privateEndpoints] Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  /// [serviceAccount] The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  GoogleCloudAiplatformV1DeployedModelResponse({
    required this.automaticResources,
    required this.createTime,
    required this.dedicatedResources,
    required this.disableContainerLogging,
    required this.displayName,
    required this.enableAccessLogging,
    required this.explanationSpec,
    required this.model,
    required this.modelVersionId,
    required this.privateEndpoints,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': automaticResources.toMap(),
      'createTime': createTime,
      'dedicatedResources': dedicatedResources.toMap(),
      'disableContainerLogging': disableContainerLogging,
      'displayName': displayName,
      'enableAccessLogging': enableAccessLogging,
      'explanationSpec': explanationSpec.toMap(),
      'model': model,
      'modelVersionId': modelVersionId,
      'privateEndpoints': privateEndpoints.toMap(),
      'serviceAccount': serviceAccount,
    };
  }

  factory GoogleCloudAiplatformV1DeployedModelResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedModelResponse(
      automaticResources: GoogleCloudAiplatformV1AutomaticResourcesResponse.fromMap((map['automaticResources'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dedicatedResources: GoogleCloudAiplatformV1DedicatedResourcesResponse.fromMap((map['dedicatedResources'] as Map).cast<String, dynamic>()),
      disableContainerLogging: map['disableContainerLogging'] as bool,
      displayName: map['displayName'] as String,
      enableAccessLogging: map['enableAccessLogging'] as bool,
      explanationSpec: GoogleCloudAiplatformV1ExplanationSpecResponse.fromMap((map['explanationSpec'] as Map).cast<String, dynamic>()),
      model: map['model'] as String,
      modelVersionId: map['modelVersionId'] as String,
      privateEndpoints: GoogleCloudAiplatformV1PrivateEndpointsResponse.fromMap((map['privateEndpoints'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}

