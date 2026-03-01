// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_build_options.dart';
import 'container_info.dart';
import 'zip_info.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentType {
  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final CloudBuildOptions? cloudBuildOptions;
  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final ContainerInfo? container;
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final Map<String, String>? files;
  /// The zip file for this deployment, if this is a zip deployment.
  final ZipInfo? zip;

  /// Creates a new [DeploymentType].
  /// [cloudBuildOptions] Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  /// [container] The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  /// [zip] The zip file for this deployment, if this is a zip deployment.
  DeploymentType({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBuildOptions': ?cloudBuildOptions == null ? null : cloudBuildOptions!.toMap(),
      'container': ?container == null ? null : container!.toMap(),
      'files': ?files,
      'zip': ?zip == null ? null : zip!.toMap(),
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      cloudBuildOptions: map['cloudBuildOptions'] == null ? null : CloudBuildOptions.fromMap((map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] == null ? null : ContainerInfo.fromMap((map['container'] as Map).cast<String, dynamic>()),
      files: map['files'] == null ? null : (map['files'] as Map).cast<String, String>(),
      zip: map['zip'] == null ? null : ZipInfo.fromMap((map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}

