// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_versions_get_versions_args_doc}
/// Arguments for getVersions.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_versions_get_versions_args_doc}
class GetVersionsArgs {
  /// An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.versions/list#query-parameters).
  final pulumi.Input<String>? filter;
  /// The location of the artifact registry.
  final pulumi.Input<String> location;
  /// The name of the package.
  final pulumi.Input<String> packageName;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;
  /// The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionsArgs].
  /// [filter] An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.versions/list#query-parameters).
  /// [location] The location of the artifact registry.
  /// [packageName] The name of the package.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  /// [view] The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  GetVersionsArgs({
    pulumi.Output<String>? filter,
    required pulumi.Output<String> location,
    required pulumi.Output<String> packageName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    pulumi.Output<String>? view,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asInput<String>(location),
      packageName = pulumi.Input.asInput<String>(packageName),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'view': ?view,
    };
  }

  factory GetVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionsArgs(
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

