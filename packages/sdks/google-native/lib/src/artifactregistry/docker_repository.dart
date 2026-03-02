// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_repository_public_repository.dart';

/// Configuration for a Docker remote repository.
class DockerRepository {
  /// One of the publicly available Docker repositories supported by Artifact Registry.
  final pulumi.Input<DockerRepositoryPublicRepository>? publicRepository;

  /// Creates a new [DockerRepository].
  /// [publicRepository] One of the publicly available Docker repositories supported by Artifact Registry.
  DockerRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<DockerRepositoryPublicRepository, String>(publicRepository, (value) => value.value),
    };
  }

  factory DockerRepository.fromMap(Map<String, dynamic> map) {
    return DockerRepository(
      publicRepository: map['publicRepository'] == null ? null : (DockerRepositoryPublicRepository.fromValue(map['publicRepository'] as String)).input(),
    );
  }
}

