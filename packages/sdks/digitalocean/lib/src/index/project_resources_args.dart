// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_project_resources_project_resources_args_doc}
/// The set of arguments for ProjectResources.
/// {@endtemplate}
/// {@macro pulumi_index_project_resources_project_resources_args_doc}
class ProjectResourcesArgs {
  /// the ID of the project
  final pulumi.Input<String> project;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  final pulumi.Input<List<String>> resources;

  /// Creates a new [ProjectResourcesArgs].
  /// [project] the ID of the project
  /// [resources] a list of uniform resource names (URNs) for the resources associated with the project
  const ProjectResourcesArgs({
    required this.project,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'resources': resources,
    };
  }

  factory ProjectResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ProjectResourcesArgs(
      project: pulumi.Input.fromValue(map['project'] as String),
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
    );
  }
}

