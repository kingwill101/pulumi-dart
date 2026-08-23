// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionWorkbenchRuntimeVmImage {
  /// Use this VM image family to find the image; the newest image in this family will be used.
  final pulumi.Input<String>? family;
  /// Use VM image name to find the image.
  final pulumi.Input<String>? name;
  /// The name of the Google Cloud project that this VM image belongs to. Format: {project_id}
  final pulumi.Input<String>? project;

  /// Creates a new [NotebookExecutionWorkbenchRuntimeVmImage].
  /// [family] Use this VM image family to find the image; the newest image in this family will be used.
  /// [name] Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to. Format: {project_id}
  const NotebookExecutionWorkbenchRuntimeVmImage({
    this.family,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'name': ?name,
      'project': ?project,
    };
  }

  factory NotebookExecutionWorkbenchRuntimeVmImage.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionWorkbenchRuntimeVmImage(
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
