// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_encryption_spec.dart';
import 'ai_index_endpoint_private_service_connect_config.dart';

/// Input properties used for looking up and filtering AiIndexEndpoint resources.
class AiIndexEndpointState {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;

  /// The description of the Index.
  final pulumi.Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointEncryptionSpec>? encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name of the Index.
  final pulumi.Input<String>? name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final pulumi.Input<String>? network;

  /// Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointPrivateServiceConnectConfig>?
  privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// If publicEndpointEnabled is true, this field will be populated with the domain name to use for this index endpoint.
  final pulumi.Input<String>? publicEndpointDomainName;

  /// If true, the deployed index will be accessible through public endpoint.
  final pulumi.Input<bool>? publicEndpointEnabled;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// The region of the index endpoint. eg us-central1
  final pulumi.Input<String>? region;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiIndexEndpointState].
  /// [createTime] The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [name] The resource name of the Index.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// [privateServiceConnectConfig] Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicEndpointDomainName] If publicEndpointEnabled is true, this field will be populated with the domain name to use for this index endpoint.
  /// [publicEndpointEnabled] If true, the deployed index will be accessible through public endpoint.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the index endpoint. eg us-central1
  /// [updateTime] The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiIndexEndpointState({
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.name,
    this.network,
    this.privateServiceConnectConfig,
    this.project,
    this.publicEndpointDomainName,
    this.publicEndpointEnabled,
    this.pulumiLabels,
    this.region,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiIndexEndpointEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'privateServiceConnectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiIndexEndpointPrivateServiceConnectConfig,
            Map<String, dynamic>
          >(privateServiceConnectConfig, (value) => value.toMap()),
      'project': ?project,
      'publicEndpointDomainName': ?publicEndpointDomainName,
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory AiIndexEndpointState.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiIndexEndpointEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
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
      privateServiceConnectConfig: (() {
        final guardedValue = map['privateServiceConnectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiIndexEndpointPrivateServiceConnectConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicEndpointDomainName: (() {
        final guardedValue = map['publicEndpointDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicEndpointEnabled: (() {
        final guardedValue = map['publicEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
