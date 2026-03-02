// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://pypi.io"'
  final pulumi.Input<String> uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://pypi.io"'
  GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository(
      uri: (map['uri'] as String).input(),
    );
  }
}

