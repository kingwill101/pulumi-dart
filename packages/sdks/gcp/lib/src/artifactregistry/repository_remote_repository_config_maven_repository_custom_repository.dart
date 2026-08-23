// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final pulumi.Input<String>? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  const RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
