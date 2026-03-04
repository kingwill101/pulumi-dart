// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectMetadata resources.
class ProjectMetadataState {
  /// A series of key value pairs.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>>? metadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectMetadataState].
  /// [metadata] A series of key value pairs.
  /// [project] The ID of the project in which the resource belongs. If it
  ProjectMetadataState({this.metadata, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata, 'project': ?project};
  }

  factory ProjectMetadataState.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataState(
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
