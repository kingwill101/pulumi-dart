// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_tags_get_tags_args_doc}
/// Arguments for getTags.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_tags_get_tags_args_doc}
class GetTagsArgs {
  /// An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list#query-parameters).
  final pulumi.Input<String>? filter;
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The name of the package.
  final pulumi.Input<String> packageName;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetTagsArgs].
  /// [filter] An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list#query-parameters).
  /// [location] The location of the Artifact Registry repository.
  /// [packageName] The name of the package.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  GetTagsArgs({
    pulumi.Output<String>? filter,
    required pulumi.Output<String> location,
    required pulumi.Output<String> packageName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asInput<String>(location),
      packageName = pulumi.Input.asInput<String>(packageName),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

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
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

