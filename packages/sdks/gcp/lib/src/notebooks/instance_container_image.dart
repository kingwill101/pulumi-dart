// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceContainerImage {
  /// The path to the container image repository.
  /// For example: gcr.io/{project_id}/{imageName}
  final pulumi.Input<String> repository;
  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String?>? tag;

  /// Creates a new [InstanceContainerImage].
  /// [repository] The path to the container image repository.
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  const InstanceContainerImage({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory InstanceContainerImage.fromMap(Map<String, dynamic> map) {
    return InstanceContainerImage(
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
