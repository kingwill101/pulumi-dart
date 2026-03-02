// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_info.dart';
import 'cloud_build_options_appengine_v1beta.dart';
import 'container_info_appengine_v1beta.dart';
import 'zip_info_appengine_v1beta.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentAppengineV1beta {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<BuildInfo>? build;
  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final pulumi.Input<CloudBuildOptionsAppengineV1beta>? cloudBuildOptions;
  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final pulumi.Input<ContainerInfoAppengineV1beta>? container;
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final pulumi.Input<Map<String, String>>? files;
  /// The zip file for this deployment, if this is a zip deployment.
  final pulumi.Input<ZipInfoAppengineV1beta>? zip;

  /// Creates a new [DeploymentAppengineV1beta].
  /// [build] Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  /// [cloudBuildOptions] Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  /// [container] The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  /// [zip] The zip file for this deployment, if this is a zip deployment.
  DeploymentAppengineV1beta({
    this.build,
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?pulumi.Input.mapOptionalInputValue<BuildInfo, Map<String, dynamic>>(build, (value) => value.toMap()),
      'cloudBuildOptions': ?pulumi.Input.mapOptionalInputValue<CloudBuildOptionsAppengineV1beta, Map<String, dynamic>>(cloudBuildOptions, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<ContainerInfoAppengineV1beta, Map<String, dynamic>>(container, (value) => value.toMap()),
      'files': ?files,
      'zip': ?pulumi.Input.mapOptionalInputValue<ZipInfoAppengineV1beta, Map<String, dynamic>>(zip, (value) => value.toMap()),
    };
  }

  factory DeploymentAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return DeploymentAppengineV1beta(
      build: map['build'] == null ? null : (BuildInfo.fromMap((map['build'] as Map).cast<String, dynamic>())).input(),
      cloudBuildOptions: map['cloudBuildOptions'] == null ? null : (CloudBuildOptionsAppengineV1beta.fromMap((map['cloudBuildOptions'] as Map).cast<String, dynamic>())).input(),
      container: map['container'] == null ? null : (ContainerInfoAppengineV1beta.fromMap((map['container'] as Map).cast<String, dynamic>())).input(),
      files: map['files'] == null ? null : ((map['files'] as Map).cast<String, String>()).input(),
      zip: map['zip'] == null ? null : (ZipInfoAppengineV1beta.fromMap((map['zip'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

