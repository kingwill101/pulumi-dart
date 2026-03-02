// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_yum_repository_public_repository.dart';

class GetRepositoryRemoteRepositoryConfigYumRepository {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository>> publicRepositories;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigYumRepository].
  /// [publicRepositories] One of the publicly available Yum repositories supported by Artifact Registry.
  GetRepositoryRemoteRepositoryConfigYumRepository({
    required this.publicRepositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepositories': pulumi.Input.mapInputValue<List<GetRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository>, List<Map<String, dynamic>>>(publicRepositories, (value) => pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRepositoryRemoteRepositoryConfigYumRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigYumRepository(
      publicRepositories: (pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository>(map['publicRepositories'], (value) => GetRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

