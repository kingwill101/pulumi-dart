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
  ProjectResourcesState({this.project, this.resources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'resources': ?resources};
  }

  factory ProjectResourcesState.fromMap(Map<String, dynamic> map) {
    return ProjectResourcesState(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
