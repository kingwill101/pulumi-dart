// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_python_repository_custom_repository.dart';

class GetRepositoryRemoteRepositoryConfigPythonRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository>> customRepositories;
  /// Address of the remote repository. Possible values: ["PYPI"]
  final pulumi.Input<String> publicRepository;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigPythonRepository].
  /// [customRepositories] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository. Possible values: ["PYPI"]
  GetRepositoryRemoteRepositoryConfigPythonRepository({
    required this.customRepositories,
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepositories': pulumi.Input.mapInputValue<List<GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository>, List<Map<String, dynamic>>>(customRepositories, (value) => pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicRepository': publicRepository,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigPythonRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigPythonRepository(
      customRepositories: (pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository>(map['customRepositories'], (value) => GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicRepository: (map['publicRepository'] as String).input(),
    );
  }
}

