// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. Server assigned timestamp for when the connection was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Name of the repository.
  final pulumi.Input<String>? name;
  /// The connection for the resource
  final pulumi.Input<String>? parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Git Clone HTTPS URI.
  final pulumi.Input<String>? remoteUri;
  /// Output only. Server assigned timestamp for when the connection was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RepositoryState].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [createTime] Output only. Server assigned timestamp for when the connection was created.
  /// [effectiveAnnotations] Optional.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] The location for the resource
  /// [name] Name of the repository.
  /// [parentConnection] The connection for the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteUri] Required. Git Clone HTTPS URI.
  /// [updateTime] Output only. Server assigned timestamp for when the connection was updated.
  RepositoryState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentConnection,
    pulumi.Output<String>? project,
    pulumi.Output<String>? remoteUri,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentConnection = pulumi.Input.asOptionalInput<String>(parentConnection),
      project = pulumi.Input.asOptionalInput<String>(project),
      remoteUri = pulumi.Input.asOptionalInput<String>(remoteUri),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'parentConnection': ?parentConnection,
      'project': ?project,
      'remoteUri': ?remoteUri,
      'updateTime': ?updateTime,
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentConnection: map['parentConnection'] == null ? null : pulumi.Output.create<String>(map['parentConnection'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      remoteUri: map['remoteUri'] == null ? null : pulumi.Output.create<String>(map['remoteUri'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

