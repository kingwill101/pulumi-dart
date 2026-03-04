// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final pulumi.Input<String>? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
