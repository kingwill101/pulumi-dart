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
    this.annotations,
    this.cloneUri,
    this.createTime,
    this.deleteTime,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.gitRepositoryLinkId,
    this.labels,
    this.location,
    this.name,
    this.parentConnection,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.uid,
    this.updateTime,
  });

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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      cloneUri: map['cloneUri'] == null ? null : (map['cloneUri']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      gitRepositoryLinkId: map['gitRepositoryLinkId'] == null ? null : (map['gitRepositoryLinkId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parentConnection: map['parentConnection'] == null ? null : (map['parentConnection']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

