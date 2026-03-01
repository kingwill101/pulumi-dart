// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectResources resources.
class ProjectResourcesState {
  /// the ID of the project
  final pulumi.Input<String>? project;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [ProjectResourcesState].
  /// [project] the ID of the project
  /// [resources] a list of uniform resource names (URNs) for the resources associated with the project
  ProjectResourcesState({
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? resources,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'resources': ?resources,
    };
  }

  factory ProjectResourcesState.fromMap(Map<String, dynamic> map) {
    return ProjectResourcesState(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
    );
  }
}

