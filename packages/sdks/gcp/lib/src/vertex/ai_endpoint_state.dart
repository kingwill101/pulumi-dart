// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_deployed_model.dart';
import 'ai_endpoint_encryption_spec.dart';
import 'ai_endpoint_predict_request_response_logging_config.dart';
import 'ai_endpoint_private_service_connect_config.dart';

/// Input properties used for looking up and filtering AiEndpoint resources.
class AiEndpointState {
  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  final pulumi.Input<String>? createTime;
  /// Output only. DNS of the dedicated endpoint. Will only be populated if dedicatedEndpointEnabled is true. Format: `https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog`.
  final pulumi.Input<String>? dedicatedEndpointDns;
  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  final pulumi.Input<bool>? dedicatedEndpointEnabled;
  /// Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively. Models can also be deployed and undeployed using the [Cloud Console](https://console.cloud.google.com/vertex-ai/).
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointDeployedModel>>? deployedModels;
  /// The description of the Endpoint.
  final pulumi.Input<String>? description;
  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointEncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  final pulumi.Input<String>? modelDeploymentMonitoringJob;
  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  final pulumi.Input<String>? name;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  final pulumi.Input<String>? network;
  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointPredictRequestResponseLoggingConfig>? predictRequestResponseLoggingConfig;
  /// Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointPrivateServiceConnectConfig>? privateServiceConnectConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region for the resource
  final pulumi.Input<String>? region;
  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// &gt; **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  final pulumi.Input<String>? trafficSplit;
  /// Output only. Timestamp when this Endpoint was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiEndpointState].
  /// [createTime] (Output)
  /// [dedicatedEndpointDns] Output only. DNS of the dedicated endpoint. Will only be populated if dedicatedEndpointEnabled is true. Format: `https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog`.
  /// [dedicatedEndpointEnabled] If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  /// [deployedModels] Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively. Models can also be deployed and undeployed using the [Cloud Console](https://console.cloud.google.com/vertex-ai/).
  /// [description] The description of the Endpoint.
  /// [displayName] Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] The location for the resource
  /// [modelDeploymentMonitoringJob] Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  /// [name] The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  /// [predictRequestResponseLoggingConfig] Configures the request-response logging for online prediction.
  /// [privateServiceConnectConfig] Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region for the resource
  /// [trafficSplit] A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// [updateTime] Output only. Timestamp when this Endpoint was last updated.
  AiEndpointState({
    this.createTime,
    this.dedicatedEndpointDns,
    this.dedicatedEndpointEnabled,
    this.deployedModels,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.location,
    this.modelDeploymentMonitoringJob,
    this.name,
    this.network,
    this.predictRequestResponseLoggingConfig,
    this.privateServiceConnectConfig,
    this.project,
    this.pulumiLabels,
    this.region,
    this.trafficSplit,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dedicatedEndpointDns': ?dedicatedEndpointDns,
      'dedicatedEndpointEnabled': ?dedicatedEndpointEnabled,
      'deployedModels': ?pulumi.Input.mapOptionalInputValue<List<AiEndpointDeployedModel>, List<Map<String, dynamic>>>(deployedModels, (value) => pulumi.Input.encodeList<AiEndpointDeployedModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiEndpointEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'modelDeploymentMonitoringJob': ?modelDeploymentMonitoringJob,
      'name': ?name,
      'network': ?network,
      'predictRequestResponseLoggingConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointPredictRequestResponseLoggingConfig, Map<String, dynamic>>(predictRequestResponseLoggingConfig, (value) => value.toMap()),
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointPrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'trafficSplit': ?trafficSplit,
      'updateTime': ?updateTime,
    };
  }

  factory AiEndpointState.fromMap(Map<String, dynamic> map) {
    return AiEndpointState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedEndpointDns: (() { final guardedValue = map['dedicatedEndpointDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedEndpointEnabled: (() { final guardedValue = map['dedicatedEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployedModels: (() { final guardedValue = map['deployedModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEndpointDeployedModel>(guardedValue, (value) => AiEndpointDeployedModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelDeploymentMonitoringJob: (() { final guardedValue = map['modelDeploymentMonitoringJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictRequestResponseLoggingConfig: (() { final guardedValue = map['predictRequestResponseLoggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointPredictRequestResponseLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateServiceConnectConfig: (() { final guardedValue = map['privateServiceConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficSplit: (() { final guardedValue = map['trafficSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

