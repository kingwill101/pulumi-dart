// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a custom Compute Engine virtual machine image for starting a notebook instance with the environment installed directly on the VM.
class VmImage {
  /// Use this VM image family to find the image; the newest image in this family will be used.
  final pulumi.Input<String>? imageFamily;
  /// Use VM image name to find the image.
  final pulumi.Input<String>? imageName;
  /// The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`
  final pulumi.Input<String> project;

  /// Creates a new [VmImage].
  /// [imageFamily] Use this VM image family to find the image; the newest image in this family will be used.
  /// [imageName] Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`
  VmImage({
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

  factory VmImage.fromMap(Map<String, dynamic> map) {
    return VmImage(
      imageFamily: map['imageFamily'] == null ? null : (map['imageFamily'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

