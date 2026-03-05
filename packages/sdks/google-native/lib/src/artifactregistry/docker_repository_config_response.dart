// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.
class DockerRepositoryConfigResponse {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final pulumi.Input<bool> immutableTags;

  /// Creates a new [DockerRepositoryConfigResponse].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  DockerRepositoryConfigResponse({
    required this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableTags': immutableTags,
    };
  }

  factory DockerRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryConfigResponse(
      immutableTags: pulumi.Input.fromValue(map['immutableTags'] as bool),
    );
  }
}

