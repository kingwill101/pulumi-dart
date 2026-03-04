// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_encryption_spec.dart';
import 'ai_endpoint_predict_request_response_logging_config.dart';
import 'ai_endpoint_private_service_connect_config.dart';

/// {@template pulumi_vertex_ai_endpoint_ai_endpoint_args_doc}
/// The set of arguments for AiEndpoint.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_ai_endpoint_args_doc}
class AiEndpointArgs {
  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  final pulumi.Input<bool>? dedicatedEndpointEnabled;

  /// The description of the Endpoint.
  final pulumi.Input<String>? description;

  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointEncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  final pulumi.Input<String>? name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  final pulumi.Input<String>? network;

  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointPredictRequestResponseLoggingConfig>?
  predictRequestResponseLoggingConfig;

  /// Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointPrivateServiceConnectConfig>?
  privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region for the resource
  final pulumi.Input<String>? region;

  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// &gt; **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  final pulumi.Input<String>? trafficSplit;

  /// Creates a new [AiEndpointArgs].
  /// [dedicatedEndpointEnabled] If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  /// [description] The description of the Endpoint.
  /// [displayName] Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] The location for the resource
  /// [name] The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  /// [predictRequestResponseLoggingConfig] Configures the request-response logging for online prediction.
  /// [privateServiceConnectConfig] Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region for the resource
  /// [trafficSplit] A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  AiEndpointArgs({
    this.dedicatedEndpointEnabled,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    required this.location,
    this.name,
    this.network,
    this.predictRequestResponseLoggingConfig,
    this.privateServiceConnectConfig,
    this.project,
    this.region,
    this.trafficSplit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedEndpointEnabled': ?dedicatedEndpointEnabled,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'network': ?network,
      'predictRequestResponseLoggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointPredictRequestResponseLoggingConfig,
            Map<String, dynamic>
          >(predictRequestResponseLoggingConfig, (value) => value.toMap()),
      'privateServiceConnectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointPrivateServiceConnectConfig,
            Map<String, dynamic>
          >(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'trafficSplit': ?trafficSplit,
    };
  }

  factory AiEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointArgs(
      dedicatedEndpointEnabled: (() {
        final guardedValue = map['dedicatedEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiEndpointEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predictRequestResponseLoggingConfig: (() {
        final guardedValue = map['predictRequestResponseLoggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiEndpointPredictRequestResponseLoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateServiceConnectConfig: (() {
        final guardedValue = map['privateServiceConnectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiEndpointPrivateServiceConnectConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficSplit: (() {
        final guardedValue = map['trafficSplit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
