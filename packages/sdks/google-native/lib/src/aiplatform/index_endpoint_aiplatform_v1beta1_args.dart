// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_private_service_connect_config.dart';

/// {@template pulumi_aiplatform_v1beta1_index_endpoint_aiplatform_v1beta1_args_doc}
/// The set of arguments for IndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_index_endpoint_aiplatform_v1beta1_args_doc}
class IndexEndpointAiplatformV1beta1Args {
  /// The description of the IndexEndpoint.
  final pulumi.Input<String>? description;
  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final pulumi.Input<bool>? enablePrivateServiceConnect;
  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  final pulumi.Input<String>? network;
  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig>? privateServiceConnectConfig;
  final pulumi.Input<String>? project;
  /// Optional. If true, the deployed index will be accessible through public endpoint.
  final pulumi.Input<bool>? publicEndpointEnabled;

  /// Creates a new [IndexEndpointAiplatformV1beta1Args].
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
  IndexEndpointAiplatformV1beta1Args({
    this.description,
    required this.displayName,
    this.enablePrivateServiceConnect,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.location,
    this.network,
    this.privateServiceConnectConfig,
    this.project,
    this.publicEndpointEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'enablePrivateServiceConnect': ?enablePrivateServiceConnect,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'network': ?network,
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'publicEndpointEnabled': ?publicEndpointEnabled,
    };
  }

  factory IndexEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexEndpointAiplatformV1beta1Args(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] == null ? null : (map['enablePrivateServiceConnect'] as bool).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null ? null : (GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig.fromMap((map['privateServiceConnectConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : (map['publicEndpointEnabled'] as bool).input(),
    );
  }
}

