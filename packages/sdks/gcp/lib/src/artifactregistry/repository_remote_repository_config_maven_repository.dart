// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_maven_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigMavenRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository?>? customRepository;
  /// Address of the remote repository.
  /// Possible values are: `MAVEN_CENTRAL`.
  final pulumi.Input<String?>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigMavenRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  const RepositoryRemoteRepositoryConfigMavenRepository({
    this.customRepository,
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository, Map<String, dynamic>>(customRepository, (value) => value.toMap()),
      'publicRepository': ?publicRepository,
    };
  }

  factory RepositoryRemoteRepositoryConfigMavenRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigMavenRepository(
      customRepository: (() { final guardedValue = map['customRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicRepository: (() { final guardedValue = map['publicRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
