// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of an a image to use during Skaffold rendering.
class BuildArtifactResponse {
  /// Image name in Skaffold configuration.
  final pulumi.Input<String> image;

  /// Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  final pulumi.Input<String> tag;

  /// Creates a new [BuildArtifactResponse].
  /// [image] Image name in Skaffold configuration.
  /// [tag] Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  BuildArtifactResponse({required this.image, required this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image, 'tag': tag};
  }

  factory BuildArtifactResponse.fromMap(Map<String, dynamic> map) {
    return BuildArtifactResponse(
      image: pulumi.Input.fromValue(map['image'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
