// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of an a image to use during Skaffold rendering.
class BuildArtifact {
  /// Image name in Skaffold configuration.
  final pulumi.Input<String>? image;
  /// Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  final pulumi.Input<String>? tag;

  /// Creates a new [BuildArtifact].
  /// [image] Image name in Skaffold configuration.
  /// [tag] Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  const BuildArtifact({
    this.image,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'tag': ?tag,
    };
  }

  factory BuildArtifact.fromMap(Map<String, dynamic> map) {
    return BuildArtifact(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

