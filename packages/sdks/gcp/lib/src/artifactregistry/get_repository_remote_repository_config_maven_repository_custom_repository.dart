// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://repo.maven.apache.org/maven2"'
  final pulumi.Input<String> uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://repo.maven.apache.org/maven2"'
  GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

