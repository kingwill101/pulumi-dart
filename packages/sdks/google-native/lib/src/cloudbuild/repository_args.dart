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
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteUri: pulumi.Input.fromValue(map['remoteUri'] as String),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
