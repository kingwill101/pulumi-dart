// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuildv2_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_cloudbuildv2_repository_repository_args_doc}
class RepositoryArgs {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// Name of the repository.
  final pulumi.Input<String?>? name;
  /// The connection for the resource
  final pulumi.Input<String> parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Required. Git Clone HTTPS URI.
  final pulumi.Input<String> remoteUri;

  /// Creates a new [RepositoryArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location for the resource
  /// [name] Name of the repository.
  /// [parentConnection] The connection for the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteUri] Required. Git Clone HTTPS URI.
  const RepositoryArgs({
    this.annotations,
    this.deletionPolicy,
    this.location,
    this.name,
    required this.parentConnection,
    this.project,
    required this.remoteUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'parentConnection': parentConnection,
      'project': ?project,
      'remoteUri': remoteUri,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentConnection: pulumi.Input.fromValue(map['parentConnection'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteUri: pulumi.Input.fromValue(map['remoteUri'] as String),
    );
  }
}
