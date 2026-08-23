// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_yum_repository_public_repository.dart';

class RepositoryRemoteRepositoryConfigYumRepository {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigYumRepositoryPublicRepository>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigYumRepository].
  /// [publicRepository] One of the publicly available Yum repositories supported by Artifact Registry.
  const RepositoryRemoteRepositoryConfigYumRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigYumRepositoryPublicRepository, Map<String, dynamic>>(publicRepository, (value) => value.toMap()),
    };
  }

  factory RepositoryRemoteRepositoryConfigYumRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigYumRepository(
      publicRepository: (() { final guardedValue = map['publicRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigYumRepositoryPublicRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
