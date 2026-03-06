// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_artifactregistry_v1_remote_repository_config_apt_repository_public_repository_repository_base.dart';

/// Publicly available Apt repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Apt.
  final pulumi.Input<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase>? repositoryBase;
  /// A custom field to define a path to a specific repository from the base.
  final pulumi.Input<String>? repositoryPath;

  /// Creates a new [GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Apt.
  /// [repositoryPath] A custom field to define a path to a specific repository from the base.
  const GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository({
    this.repositoryBase,
    this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase, String>(repositoryBase, (value) => value.wireValue),
      'repositoryPath': ?repositoryPath,
    };
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: (() { final guardedValue = map['repositoryBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase.fromValue(guardedValue as String)); })(),
      repositoryPath: (() { final guardedValue = map['repositoryPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

