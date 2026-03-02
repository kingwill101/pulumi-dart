// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_build_options.dart';
import 'container_info.dart';
import 'zip_info.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentType {
  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final pulumi.Input<CloudBuildOptions>? cloudBuildOptions;
  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<ContainerInfo>? container;
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final pulumi.Input<Map<String, String>>? files;
  /// The zip file for this deployment, if this is a zip deployment.
  final pulumi.Input<ZipInfo>? zip;

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
      'cloudBuildOptions': ?pulumi.Input.mapOptionalInputValue<CloudBuildOptions, Map<String, dynamic>>(cloudBuildOptions, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<ContainerInfo, Map<String, dynamic>>(container, (value) => value.toMap()),
      'files': ?files,
      'zip': ?pulumi.Input.mapOptionalInputValue<ZipInfo, Map<String, dynamic>>(zip, (value) => value.toMap()),
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      cloudBuildOptions: map['cloudBuildOptions'] == null ? null : (CloudBuildOptions.fromMap((map['cloudBuildOptions'] as Map).cast<String, dynamic>())).input(),
      container: map['container'] == null ? null : (ContainerInfo.fromMap((map['container'] as Map).cast<String, dynamic>())).input(),
      files: map['files'] == null ? null : ((map['files'] as Map).cast<String, String>()).input(),
      zip: map['zip'] == null ? null : (ZipInfo.fromMap((map['zip'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

