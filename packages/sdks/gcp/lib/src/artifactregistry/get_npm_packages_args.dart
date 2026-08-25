// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_npm_packages_get_npm_packages_args_doc}
/// Arguments for getNpmPackages.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_npm_packages_get_npm_packages_args_doc}
class GetNpmPackagesArgs {
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetNpmPackagesArgs].
  /// [location] The location of the Artifact Registry repository.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  const GetNpmPackagesArgs({
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetNpmPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
