// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'python_repository_public_repository.dart';

/// Configuration for a Python remote repository.
class PythonRepository {
  /// One of the publicly available Python repositories supported by Artifact Registry.
  final pulumi.Input<PythonRepositoryPublicRepository>? publicRepository;

  /// Creates a new [PythonRepository].
  /// [publicRepository] One of the publicly available Python repositories supported by Artifact Registry.
  PythonRepository({this.publicRepository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository':
          ?pulumi.Input.mapOptionalInputValue<
            PythonRepositoryPublicRepository,
            String
          >(publicRepository, (value) => value.wireValue),
    };
  }

  factory PythonRepository.fromMap(Map<String, dynamic> map) {
    return PythonRepository(
      publicRepository: (() {
        final guardedValue = map['publicRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PythonRepositoryPublicRepository.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
