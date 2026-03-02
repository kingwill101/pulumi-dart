// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImage {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final pulumi.Input<String> repository;
  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String>? tag;

  /// Creates a new [ContainerImage].
  /// [repository] The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  ContainerImage({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory ContainerImage.fromMap(Map<String, dynamic> map) {
    return ContainerImage(
      repository: (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

