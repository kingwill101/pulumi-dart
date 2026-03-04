// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImageResponse {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final pulumi.Input<String> repository;

  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String> tag;

  /// Creates a new [ContainerImageResponse].
  /// [repository] The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  ContainerImageResponse({required this.repository, required this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repository': repository, 'tag': tag};
  }

  factory ContainerImageResponse.fromMap(Map<String, dynamic> map) {
    return ContainerImageResponse(
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
