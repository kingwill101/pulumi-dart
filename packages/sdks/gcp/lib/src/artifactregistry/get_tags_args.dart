// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_tags_get_tags_args_doc}
/// Arguments for getTags.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_tags_get_tags_args_doc}
class GetTagsArgs {
  /// An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list#query-parameters).
  final pulumi.Input<String?>? filter;
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The name of the package.
  final pulumi.Input<String> packageName;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetTagsArgs].
  /// [filter] An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list#query-parameters).
  /// [location] The location of the Artifact Registry repository.
  /// [packageName] The name of the package.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  const GetTagsArgs({
    this.filter,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetTagsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
