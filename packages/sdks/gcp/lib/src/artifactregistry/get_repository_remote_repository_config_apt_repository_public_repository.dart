// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Apt, e.g. '"debian/dists/stable"' Possible values: ["DEBIAN", "UBUNTU", "DEBIAN_SNAPSHOT"]
  final pulumi.Input<String> repositoryBase;
  /// Specific repository from the base.
  final pulumi.Input<String> repositoryPath;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Apt, e.g. '"debian/dists/stable"' Possible values: ["DEBIAN", "UBUNTU", "DEBIAN_SNAPSHOT"]
  /// [repositoryPath] Specific repository from the base.
  const GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': repositoryBase,
      'repositoryPath': repositoryPath,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: pulumi.Input.fromValue(map['repositoryBase'] as String),
      repositoryPath: pulumi.Input.fromValue(map['repositoryPath'] as String),
    );
  }
}

