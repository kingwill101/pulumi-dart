// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_repository_public_repository.dart';

/// Configuration for a Docker remote repository.
class DockerRepository {
  /// One of the publicly available Docker repositories supported by Artifact Registry.
  final pulumi.Input<DockerRepositoryPublicRepository>? publicRepository;

  /// Creates a new [DockerRepository].
  /// [publicRepository] One of the publicly available Docker repositories supported by Artifact Registry.
  const DockerRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<DockerRepositoryPublicRepository, String>(publicRepository, (value) => value.wireValue),
    };
  }

  factory DockerRepository.fromMap(Map<String, dynamic> map) {
    return DockerRepository(
      publicRepository: (() { final guardedValue = map['publicRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerRepositoryPublicRepository.fromValue(guardedValue as String)); })(),
    );
  }
}
