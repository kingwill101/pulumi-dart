// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Publicly available Yum repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse {
  /// A common public repository base for Yum.
  final pulumi.Input<String> repositoryBase;

  /// A custom field to define a path to a specific repository from the base.
  final pulumi.Input<String> repositoryPath;

  /// Creates a new [GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse].
  /// [repositoryBase] A common public repository base for Yum.
  /// [repositoryPath] A custom field to define a path to a specific repository from the base.
  GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': repositoryBase,
      'repositoryPath': repositoryPath,
    };
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse(
      repositoryBase: pulumi.Input.fromValue(map['repositoryBase'] as String),
      repositoryPath: pulumi.Input.fromValue(map['repositoryPath'] as String),
    );
  }
}
