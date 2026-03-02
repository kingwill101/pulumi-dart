// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_federation_backend_metastore.dart';

/// Input properties used for looking up and filtering MetastoreFederation resources.
class MetastoreFederationState {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// Structure is documented below.
  final pulumi.Input<List<MetastoreFederationBackendMetastore>>? backendMetastores;
  /// Output only. The time when the metastore federation was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The URI of the endpoint used to access the metastore federation.
  final pulumi.Input<String>? endpointUri;
  /// The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final pulumi.Input<String>? federationId;
  /// User-defined labels for the metastore federation.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the metastore federation should reside.
  final pulumi.Input<String>? location;
  /// The relative resource name of the metastore federation.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the metastore federation.
  final pulumi.Input<String>? state;
  /// Additional information about the current state of the metastore federation, if available.
  final pulumi.Input<String>? stateMessage;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;
  /// The globally unique resource identifier of the metastore federation.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the metastore federation was last updated.
  final pulumi.Input<String>? updateTime;
  /// The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final pulumi.Input<String>? version;

  /// Creates a new [MetastoreFederationState].
  /// [backendMetastores] A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// [createTime] Output only. The time when the metastore federation was created.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpointUri] The URI of the endpoint used to access the metastore federation.
  /// [federationId] The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [labels] User-defined labels for the metastore federation.
  /// [location] The location where the metastore federation should reside.
  /// [name] The relative resource name of the metastore federation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The current state of the metastore federation.
  /// [stateMessage] Additional information about the current state of the metastore federation, if available.
  /// [tags] A map of resource manager tags.
  /// [uid] The globally unique resource identifier of the metastore federation.
  /// [updateTime] Output only. The time when the metastore federation was last updated.
  /// [version] The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  MetastoreFederationState({
    this.backendMetastores,
    this.createTime,
    this.deletionProtection,
    this.effectiveLabels,
    this.endpointUri,
    this.federationId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateMessage,
    this.tags,
    this.uid,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendMetastores': ?pulumi.Input.mapOptionalInputValue<List<MetastoreFederationBackendMetastore>, List<Map<String, dynamic>>>(backendMetastores, (value) => pulumi.Input.encodeList<MetastoreFederationBackendMetastore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'endpointUri': ?endpointUri,
      'federationId': ?federationId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory MetastoreFederationState.fromMap(Map<String, dynamic> map) {
    return MetastoreFederationState(
      backendMetastores: map['backendMetastores'] == null ? null : (pulumi.Input.decodeList<MetastoreFederationBackendMetastore>(map['backendMetastores']!, (value) => MetastoreFederationBackendMetastore.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      federationId: map['federationId'] == null ? null : (map['federationId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      stateMessage: map['stateMessage'] == null ? null : (map['stateMessage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

