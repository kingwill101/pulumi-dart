// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_apt_repository_public_repository.dart';

class RepositoryRemoteRepositoryConfigAptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigAptRepository].
  /// [publicRepository] One of the publicly available Apt repositories supported by Artifact Registry.
  RepositoryRemoteRepositoryConfigAptRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?publicRepository == null ? null : publicRepository!.toMap(),
    };
  }

  factory RepositoryRemoteRepositoryConfigAptRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigAptRepository(
      publicRepository: map['publicRepository'] == null ? null : RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap((map['publicRepository'] as Map).cast<String, dynamic>()),
    );
  }
}

