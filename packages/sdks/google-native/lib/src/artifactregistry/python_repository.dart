// ignore_for_file: unused_element, unnecessary_cast

import 'python_repository_public_repository.dart';

/// Configuration for a Python remote repository.
class PythonRepository {
  /// One of the publicly available Python repositories supported by Artifact Registry.
  final PythonRepositoryPublicRepository? publicRepository;

  /// Creates a new [PythonRepository].
  /// [publicRepository] One of the publicly available Python repositories supported by Artifact Registry.
  PythonRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?publicRepository == null ? null : publicRepository!.value,
    };
  }

  factory PythonRepository.fromMap(Map<String, dynamic> map) {
    return PythonRepository(
      publicRepository: map['publicRepository'] == null ? null : PythonRepositoryPublicRepository.fromValue(map['publicRepository'] as String),
    );
  }
}

