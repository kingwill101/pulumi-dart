// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_deployed_model_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_predict_request_response_logging_config_response.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// Timestamp when this Endpoint was created.
  final String? createTime;
  /// The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively.
  final List<GoogleCloudAiplatformV1DeployedModelResponse>? deployedModels;
  /// The description of the Endpoint.
  final String? description;
  /// The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final bool? enablePrivateServiceConnect;
  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by JobService.CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  final String? modelDeploymentMonitoringJob;
  /// The resource name of the Endpoint.
  final String? name;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final String? network;
  /// Configures the request-response logging for online prediction.
  final GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse? predictRequestResponseLoggingConfig;
  /// A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  final Map<String, String>? trafficSplit;
  /// Timestamp when this Endpoint was last updated.
  final String? updateTime;

  /// Creates a new [GetEndpointResult].
  /// [createTime] Timestamp when this Endpoint was created.
  /// [deployedModels] The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively.
  /// [description] The description of the Endpoint.
  /// [displayName] The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enablePrivateServiceConnect] Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  /// [encryptionSpec] Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [modelDeploymentMonitoringJob] Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by JobService.CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  /// [name] The resource name of the Endpoint.
  /// [network] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  /// [predictRequestResponseLoggingConfig] Configures the request-response logging for online prediction.
  /// [trafficSplit] A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  /// [updateTime] Timestamp when this Endpoint was last updated.
  const GetEndpointResult({
    this.createTime,
    this.deployedModels,
    this.description,
    this.displayName,
    this.enablePrivateServiceConnect,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.modelDeploymentMonitoringJob,
    this.name,
    this.network,
    this.predictRequestResponseLoggingConfig,
    this.trafficSplit,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deployedModels': ?(() { final guardedValue = deployedModels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudAiplatformV1DeployedModelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'displayName': ?displayName,
      'enablePrivateServiceConnect': ?enablePrivateServiceConnect,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'etag': ?etag,
      'labels': ?labels,
      'modelDeploymentMonitoringJob': ?modelDeploymentMonitoringJob,
      'name': ?name,
      'network': ?network,
      'predictRequestResponseLoggingConfig': ?predictRequestResponseLoggingConfig?.toMap(),
      'trafficSplit': ?trafficSplit,
      'updateTime': ?updateTime,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployedModels: (() { final guardedValue = map['deployedModels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudAiplatformV1DeployedModelResponse>(guardedValue, (value) => GoogleCloudAiplatformV1DeployedModelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablePrivateServiceConnect: (() { final guardedValue = map['enablePrivateServiceConnect']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      modelDeploymentMonitoringJob: (() { final guardedValue = map['modelDeploymentMonitoringJob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      predictRequestResponseLoggingConfig: (() { final guardedValue = map['predictRequestResponseLoggingConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trafficSplit: (() { final guardedValue = map['trafficSplit']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
