// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_encryption_spec.dart';
import 'ai_index_endpoint_private_service_connect_config.dart';

/// {@template pulumi_vertex_ai_index_endpoint_ai_index_endpoint_args_doc}
/// The set of arguments for AiIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_index_endpoint_ai_index_endpoint_args_doc}
class AiIndexEndpointArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the Index.
  final pulumi.Input<String>? description;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointEncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final pulumi.Input<String>? network;
  /// Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointPrivateServiceConnectConfig>? privateServiceConnectConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If true, the deployed index will be accessible through public endpoint.
  final pulumi.Input<bool>? publicEndpointEnabled;
  /// The region of the index endpoint. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiIndexEndpointArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// [privateServiceConnectConfig] Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicEndpointEnabled] If true, the deployed index will be accessible through public endpoint.
  /// [region] The region of the index endpoint. eg us-central1
  const AiIndexEndpointArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.network,
    this.privateServiceConnectConfig,
    this.project,
    this.publicEndpointEnabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'network': ?network,
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointPrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'region': ?region,
    };
  }

  factory AiIndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEndpointEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateServiceConnectConfig: (() { final guardedValue = map['privateServiceConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEndpointPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointEnabled: (() { final guardedValue = map['publicEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
