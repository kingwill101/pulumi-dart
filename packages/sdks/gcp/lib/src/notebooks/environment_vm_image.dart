// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentVmImage {
  /// Use this VM image family to find the image; the newest image in this family will be used.
  final pulumi.Input<String>? imageFamily;
  /// Use VM image name to find the image.
  final pulumi.Input<String>? imageName;
  /// The name of the Google Cloud project that this VM image belongs to.
  /// Format: projects/{project_id}
  final pulumi.Input<String> project;

  /// Creates a new [EnvironmentVmImage].
  /// [imageFamily] Use this VM image family to find the image; the newest image in this family will be used.
  /// [imageName] Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to.
  const EnvironmentVmImage({
    this.imageFamily,
    this.imageName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageFamily': ?imageFamily,
      'imageName': ?imageName,
      'project': project,
    };
  }

  factory EnvironmentVmImage.fromMap(Map<String, dynamic> map) {
    return EnvironmentVmImage(
      imageFamily: (() { final guardedValue = map['imageFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

