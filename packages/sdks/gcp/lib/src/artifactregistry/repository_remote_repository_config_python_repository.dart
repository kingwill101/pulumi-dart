// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_python_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigPythonRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository>? customRepository;
  /// Address of the remote repository.
  /// Possible values are: `PYPI`.
  final pulumi.Input<String>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigPythonRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  RepositoryRemoteRepositoryConfigPythonRepository({
    this.customRepository,
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository, Map<String, dynamic>>(customRepository, (value) => value.toMap()),
      'publicRepository': ?publicRepository,
    };
  }

  factory RepositoryRemoteRepositoryConfigPythonRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigPythonRepository(
      customRepository: map['customRepository'] == null ? null : (RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository.fromMap((map['customRepository']! as Map).cast<String, dynamic>())).input(),
      publicRepository: map['publicRepository'] == null ? null : (map['publicRepository']! as String).input(),
    );
  }
}

