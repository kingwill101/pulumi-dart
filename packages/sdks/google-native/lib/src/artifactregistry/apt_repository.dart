// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_artifactregistry_v1_remote_repository_config_apt_repository_public_repository.dart';

/// Configuration for an Apt remote repository.
class AptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  final pulumi.Input<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository>? publicRepository;

  /// Creates a new [AptRepository].
  /// [publicRepository] One of the publicly available Apt repositories supported by Artifact Registry.
  AptRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository, Map<String, dynamic>>(publicRepository, (value) => value.toMap()),
    };
  }

  factory AptRepository.fromMap(Map<String, dynamic> map) {
    return AptRepository(
      publicRepository: map['publicRepository'] == null ? null : (GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository.fromMap((map['publicRepository']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

