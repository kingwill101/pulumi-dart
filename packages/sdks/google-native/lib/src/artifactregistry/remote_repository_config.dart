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
      'aptRepository': ?pulumi.Input.mapOptionalInputValue<AptRepository, Map<String, dynamic>>(aptRepository, (value) => value.toMap()),
      'description': ?description,
      'dockerRepository': ?pulumi.Input.mapOptionalInputValue<DockerRepository, Map<String, dynamic>>(dockerRepository, (value) => value.toMap()),
      'mavenRepository': ?pulumi.Input.mapOptionalInputValue<MavenRepository, Map<String, dynamic>>(mavenRepository, (value) => value.toMap()),
      'npmRepository': ?pulumi.Input.mapOptionalInputValue<NpmRepository, Map<String, dynamic>>(npmRepository, (value) => value.toMap()),
      'pythonRepository': ?pulumi.Input.mapOptionalInputValue<PythonRepository, Map<String, dynamic>>(pythonRepository, (value) => value.toMap()),
      'upstreamCredentials': ?pulumi.Input.mapOptionalInputValue<UpstreamCredentials, Map<String, dynamic>>(upstreamCredentials, (value) => value.toMap()),
      'yumRepository': ?pulumi.Input.mapOptionalInputValue<YumRepository, Map<String, dynamic>>(yumRepository, (value) => value.toMap()),
    };
  }

  factory RemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RemoteRepositoryConfig(
      aptRepository: map['aptRepository'] == null ? null : (AptRepository.fromMap((map['aptRepository'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dockerRepository: map['dockerRepository'] == null ? null : (DockerRepository.fromMap((map['dockerRepository'] as Map).cast<String, dynamic>())).input(),
      mavenRepository: map['mavenRepository'] == null ? null : (MavenRepository.fromMap((map['mavenRepository'] as Map).cast<String, dynamic>())).input(),
      npmRepository: map['npmRepository'] == null ? null : (NpmRepository.fromMap((map['npmRepository'] as Map).cast<String, dynamic>())).input(),
      pythonRepository: map['pythonRepository'] == null ? null : (PythonRepository.fromMap((map['pythonRepository'] as Map).cast<String, dynamic>())).input(),
      upstreamCredentials: map['upstreamCredentials'] == null ? null : (UpstreamCredentials.fromMap((map['upstreamCredentials'] as Map).cast<String, dynamic>())).input(),
      yumRepository: map['yumRepository'] == null ? null : (YumRepository.fromMap((map['yumRepository'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

