// ignore_for_file: unused_element, unnecessary_cast

import 'npm_repository_public_repository.dart';

/// Configuration for a Npm remote repository.
class NpmRepository {
  /// One of the publicly available Npm repositories supported by Artifact Registry.
  final NpmRepositoryPublicRepository? publicRepository;

  /// Creates a new [NpmRepository].
  /// [publicRepository] One of the publicly available Npm repositories supported by Artifact Registry.
  NpmRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?publicRepository == null ? null : publicRepository!.value,
    };
  }

  factory NpmRepository.fromMap(Map<String, dynamic> map) {
    return NpmRepository(
      publicRepository: map['publicRepository'] == null ? null : NpmRepositoryPublicRepository.fromValue(map['publicRepository'] as String),
    );
  }
}

