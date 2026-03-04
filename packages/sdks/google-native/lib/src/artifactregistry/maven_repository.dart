// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maven_repository_public_repository.dart';

/// Configuration for a Maven remote repository.
class MavenRepository {
  /// One of the publicly available Maven repositories supported by Artifact Registry.
  final pulumi.Input<MavenRepositoryPublicRepository>? publicRepository;

  /// Creates a new [MavenRepository].
  /// [publicRepository] One of the publicly available Maven repositories supported by Artifact Registry.
  MavenRepository({this.publicRepository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository':
          ?pulumi.Input.mapOptionalInputValue<
            MavenRepositoryPublicRepository,
            String
          >(publicRepository, (value) => value.wireValue),
    };
  }

  factory MavenRepository.fromMap(Map<String, dynamic> map) {
    return MavenRepository(
      publicRepository: (() {
        final guardedValue = map['publicRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MavenRepositoryPublicRepository.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
