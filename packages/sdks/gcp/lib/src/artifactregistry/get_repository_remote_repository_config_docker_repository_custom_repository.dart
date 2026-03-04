// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://registry-1.docker.io"'
  final pulumi.Input<String> uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://registry-1.docker.io"'
  GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
