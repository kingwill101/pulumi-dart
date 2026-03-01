// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_apt_repository.dart';
import 'get_repository_remote_repository_config_common_repository.dart';
import 'get_repository_remote_repository_config_docker_repository.dart';
import 'get_repository_remote_repository_config_maven_repository.dart';
import 'get_repository_remote_repository_config_npm_repository.dart';
import 'get_repository_remote_repository_config_python_repository.dart';
import 'get_repository_remote_repository_config_upstream_credential.dart';
import 'get_repository_remote_repository_config_yum_repository.dart';

class GetRepositoryRemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  final List<GetRepositoryRemoteRepositoryConfigAptRepository> aptRepositories;
  /// Specific settings for an Artifact Registory remote repository.
  final List<GetRepositoryRemoteRepositoryConfigCommonRepository> commonRepositories;
  /// The description of the remote source.
  final String description;
  /// If true, the remote repository upstream and upstream credentials will
  /// not be validated.
  final bool disableUpstreamValidation;
  /// Specific settings for a Docker remote repository.
  final List<GetRepositoryRemoteRepositoryConfigDockerRepository> dockerRepositories;
  /// Specific settings for a Maven remote repository.
  final List<GetRepositoryRemoteRepositoryConfigMavenRepository> mavenRepositories;
  /// Specific settings for an Npm remote repository.
  final List<GetRepositoryRemoteRepositoryConfigNpmRepository> npmRepositories;
  /// Specific settings for a Python remote repository.
  final List<GetRepositoryRemoteRepositoryConfigPythonRepository> pythonRepositories;
  /// The credentials used to access the remote repository.
  final List<GetRepositoryRemoteRepositoryConfigUpstreamCredential> upstreamCredentials;
  /// Specific settings for an Yum remote repository.
  final List<GetRepositoryRemoteRepositoryConfigYumRepository> yumRepositories;

  /// Creates a new [GetRepositoryRemoteRepositoryConfig].
  /// [aptRepositories] Specific settings for an Apt remote repository.
  /// [commonRepositories] Specific settings for an Artifact Registory remote repository.
  /// [description] The description of the remote source.
  /// [disableUpstreamValidation] If true, the remote repository upstream and upstream credentials will
  /// [dockerRepositories] Specific settings for a Docker remote repository.
  /// [mavenRepositories] Specific settings for a Maven remote repository.
  /// [npmRepositories] Specific settings for an Npm remote repository.
  /// [pythonRepositories] Specific settings for a Python remote repository.
  /// [upstreamCredentials] The credentials used to access the remote repository.
  /// [yumRepositories] Specific settings for an Yum remote repository.
  GetRepositoryRemoteRepositoryConfig({
    required this.aptRepositories,
    required this.commonRepositories,
    required this.description,
    required this.disableUpstreamValidation,
    required this.dockerRepositories,
    required this.mavenRepositories,
    required this.npmRepositories,
    required this.pythonRepositories,
    required this.upstreamCredentials,
    required this.yumRepositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigAptRepository, Map<String, dynamic>>(aptRepositories, (value) => value.toMap()),
      'commonRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigCommonRepository, Map<String, dynamic>>(commonRepositories, (value) => value.toMap()),
      'description': description,
      'disableUpstreamValidation': disableUpstreamValidation,
      'dockerRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigDockerRepository, Map<String, dynamic>>(dockerRepositories, (value) => value.toMap()),
      'mavenRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigMavenRepository, Map<String, dynamic>>(mavenRepositories, (value) => value.toMap()),
      'npmRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigNpmRepository, Map<String, dynamic>>(npmRepositories, (value) => value.toMap()),
      'pythonRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigPythonRepository, Map<String, dynamic>>(pythonRepositories, (value) => value.toMap()),
      'upstreamCredentials': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigUpstreamCredential, Map<String, dynamic>>(upstreamCredentials, (value) => value.toMap()),
      'yumRepositories': pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfigYumRepository, Map<String, dynamic>>(yumRepositories, (value) => value.toMap()),
    };
  }

  factory GetRepositoryRemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfig(
      aptRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigAptRepository>(map['aptRepositories'], (value) => GetRepositoryRemoteRepositoryConfigAptRepository.fromMap((value as Map).cast<String, dynamic>())),
      commonRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigCommonRepository>(map['commonRepositories'], (value) => GetRepositoryRemoteRepositoryConfigCommonRepository.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      disableUpstreamValidation: map['disableUpstreamValidation'] as bool,
      dockerRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigDockerRepository>(map['dockerRepositories'], (value) => GetRepositoryRemoteRepositoryConfigDockerRepository.fromMap((value as Map).cast<String, dynamic>())),
      mavenRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigMavenRepository>(map['mavenRepositories'], (value) => GetRepositoryRemoteRepositoryConfigMavenRepository.fromMap((value as Map).cast<String, dynamic>())),
      npmRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigNpmRepository>(map['npmRepositories'], (value) => GetRepositoryRemoteRepositoryConfigNpmRepository.fromMap((value as Map).cast<String, dynamic>())),
      pythonRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigPythonRepository>(map['pythonRepositories'], (value) => GetRepositoryRemoteRepositoryConfigPythonRepository.fromMap((value as Map).cast<String, dynamic>())),
      upstreamCredentials: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigUpstreamCredential>(map['upstreamCredentials'], (value) => GetRepositoryRemoteRepositoryConfigUpstreamCredential.fromMap((value as Map).cast<String, dynamic>())),
      yumRepositories: pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfigYumRepository>(map['yumRepositories'], (value) => GetRepositoryRemoteRepositoryConfigYumRepository.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

