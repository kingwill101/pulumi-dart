// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v2_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v2_repository_args_doc}
class RepositoryArgs {
  /// Allows clients to store small amounts of arbitrary data.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> connectionId;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Git Clone HTTPS URI.
  final pulumi.Input<String> remoteUri;
  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [RepositoryArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [connectionId] Required.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] Optional.
  /// [name] Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  /// [project] Optional.
  /// [remoteUri] Git Clone HTTPS URI.
  /// [repositoryId] Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  RepositoryArgs({
    this.annotations,
    required this.connectionId,
    this.etag,
    this.location,
    this.name,
    this.project,
    required this.remoteUri,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectionId': connectionId,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'remoteUri': remoteUri,
      'repositoryId': repositoryId,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      connectionId: (map['connectionId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      remoteUri: (map['remoteUri'] as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
    );
  }
}

