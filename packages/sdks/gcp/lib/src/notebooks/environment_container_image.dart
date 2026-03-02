// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentContainerImage {
  /// The path to the container image repository.
  /// For example: gcr.io/{project_id}/{imageName}
  final pulumi.Input<String> repository;
  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String>? tag;

  /// Creates a new [EnvironmentContainerImage].
  /// [repository] The path to the container image repository.
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  EnvironmentContainerImage({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory EnvironmentContainerImage.fromMap(Map<String, dynamic> map) {
    return EnvironmentContainerImage(
      repository: (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
    );
  }
}

