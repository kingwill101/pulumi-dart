// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentVmImage {
  /// Use this VM image family to find the image; the newest image in this family will be used.
  final String? imageFamily;
  /// Use VM image name to find the image.
  final String? imageName;
  /// The name of the Google Cloud project that this VM image belongs to.
  /// Format: projects/{project_id}
  final String project;

  /// Creates a new [EnvironmentVmImage].
  /// [imageFamily] Use this VM image family to find the image; the newest image in this family will be used.
  /// [imageName] Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to.
  EnvironmentVmImage({
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
      imageFamily: map['imageFamily'] == null ? null : map['imageFamily'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      project: map['project'] as String,
    );
  }
}

