// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectService resources.
class DataConnectServiceState {
  /// Optional. Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. [Output only] Create time stamp.
  final pulumi.Input<String>? createTime;
  /// The deletion policy for the database. Setting the field to FORCE allows the
  /// Service to be deleted even if a Schema or Connector is present. By default,
  /// the Service deletion will only succeed when no Schema or Connectors are
  /// present.
  /// Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Mutable human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// [AIP-154](https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region in which the service resides, e.g. "us-central1" or "asia-east1".
  final pulumi.Input<String>? location;
  /// Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// format:
  /// ```
  /// projects/{project}/locations/{location}/services/{service}
  /// ```
  /// Note that the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. A field that if true, indicates that the system is working update the
  /// service.
  final pulumi.Input<bool>? reconciling;
  /// Required. The ID to use for the service, which will become the final component of the
  /// service's resource name.
  final pulumi.Input<String>? serviceId;
  /// Output only. System-assigned, unique identifier.
  final pulumi.Input<String>? uid;
  /// Output only. [Output only] Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataConnectServiceState].
  /// [annotations] Optional. Stores small amounts of arbitrary data.
  /// [createTime] Output only. [Output only] Create time stamp.
  /// [deletionPolicy] The deletion policy for the database. Setting the field to FORCE allows the
  /// [displayName] Optional. Mutable human-readable name. 63 character limit.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Output only. This checksum is computed by the server based on the value of other
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The region in which the service resides, e.g. "us-central1" or "asia-east1".
  /// [name] Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. A field that if true, indicates that the system is working update the
  /// [serviceId] Required. The ID to use for the service, which will become the final component of the
  /// [uid] Output only. System-assigned, unique identifier.
  /// [updateTime] Output only. [Output only] Update time stamp.
  DataConnectServiceState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'serviceId': ?serviceId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DataConnectServiceState.fromMap(Map<String, dynamic> map) {
    return DataConnectServiceState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

