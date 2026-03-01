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
    pulumi.Output<List<MetastoreFederationBackendMetastore>>? backendMetastores,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? endpointUri,
    pulumi.Output<String>? federationId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? version,
  }) :
      backendMetastores = pulumi.Input.asOptionalInput<List<MetastoreFederationBackendMetastore>>(backendMetastores),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpointUri = pulumi.Input.asOptionalInput<String>(endpointUri),
      federationId = pulumi.Input.asOptionalInput<String>(federationId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      backendMetastores: map['backendMetastores'] == null ? null : pulumi.Output.create<List<MetastoreFederationBackendMetastore>>(pulumi.Input.decodeList<MetastoreFederationBackendMetastore>(map['backendMetastores'], (value) => MetastoreFederationBackendMetastore.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpointUri: map['endpointUri'] == null ? null : pulumi.Output.create<String>(map['endpointUri'] as String),
      federationId: map['federationId'] == null ? null : pulumi.Output.create<String>(map['federationId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

