// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_repository.dart';
import 'docker_repository.dart';
import 'maven_repository.dart';
import 'npm_repository.dart';
import 'python_repository.dart';
import 'upstream_credentials.dart';
import 'yum_repository.dart';

/// Remote repository configuration.
class RemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  final pulumi.Input<AptRepository>? aptRepository;

  /// The description of the remote source.
  final pulumi.Input<String>? description;

  /// Specific settings for a Docker remote repository.
  final pulumi.Input<DockerRepository>? dockerRepository;

  /// Specific settings for a Maven remote repository.
  final pulumi.Input<MavenRepository>? mavenRepository;

  /// Specific settings for an Npm remote repository.
  final pulumi.Input<NpmRepository>? npmRepository;

  /// Specific settings for a Python remote repository.
  final pulumi.Input<PythonRepository>? pythonRepository;

  /// Optional. The credentials used to access the remote repository.
  final pulumi.Input<UpstreamCredentials>? upstreamCredentials;

  /// Specific settings for a Yum remote repository.
  final pulumi.Input<YumRepository>? yumRepository;

  /// Creates a new [RemoteRepositoryConfig].
  /// [aptRepository] Specific settings for an Apt remote repository.
  /// [description] The description of the remote source.
  /// [dockerRepository] Specific settings for a Docker remote repository.
  /// [mavenRepository] Specific settings for a Maven remote repository.
  /// [npmRepository] Specific settings for an Npm remote repository.
  /// [pythonRepository] Specific settings for a Python remote repository.
  /// [upstreamCredentials] Optional. The credentials used to access the remote repository.
  /// [yumRepository] Specific settings for a Yum remote repository.
  RemoteRepositoryConfig({
    this.aptRepository,
    this.description,
    this.dockerRepository,
    this.mavenRepository,
    this.npmRepository,
    this.pythonRepository,
    this.upstreamCredentials,
    this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepository':
          ?pulumi.Input.mapOptionalInputValue<
            AptRepository,
            Map<String, dynamic>
          >(aptRepository, (value) => value.toMap()),
      'description': ?description,
      'dockerRepository':
          ?pulumi.Input.mapOptionalInputValue<
            DockerRepository,
            Map<String, dynamic>
          >(dockerRepository, (value) => value.toMap()),
      'mavenRepository':
          ?pulumi.Input.mapOptionalInputValue<
            MavenRepository,
            Map<String, dynamic>
          >(mavenRepository, (value) => value.toMap()),
      'npmRepository':
          ?pulumi.Input.mapOptionalInputValue<
            NpmRepository,
            Map<String, dynamic>
          >(npmRepository, (value) => value.toMap()),
      'pythonRepository':
          ?pulumi.Input.mapOptionalInputValue<
            PythonRepository,
            Map<String, dynamic>
          >(pythonRepository, (value) => value.toMap()),
      'upstreamCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            UpstreamCredentials,
            Map<String, dynamic>
          >(upstreamCredentials, (value) => value.toMap()),
      'yumRepository':
          ?pulumi.Input.mapOptionalInputValue<
            YumRepository,
            Map<String, dynamic>
          >(yumRepository, (value) => value.toMap()),
    };
  }

  factory RemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RemoteRepositoryConfig(
      aptRepository: (() {
        final guardedValue = map['aptRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AptRepository.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerRepository: (() {
        final guardedValue = map['dockerRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DockerRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mavenRepository: (() {
        final guardedValue = map['mavenRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MavenRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      npmRepository: (() {
        final guardedValue = map['npmRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NpmRepository.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      pythonRepository: (() {
        final guardedValue = map['pythonRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PythonRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      upstreamCredentials: (() {
        final guardedValue = map['upstreamCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UpstreamCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      yumRepository: (() {
        final guardedValue = map['yumRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          YumRepository.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
