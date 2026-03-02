// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_npm_repository_custom_repository.dart';

class GetRepositoryRemoteRepositoryConfigNpmRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository>> customRepositories;
  /// Address of the remote repository. Possible values: ["NPMJS"]
  final pulumi.Input<String> publicRepository;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigNpmRepository].
  /// [customRepositories] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository. Possible values: ["NPMJS"]
  GetRepositoryRemoteRepositoryConfigNpmRepository({
    required this.customRepositories,
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepositories': pulumi.Input.mapInputValue<List<GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository>, List<Map<String, dynamic>>>(customRepositories, (value) => pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicRepository': publicRepository,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigNpmRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigNpmRepository(
      customRepositories: (pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository>(map['customRepositories'], (value) => GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicRepository: (map['publicRepository'] as String).input(),
    );
  }
}

