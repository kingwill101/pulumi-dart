// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_info_response.dart';
import 'cloud_build_options_response_appengine_v1beta.dart';
import 'container_info_response_appengine_v1beta.dart';
import 'zip_info_response_appengine_v1beta.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentResponseAppengineV1beta {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<BuildInfoResponse> build;

  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final pulumi.Input<CloudBuildOptionsResponseAppengineV1beta>
  cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<ContainerInfoResponseAppengineV1beta> container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final pulumi.Input<Map<String, String>> files;

  /// The zip file for this deployment, if this is a zip deployment.
  final pulumi.Input<ZipInfoResponseAppengineV1beta> zip;

  /// Creates a new [DeploymentResponseAppengineV1beta].
  /// [build] Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  /// [cloudBuildOptions] Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  /// [container] The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  /// [zip] The zip file for this deployment, if this is a zip deployment.
  DeploymentResponseAppengineV1beta({
    required this.build,
    required this.cloudBuildOptions,
    required this.container,
    required this.files,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build':
          pulumi.Input.mapInputValue<BuildInfoResponse, Map<String, dynamic>>(
            build,
            (value) => value.toMap(),
          ),
      'cloudBuildOptions':
          pulumi.Input.mapInputValue<
            CloudBuildOptionsResponseAppengineV1beta,
            Map<String, dynamic>
          >(cloudBuildOptions, (value) => value.toMap()),
      'container':
          pulumi.Input.mapInputValue<
            ContainerInfoResponseAppengineV1beta,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'files': files,
      'zip':
          pulumi.Input.mapInputValue<
            ZipInfoResponseAppengineV1beta,
            Map<String, dynamic>
          >(zip, (value) => value.toMap()),
    };
  }

  factory DeploymentResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return DeploymentResponseAppengineV1beta(
      build: pulumi.Input.fromValue(
        BuildInfoResponse.fromMap(
          (map['build']! as Map).cast<String, dynamic>(),
        ),
      ),
      cloudBuildOptions: pulumi.Input.fromValue(
        CloudBuildOptionsResponseAppengineV1beta.fromMap(
          (map['cloudBuildOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      container: pulumi.Input.fromValue(
        ContainerInfoResponseAppengineV1beta.fromMap(
          (map['container']! as Map).cast<String, dynamic>(),
        ),
      ),
      files: pulumi.Input.fromValue(
        (map['files'] as Map).cast<String, String>(),
      ),
      zip: pulumi.Input.fromValue(
        ZipInfoResponseAppengineV1beta.fromMap(
          (map['zip']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
