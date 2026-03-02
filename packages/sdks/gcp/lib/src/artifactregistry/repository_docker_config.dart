// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryDockerConfig {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final pulumi.Input<bool>? immutableTags;

  /// Creates a new [RepositoryDockerConfig].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  RepositoryDockerConfig({
    this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableTags': ?immutableTags,
    };
  }

  factory RepositoryDockerConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryDockerConfig(
      immutableTags: map['immutableTags'] == null ? null : (map['immutableTags'] as bool).input(),
    );
  }
}

