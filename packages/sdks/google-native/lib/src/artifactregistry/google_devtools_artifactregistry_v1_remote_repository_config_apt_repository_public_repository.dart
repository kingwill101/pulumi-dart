// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_artifactregistry_v1_remote_repository_config_apt_repository_public_repository_repository_base.dart';

/// Publicly available Apt repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Apt.
  final GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase? repositoryBase;
  /// A custom field to define a path to a specific repository from the base.
  final String? repositoryPath;

  /// Creates a new [GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Apt.
  /// [repositoryPath] A custom field to define a path to a specific repository from the base.
  GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository({
    this.repositoryBase,
    this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': ?repositoryBase == null ? null : repositoryBase!.value,
      'repositoryPath': ?repositoryPath,
    };
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: map['repositoryBase'] == null ? null : GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase.fromValue(map['repositoryBase'] as String),
      repositoryPath: map['repositoryPath'] == null ? null : map['repositoryPath'] as String,
    );
  }
}

