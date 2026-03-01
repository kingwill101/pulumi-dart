// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_private_service_connect_config.dart';

/// {@template pulumi_aiplatform_v1_index_endpoint_args_doc}
/// The set of arguments for IndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_index_endpoint_args_doc}
class IndexEndpointArgs {
  /// The description of the IndexEndpoint.
  final pulumi.Input<String>? description;
  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final pulumi.Input<bool>? enablePrivateServiceConnect;
  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  final pulumi.Input<String>? network;
  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  final pulumi.Input<GoogleCloudAiplatformV1PrivateServiceConnectConfig>? privateServiceConnectConfig;
  final pulumi.Input<String>? project;
  /// Optional. If true, the deployed index will be accessible through public endpoint.
  final pulumi.Input<bool>? publicEndpointEnabled;

  /// Creates a new [IndexEndpointArgs].
  /// [description] The description of the IndexEndpoint.
  /// [displayName] The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enablePrivateServiceConnect] Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  /// [encryptionSpec] Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [network] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  /// [privateServiceConnectConfig] Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  /// [project] Optional.
  /// [publicEndpointEnabled] Optional. If true, the deployed index will be accessible through public endpoint.
  IndexEndpointArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enablePrivateServiceConnect,
    pulumi.Output<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? network,
    pulumi.Output<GoogleCloudAiplatformV1PrivateServiceConnectConfig>? privateServiceConnectConfig,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? publicEndpointEnabled,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enablePrivateServiceConnect = pulumi.Input.asOptionalInput<bool>(enablePrivateServiceConnect),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      network = pulumi.Input.asOptionalInput<String>(network),
      privateServiceConnectConfig = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1PrivateServiceConnectConfig>(privateServiceConnectConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      publicEndpointEnabled = pulumi.Input.asOptionalInput<bool>(publicEndpointEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'enablePrivateServiceConnect': ?enablePrivateServiceConnect,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'network': ?network,
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'publicEndpointEnabled': ?publicEndpointEnabled,
    };
  }

  factory IndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return IndexEndpointArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] == null ? null : pulumi.Output.create<bool>(map['enablePrivateServiceConnect'] as bool),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1EncryptionSpec>(GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1PrivateServiceConnectConfig>(GoogleCloudAiplatformV1PrivateServiceConnectConfig.fromMap((map['privateServiceConnectConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicEndpointEnabled'] as bool),
    );
  }
}

