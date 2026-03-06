// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_deployed_index_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_private_service_connect_config_response.dart';

/// Result data returned by getIndexEndpoint.
class GetIndexEndpointResult {
  /// Timestamp when this IndexEndpoint was created.
  final String createTime;
  /// The indexes deployed in this endpoint.
  final List<GoogleCloudAiplatformV1DeployedIndexResponse> deployedIndexes;
  /// The description of the IndexEndpoint.
  final String description;
  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;
  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final bool enablePrivateServiceConnect;
  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;
  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;
  /// The resource name of the IndexEndpoint.
  final String name;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  final String network;
  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  final GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse privateServiceConnectConfig;
  /// If public_endpoint_enabled is true, this field will be populated with the domain name to use for this index endpoint.
  final String publicEndpointDomainName;
  /// Optional. If true, the deployed index will be accessible through public endpoint.
  final bool publicEndpointEnabled;
  /// Timestamp when this IndexEndpoint was last updated. This timestamp is not updated when the endpoint's DeployedIndexes are updated, e.g. due to updates of the original Indexes they are the deployments of.
  final String updateTime;

  /// Creates a new [GetIndexEndpointResult].
  /// [createTime] Timestamp when this IndexEndpoint was created.
  /// [deployedIndexes] The indexes deployed in this endpoint.
  /// [description] The description of the IndexEndpoint.
  /// [displayName] The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enablePrivateServiceConnect] Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  /// [encryptionSpec] Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [name] The resource name of the IndexEndpoint.
  /// [network] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  /// [privateServiceConnectConfig] Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  /// [publicEndpointDomainName] If public_endpoint_enabled is true, this field will be populated with the domain name to use for this index endpoint.
  /// [publicEndpointEnabled] Optional. If true, the deployed index will be accessible through public endpoint.
  /// [updateTime] Timestamp when this IndexEndpoint was last updated. This timestamp is not updated when the endpoint's DeployedIndexes are updated, e.g. due to updates of the original Indexes they are the deployments of.
  const GetIndexEndpointResult({
    required this.createTime,
    required this.deployedIndexes,
    required this.description,
    required this.displayName,
    required this.enablePrivateServiceConnect,
    required this.encryptionSpec,
    required this.etag,
    required this.labels,
    required this.name,
    required this.network,
    required this.privateServiceConnectConfig,
    required this.publicEndpointDomainName,
    required this.publicEndpointEnabled,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deployedIndexes': pulumi.Input.encodeList<GoogleCloudAiplatformV1DeployedIndexResponse, Map<String, dynamic>>(deployedIndexes, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'encryptionSpec': encryptionSpec.toMap(),
      'etag': etag,
      'labels': labels,
      'name': name,
      'network': network,
      'privateServiceConnectConfig': privateServiceConnectConfig.toMap(),
      'publicEndpointDomainName': publicEndpointDomainName,
      'publicEndpointEnabled': publicEndpointEnabled,
      'updateTime': updateTime,
    };
  }

  factory GetIndexEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointResult(
      createTime: map['createTime'] as String,
      deployedIndexes: pulumi.Input.decodeList<GoogleCloudAiplatformV1DeployedIndexResponse>(map['deployedIndexes']!, (value) => GoogleCloudAiplatformV1DeployedIndexResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      privateServiceConnectConfig: GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse.fromMap((map['privateServiceConnectConfig']! as Map).cast<String, dynamic>()),
      publicEndpointDomainName: map['publicEndpointDomainName'] as String,
      publicEndpointEnabled: map['publicEndpointEnabled'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}

