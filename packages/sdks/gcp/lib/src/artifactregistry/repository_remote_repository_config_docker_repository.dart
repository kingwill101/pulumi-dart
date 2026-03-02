// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_docker_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigDockerRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository>? customRepository;
  /// Address of the remote repository.
  /// Possible values are: `DOCKER_HUB`.
  final pulumi.Input<String>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigDockerRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  RepositoryRemoteRepositoryConfigDockerRepository({
    this.customRepository,
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository, Map<String, dynamic>>(customRepository, (value) => value.toMap()),
      'publicRepository': ?publicRepository,
    };
  }

  factory RepositoryRemoteRepositoryConfigDockerRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigDockerRepository(
      customRepository: map['customRepository'] == null ? null : (RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository.fromMap((map['customRepository'] as Map).cast<String, dynamic>())).input(),
      publicRepository: map['publicRepository'] == null ? null : (map['publicRepository'] as String).input(),
    );
  }
}

