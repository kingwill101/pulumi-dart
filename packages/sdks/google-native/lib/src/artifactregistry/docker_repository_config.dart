// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.
class DockerRepositoryConfig {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final pulumi.Input<bool>? immutableTags;

  /// Creates a new [DockerRepositoryConfig].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  const DockerRepositoryConfig({
    this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableTags': ?immutableTags,
    };
  }

  factory DockerRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryConfig(
      immutableTags: (() { final guardedValue = map['immutableTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
