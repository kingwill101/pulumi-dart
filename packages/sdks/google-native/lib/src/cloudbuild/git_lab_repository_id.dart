// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitLabRepositoryId identifies a specific repository hosted on GitLab.com or GitLabEnterprise
class GitLabRepositoryId {
  /// Identifier for the repository. example: "namespace/project-slug", namespace is usually the username or group ID
  final pulumi.Input<String> id;

  /// Creates a new [GitLabRepositoryId].
  /// [id] Identifier for the repository. example: "namespace/project-slug", namespace is usually the username or group ID
  GitLabRepositoryId({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GitLabRepositoryId.fromMap(Map<String, dynamic> map) {
    return GitLabRepositoryId(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

