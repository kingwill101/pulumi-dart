// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://registry.npmjs.org"'
  final pulumi.Input<String> uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://registry.npmjs.org"'
  const GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

