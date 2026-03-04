// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_build_options_response.dart';
import 'container_info_response.dart';
import 'zip_info_response.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentResponse {
  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final pulumi.Input<CloudBuildOptionsResponse> cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<ContainerInfoResponse> container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final pulumi.Input<Map<String, String>> files;

  /// The zip file for this deployment, if this is a zip deployment.
  final pulumi.Input<ZipInfoResponse> zip;

  /// Creates a new [DeploymentResponse].
  /// [cloudBuildOptions] Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  /// [container] The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  /// [zip] The zip file for this deployment, if this is a zip deployment.
  DeploymentResponse({
    required this.cloudBuildOptions,
    required this.container,
    required this.files,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBuildOptions':
          pulumi.Input.mapInputValue<
            CloudBuildOptionsResponse,
            Map<String, dynamic>
          >(cloudBuildOptions, (value) => value.toMap()),
      'container':
          pulumi.Input.mapInputValue<
            ContainerInfoResponse,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'files': files,
      'zip': pulumi.Input.mapInputValue<ZipInfoResponse, Map<String, dynamic>>(
        zip,
        (value) => value.toMap(),
      ),
    };
  }

  factory DeploymentResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse(
      cloudBuildOptions: pulumi.Input.fromValue(
        CloudBuildOptionsResponse.fromMap(
          (map['cloudBuildOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      container: pulumi.Input.fromValue(
        ContainerInfoResponse.fromMap(
          (map['container']! as Map).cast<String, dynamic>(),
        ),
      ),
      files: pulumi.Input.fromValue(
        (map['files'] as Map).cast<String, String>(),
      ),
      zip: pulumi.Input.fromValue(
        ZipInfoResponse.fromMap((map['zip']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
