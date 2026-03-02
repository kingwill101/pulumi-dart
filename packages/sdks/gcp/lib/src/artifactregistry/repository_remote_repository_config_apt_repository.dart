// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_apt_repository_public_repository.dart';

class RepositoryRemoteRepositoryConfigAptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigAptRepository].
  /// [publicRepository] One of the publicly available Apt repositories supported by Artifact Registry.
  RepositoryRemoteRepositoryConfigAptRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository, Map<String, dynamic>>(publicRepository, (value) => value.toMap()),
    };
  }

  factory RepositoryRemoteRepositoryConfigAptRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigAptRepository(
      publicRepository: map['publicRepository'] == null ? null : (RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap((map['publicRepository'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

