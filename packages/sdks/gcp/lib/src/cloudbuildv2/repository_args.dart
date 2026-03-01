// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuildv2_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_cloudbuildv2_repository_repository_args_doc}
class RepositoryArgs {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Name of the repository.
  final pulumi.Input<String>? name;
  /// The connection for the resource
  final pulumi.Input<String> parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Git Clone HTTPS URI.
  final pulumi.Input<String> remoteUri;

  /// Creates a new [RepositoryArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [location] The location for the resource
  /// [name] Name of the repository.
  /// [parentConnection] The connection for the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteUri] Required. Git Clone HTTPS URI.
  RepositoryArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parentConnection,
    pulumi.Output<String>? project,
    required pulumi.Output<String> remoteUri,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentConnection = pulumi.Input.asInput<String>(parentConnection),
      project = pulumi.Input.asOptionalInput<String>(project),
      remoteUri = pulumi.Input.asInput<String>(remoteUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'location': ?location,
      'name': ?name,
      'parentConnection': parentConnection,
      'project': ?project,
      'remoteUri': remoteUri,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentConnection: pulumi.Output.create<String>(map['parentConnection'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      remoteUri: pulumi.Output.create<String>(map['remoteUri'] as String),
    );
  }
}

