// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_apt_repository_public_repository.dart';

class GetRepositoryRemoteRepositoryConfigAptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>> publicRepositories;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigAptRepository].
  /// [publicRepositories] One of the publicly available Apt repositories supported by Artifact Registry.
  GetRepositoryRemoteRepositoryConfigAptRepository({
    required this.publicRepositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepositories': pulumi.Input.mapInputValue<List<GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>, List<Map<String, dynamic>>>(publicRepositories, (value) => pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRepositoryRemoteRepositoryConfigAptRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigAptRepository(
      publicRepositories: (pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>(map['publicRepositories'], (value) => GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

