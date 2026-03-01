// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GitRepositoryLink resources.
class GitRepositoryLinkState {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. Git Clone URI.
  final pulumi.Input<String>? cloneUri;
  /// Output only. [Output only] Create timestamp
  final pulumi.Input<String>? createTime;
  /// Output only. [Output only] Delete timestamp
  final pulumi.Input<String>? deleteTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for the repository, which will become the final component of
  /// the repository's resource name. This ID should be unique in the connection.
  /// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String>? gitRepositoryLinkId;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String>? location;
  /// Identifier. Resource name of the repository, in the format
  /// `projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
  final pulumi.Input<String>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String>? parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  final pulumi.Input<bool>? reconciling;
  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  final pulumi.Input<String>? uid;
  /// Output only. [Output only] Update timestamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GitRepositoryLinkState].
  /// [annotations] Optional. Allows clients to store small amounts of arbitrary data.
  /// [cloneUri] Required. Git Clone URI.
  /// [createTime] Output only. [Output only] Create timestamp
  /// [deleteTime] Output only. [Output only] Delete timestamp
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Optional. This checksum is computed by the server based on the value of other
  /// [gitRepositoryLinkId] Required. The ID to use for the repository, which will become the final component of
  /// [labels] Optional. Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [name] Identifier. Resource name of the repository, in the format
  /// [parentConnection] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Set to true when the connection is being set up or updated in the
  /// [uid] Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  /// [updateTime] Output only. [Output only] Update timestamp
  GitRepositoryLinkState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? cloneUri,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? gitRepositoryLinkId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentConnection,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      cloneUri = pulumi.Input.asOptionalInput<String>(cloneUri),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      gitRepositoryLinkId = pulumi.Input.asOptionalInput<String>(gitRepositoryLinkId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentConnection = pulumi.Input.asOptionalInput<String>(parentConnection),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cloneUri': ?cloneUri,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'gitRepositoryLinkId': ?gitRepositoryLinkId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parentConnection': ?parentConnection,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GitRepositoryLinkState.fromMap(Map<String, dynamic> map) {
    return GitRepositoryLinkState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      cloneUri: map['cloneUri'] == null ? null : pulumi.Output.create<String>(map['cloneUri'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      gitRepositoryLinkId: map['gitRepositoryLinkId'] == null ? null : pulumi.Output.create<String>(map['gitRepositoryLinkId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentConnection: map['parentConnection'] == null ? null : pulumi.Output.create<String>(map['parentConnection'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

