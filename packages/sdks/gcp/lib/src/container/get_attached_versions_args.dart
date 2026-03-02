// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_attached_versions_get_attached_versions_args_doc}
/// Arguments for getAttachedVersions.
/// {@endtemplate}
/// {@macro pulumi_container_get_attached_versions_get_attached_versions_args_doc}
class GetAttachedVersionsArgs {
  /// The location to list versions for.
  final pulumi.Input<String> location;
  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String> project;

  /// Creates a new [GetAttachedVersionsArgs].
  /// [location] The location to list versions for.
  /// [project] ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  GetAttachedVersionsArgs({
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': project,
    };
  }

  factory GetAttachedVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedVersionsArgs(
      location: (map['location'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

