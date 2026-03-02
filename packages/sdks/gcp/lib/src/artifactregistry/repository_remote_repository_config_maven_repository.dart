// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_maven_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigMavenRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository>? customRepository;
  /// Address of the remote repository.
  /// Possible values are: `MAVEN_CENTRAL`.
  final pulumi.Input<String>? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigMavenRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  RepositoryRemoteRepositoryConfigMavenRepository({
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
      customRepository: map['customRepository'] == null ? null : (RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap((map['customRepository']! as Map).cast<String, dynamic>())).input(),
      publicRepository: map['publicRepository'] == null ? null : (map['publicRepository']! as String).input(),
    );
  }
}

