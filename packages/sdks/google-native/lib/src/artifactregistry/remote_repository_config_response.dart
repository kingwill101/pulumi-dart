// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_repository_response.dart';
import 'docker_repository_response.dart';
import 'maven_repository_response.dart';
import 'npm_repository_response.dart';
import 'python_repository_response.dart';
import 'upstream_credentials_response.dart';
import 'yum_repository_response.dart';

/// Remote repository configuration.
class RemoteRepositoryConfigResponse {
  /// Specific settings for an Apt remote repository.
  final pulumi.Input<AptRepositoryResponse> aptRepository;

  /// The description of the remote source.
  final pulumi.Input<String> description;

  /// Specific settings for a Docker remote repository.
  final pulumi.Input<DockerRepositoryResponse> dockerRepository;

  /// Specific settings for a Maven remote repository.
  final pulumi.Input<MavenRepositoryResponse> mavenRepository;

  /// Specific settings for an Npm remote repository.
  final pulumi.Input<NpmRepositoryResponse> npmRepository;

  /// Specific settings for a Python remote repository.
  final pulumi.Input<PythonRepositoryResponse> pythonRepository;

  /// Optional. The credentials used to access the remote repository.
  final pulumi.Input<UpstreamCredentialsResponse> upstreamCredentials;

  /// Specific settings for a Yum remote repository.
  final pulumi.Input<YumRepositoryResponse> yumRepository;

  /// Creates a new [RemoteRepositoryConfigResponse].
  /// [aptRepository] Specific settings for an Apt remote repository.
  /// [description] The description of the remote source.
  /// [dockerRepository] Specific settings for a Docker remote repository.
  /// [mavenRepository] Specific settings for a Maven remote repository.
  /// [npmRepository] Specific settings for an Npm remote repository.
  /// [pythonRepository] Specific settings for a Python remote repository.
  /// [upstreamCredentials] Optional. The credentials used to access the remote repository.
  /// [yumRepository] Specific settings for a Yum remote repository.
  RemoteRepositoryConfigResponse({
    required this.aptRepository,
    required this.description,
    required this.dockerRepository,
    required this.mavenRepository,
    required this.npmRepository,
    required this.pythonRepository,
    required this.upstreamCredentials,
    required this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepository':
          pulumi.Input.mapInputValue<
            AptRepositoryResponse,
            Map<String, dynamic>
          >(aptRepository, (value) => value.toMap()),
      'description': description,
      'dockerRepository':
          pulumi.Input.mapInputValue<
            DockerRepositoryResponse,
            Map<String, dynamic>
          >(dockerRepository, (value) => value.toMap()),
      'mavenRepository':
          pulumi.Input.mapInputValue<
            MavenRepositoryResponse,
            Map<String, dynamic>
          >(mavenRepository, (value) => value.toMap()),
      'npmRepository':
          pulumi.Input.mapInputValue<
            NpmRepositoryResponse,
            Map<String, dynamic>
          >(npmRepository, (value) => value.toMap()),
      'pythonRepository':
          pulumi.Input.mapInputValue<
            PythonRepositoryResponse,
            Map<String, dynamic>
          >(pythonRepository, (value) => value.toMap()),
      'upstreamCredentials':
          pulumi.Input.mapInputValue<
            UpstreamCredentialsResponse,
            Map<String, dynamic>
          >(upstreamCredentials, (value) => value.toMap()),
      'yumRepository':
          pulumi.Input.mapInputValue<
            YumRepositoryResponse,
            Map<String, dynamic>
          >(yumRepository, (value) => value.toMap()),
    };
  }

  factory RemoteRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RemoteRepositoryConfigResponse(
      aptRepository: pulumi.Input.fromValue(
        AptRepositoryResponse.fromMap(
          (map['aptRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      dockerRepository: pulumi.Input.fromValue(
        DockerRepositoryResponse.fromMap(
          (map['dockerRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      mavenRepository: pulumi.Input.fromValue(
        MavenRepositoryResponse.fromMap(
          (map['mavenRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      npmRepository: pulumi.Input.fromValue(
        NpmRepositoryResponse.fromMap(
          (map['npmRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      pythonRepository: pulumi.Input.fromValue(
        PythonRepositoryResponse.fromMap(
          (map['pythonRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      upstreamCredentials: pulumi.Input.fromValue(
        UpstreamCredentialsResponse.fromMap(
          (map['upstreamCredentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      yumRepository: pulumi.Input.fromValue(
        YumRepositoryResponse.fromMap(
          (map['yumRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
