// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_artifactregistry_v1_remote_repository_config_yum_repository_public_repository_repository_base.dart';

/// Publicly available Yum repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository {
  /// A common public repository base for Yum.
  final pulumi.Input<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase>? repositoryBase;
  /// A custom field to define a path to a specific repository from the base.
  final pulumi.Input<String>? repositoryPath;

  /// Creates a new [GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Yum.
  /// [repositoryPath] A custom field to define a path to a specific repository from the base.
  GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository({
    this.repositoryBase,
    this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase, String>(repositoryBase, (value) => value.wireValue),
      'repositoryPath': ?repositoryPath,
    };
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository(
      repositoryBase: (() { final guardedValue = map['repositoryBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase.fromValue(guardedValue as String)); })(),
      repositoryPath: (() { final guardedValue = map['repositoryPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

