// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a custom Compute Engine virtual machine image for starting a notebook instance with the environment installed directly on the VM.
class VmImageResponseNotebooksV2 {
  /// Optional. Use this VM image family to find the image; the newest image in this family will be used.
  final pulumi.Input<String> family;

  /// Optional. Use VM image name to find the image.
  final pulumi.Input<String> name;

  /// The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`
  final pulumi.Input<String> project;

  /// Creates a new [VmImageResponseNotebooksV2].
  /// [family] Optional. Use this VM image family to find the image; the newest image in this family will be used.
  /// [name] Optional. Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`
  VmImageResponseNotebooksV2({
    required this.family,
    required this.name,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name,
      'project': project,
    };
  }

  factory VmImageResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return VmImageResponseNotebooksV2(
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
