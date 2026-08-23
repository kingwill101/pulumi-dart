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
  const GetVersionsArgs({
    this.filter,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    this.view,
  });

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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
