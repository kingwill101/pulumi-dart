// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Yum.
  /// Possible values are: `CENTOS`, `CENTOS_DEBUG`, `CENTOS_VAULT`, `CENTOS_STREAM`, `ROCKY`, `EPEL`.
  final pulumi.Input<String> repositoryBase;
  /// Specific repository from the base, e.g. `"pub/rocky/9/BaseOS/x86_64/os"`
  final pulumi.Input<String> repositoryPath;

  /// Creates a new [RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Yum.
  /// [repositoryPath] Specific repository from the base, e.g. `"pub/rocky/9/BaseOS/x86_64/os"`
  const RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': repositoryBase,
      'repositoryPath': repositoryPath,
    };
  }

  factory RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: pulumi.Input.fromValue(map['repositoryBase'] as String),
      repositoryPath: pulumi.Input.fromValue(map['repositoryPath'] as String),
    );
  }
}

