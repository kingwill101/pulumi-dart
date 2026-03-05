// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_apt_repository.dart';
import 'repository_remote_repository_config_common_repository.dart';
import 'repository_remote_repository_config_docker_repository.dart';
import 'repository_remote_repository_config_maven_repository.dart';
import 'repository_remote_repository_config_npm_repository.dart';
import 'repository_remote_repository_config_python_repository.dart';
import 'repository_remote_repository_config_upstream_credentials.dart';
import 'repository_remote_repository_config_yum_repository.dart';

class RepositoryRemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigAptRepository>? aptRepository;
  /// Specific settings for an Artifact Registory remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigCommonRepository>? commonRepository;
  /// The description of the remote source.
  final pulumi.Input<String>? description;
  /// If true, the remote repository upstream and upstream credentials will
  /// not be validated.
  final pulumi.Input<bool>? disableUpstreamValidation;
  /// Specific settings for a Docker remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigDockerRepository>? dockerRepository;
  /// Specific settings for a Maven remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigMavenRepository>? mavenRepository;
  /// Specific settings for an Npm remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigNpmRepository>? npmRepository;
  /// Specific settings for a Python remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigPythonRepository>? pythonRepository;
  /// The credentials used to access the remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigUpstreamCredentials>? upstreamCredentials;
  /// Specific settings for an Yum remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigYumRepository>? yumRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfig].
  /// [aptRepository] Specific settings for an Apt remote repository.
  /// [commonRepository] Specific settings for an Artifact Registory remote repository.
  /// [description] The description of the remote source.
  /// [disableUpstreamValidation] If true, the remote repository upstream and upstream credentials will
  /// [dockerRepository] Specific settings for a Docker remote repository.
  /// [mavenRepository] Specific settings for a Maven remote repository.
  /// [npmRepository] Specific settings for an Npm remote repository.
  /// [pythonRepository] Specific settings for a Python remote repository.
  /// [upstreamCredentials] The credentials used to access the remote repository.
  /// [yumRepository] Specific settings for an Yum remote repository.
  RepositoryRemoteRepositoryConfig({
    this.aptRepository,
    this.commonRepository,
    this.description,
    this.disableUpstreamValidation,
    this.dockerRepository,
    this.mavenRepository,
    this.npmRepository,
    this.pythonRepository,
    this.upstreamCredentials,
    this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigAptRepository, Map<String, dynamic>>(aptRepository, (value) => value.toMap()),
      'commonRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigCommonRepository, Map<String, dynamic>>(commonRepository, (value) => value.toMap()),
      'description': ?description,
      'disableUpstreamValidation': ?disableUpstreamValidation,
      'dockerRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigDockerRepository, Map<String, dynamic>>(dockerRepository, (value) => value.toMap()),
      'mavenRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigMavenRepository, Map<String, dynamic>>(mavenRepository, (value) => value.toMap()),
      'npmRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigNpmRepository, Map<String, dynamic>>(npmRepository, (value) => value.toMap()),
      'pythonRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigPythonRepository, Map<String, dynamic>>(pythonRepository, (value) => value.toMap()),
      'upstreamCredentials': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigUpstreamCredentials, Map<String, dynamic>>(upstreamCredentials, (value) => value.toMap()),
      'yumRepository': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigYumRepository, Map<String, dynamic>>(yumRepository, (value) => value.toMap()),
    };
  }

  factory RepositoryRemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfig(
      aptRepository: (() { final guardedValue = map['aptRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigAptRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonRepository: (() { final guardedValue = map['commonRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigCommonRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableUpstreamValidation: (() { final guardedValue = map['disableUpstreamValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dockerRepository: (() { final guardedValue = map['dockerRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigDockerRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mavenRepository: (() { final guardedValue = map['mavenRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigMavenRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      npmRepository: (() { final guardedValue = map['npmRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigNpmRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pythonRepository: (() { final guardedValue = map['pythonRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigPythonRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upstreamCredentials: (() { final guardedValue = map['upstreamCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigUpstreamCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yumRepository: (() { final guardedValue = map['yumRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfigYumRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

