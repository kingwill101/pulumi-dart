// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_maven_repository_custom_repository.dart';

class GetRepositoryRemoteRepositoryConfigMavenRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  final List<GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository> customRepositories;
  /// Address of the remote repository. Possible values: ["MAVEN_CENTRAL"]
  final String publicRepository;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigMavenRepository].
  /// [customRepositories] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository. Possible values: ["MAVEN_CENTRAL"]
  GetRepositoryRemoteRepositoryConfigMavenRepository({
    required this.customRepositories,
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository, Map<String, dynamic>>(customRepositories, (value) => value.toMap()),
      'publicRepository': publicRepository,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigMavenRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigMavenRepository(
      customRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository>(map['customRepositories'], (value) => GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap((value as Map).cast<String, dynamic>())),
      publicRepository: map['publicRepository'] as String,
    );
  }
}

