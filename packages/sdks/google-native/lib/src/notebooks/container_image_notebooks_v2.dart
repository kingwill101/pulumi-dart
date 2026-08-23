// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImageNotebooksV2 {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final pulumi.Input<String> repository;
  /// Optional. The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String>? tag;

  /// Creates a new [ContainerImageNotebooksV2].
  /// [repository] The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  /// [tag] Optional. The tag of the container image. If not specified, this defaults to the latest tag.
  const ContainerImageNotebooksV2({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory ContainerImageNotebooksV2.fromMap(Map<String, dynamic> map) {
    return ContainerImageNotebooksV2(
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
