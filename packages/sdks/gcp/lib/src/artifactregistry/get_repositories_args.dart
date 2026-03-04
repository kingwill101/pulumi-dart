// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_repositories_get_repositories_args_doc}
/// Arguments for getRepositories.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_repositories_get_repositories_args_doc}
class GetRepositoriesArgs {
  /// The location of the artifact registry repositories. eg `us-central1`.
  final pulumi.Input<String> location;

  /// Optional. An expression for filtering the results by name. You can also use wildcards `*`. I.e. `my-repo`, `*-repo`, `my-*`, `*-re*`. For further information reach out to the [API docs](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
  final pulumi.Input<String>? nameFilter;

  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRepositoriesArgs].
  /// [location] The location of the artifact registry repositories. eg `us-central1`.
  /// [nameFilter] Optional. An expression for filtering the results by name. You can also use wildcards `*`. I.e. `my-repo`, `*-repo`, `my-*`, `*-re*`. For further information reach out to the [API docs](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
  /// [project] The ID of the project. If it is not provided, the provider project is used.
  GetRepositoriesArgs({required this.location, this.nameFilter, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nameFilter': ?nameFilter,
      'project': ?project,
    };
  }

  factory GetRepositoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      nameFilter: (() {
        final guardedValue = map['nameFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
