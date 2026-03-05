// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'npm_repository_public_repository.dart';

/// Configuration for a Npm remote repository.
class NpmRepository {
  /// One of the publicly available Npm repositories supported by Artifact Registry.
  final pulumi.Input<NpmRepositoryPublicRepository>? publicRepository;

  /// Creates a new [NpmRepository].
  /// [publicRepository] One of the publicly available Npm repositories supported by Artifact Registry.
  NpmRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?pulumi.Input.mapOptionalInputValue<NpmRepositoryPublicRepository, String>(publicRepository, (value) => value.wireValue),
    };
  }

  factory NpmRepository.fromMap(Map<String, dynamic> map) {
    return NpmRepository(
      publicRepository: (() { final guardedValue = map['publicRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NpmRepositoryPublicRepository.fromValue(guardedValue as String)); })(),
    );
  }
}

