// ignore_for_file: unused_element, unnecessary_cast


/// Publicly available Apt repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse {
  /// A common public repository base for Apt.
  final String repositoryBase;
  /// A custom field to define a path to a specific repository from the base.
  final String repositoryPath;

  /// Creates a new [GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse].
  /// [repositoryBase] A common public repository base for Apt.
  /// [repositoryPath] A custom field to define a path to a specific repository from the base.
  GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': repositoryBase,
      'repositoryPath': repositoryPath,
    };
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse(
      repositoryBase: map['repositoryBase'] as String,
      repositoryPath: map['repositoryPath'] as String,
    );
  }
}

