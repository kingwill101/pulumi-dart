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
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigAptRepository>>
  aptRepositories;

  /// Specific settings for an Artifact Registory remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigCommonRepository>>
  commonRepositories;

  /// The description of the remote source.
  final pulumi.Input<String> description;

  /// If true, the remote repository upstream and upstream credentials will
  /// not be validated.
  final pulumi.Input<bool> disableUpstreamValidation;

  /// Specific settings for a Docker remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigDockerRepository>>
  dockerRepositories;

  /// Specific settings for a Maven remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigMavenRepository>>
  mavenRepositories;

  /// Specific settings for an Npm remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigNpmRepository>>
  npmRepositories;

  /// Specific settings for a Python remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigPythonRepository>>
  pythonRepositories;

  /// The credentials used to access the remote repository.
  final pulumi.Input<
    List<GetRepositoryRemoteRepositoryConfigUpstreamCredential>
  >
  upstreamCredentials;

  /// Specific settings for an Yum remote repository.
  final pulumi.Input<List<GetRepositoryRemoteRepositoryConfigYumRepository>>
  yumRepositories;

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
      'aptRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigAptRepository>,
            List<Map<String, dynamic>>
          >(
            aptRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigAptRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'commonRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigCommonRepository>,
            List<Map<String, dynamic>>
          >(
            commonRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigCommonRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': description,
      'disableUpstreamValidation': disableUpstreamValidation,
      'dockerRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigDockerRepository>,
            List<Map<String, dynamic>>
          >(
            dockerRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigDockerRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mavenRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigMavenRepository>,
            List<Map<String, dynamic>>
          >(
            mavenRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigMavenRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'npmRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigNpmRepository>,
            List<Map<String, dynamic>>
          >(
            npmRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigNpmRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pythonRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigPythonRepository>,
            List<Map<String, dynamic>>
          >(
            pythonRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigPythonRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'upstreamCredentials':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigUpstreamCredential>,
            List<Map<String, dynamic>>
          >(
            upstreamCredentials,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigUpstreamCredential,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'yumRepositories':
          pulumi.Input.mapInputValue<
            List<GetRepositoryRemoteRepositoryConfigYumRepository>,
            List<Map<String, dynamic>>
          >(
            yumRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GetRepositoryRemoteRepositoryConfigYumRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetRepositoryRemoteRepositoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfig(
      aptRepositories: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetRepositoryRemoteRepositoryConfigAptRepository>(
          map['aptRepositories']!,
          (value) => GetRepositoryRemoteRepositoryConfigAptRepository.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      commonRepositories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRepositoryRemoteRepositoryConfigCommonRepository
        >(
          map['commonRepositories']!,
          (value) =>
              GetRepositoryRemoteRepositoryConfigCommonRepository.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      disableUpstreamValidation: pulumi.Input.fromValue(
        map['disableUpstreamValidation'] as bool,
      ),
      dockerRepositories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRepositoryRemoteRepositoryConfigDockerRepository
        >(
          map['dockerRepositories']!,
          (value) =>
              GetRepositoryRemoteRepositoryConfigDockerRepository.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      mavenRepositories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRepositoryRemoteRepositoryConfigMavenRepository
        >(
          map['mavenRepositories']!,
          (value) => GetRepositoryRemoteRepositoryConfigMavenRepository.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      npmRepositories: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetRepositoryRemoteRepositoryConfigNpmRepository>(
          map['npmRepositories']!,
          (value) => GetRepositoryRemoteRepositoryConfigNpmRepository.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      pythonRepositories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRepositoryRemoteRepositoryConfigPythonRepository
        >(
          map['pythonRepositories']!,
          (value) =>
              GetRepositoryRemoteRepositoryConfigPythonRepository.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      upstreamCredentials: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRepositoryRemoteRepositoryConfigUpstreamCredential
        >(
          map['upstreamCredentials']!,
          (value) =>
              GetRepositoryRemoteRepositoryConfigUpstreamCredential.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      yumRepositories: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetRepositoryRemoteRepositoryConfigYumRepository>(
          map['yumRepositories']!,
          (value) => GetRepositoryRemoteRepositoryConfigYumRepository.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
