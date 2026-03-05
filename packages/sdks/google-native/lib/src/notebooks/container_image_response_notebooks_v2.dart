// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImageResponseNotebooksV2 {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final pulumi.Input<String> repository;
  /// Optional. The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String> tag;

  /// Creates a new [ContainerImageResponseNotebooksV2].
  /// [repository] The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  /// [tag] Optional. The tag of the container image. If not specified, this defaults to the latest tag.
  ContainerImageResponseNotebooksV2({
    required this.repository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': tag,
    };
  }

  factory ContainerImageResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return ContainerImageResponseNotebooksV2(
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

