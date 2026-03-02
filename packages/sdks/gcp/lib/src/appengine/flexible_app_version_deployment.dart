// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_deployment_cloud_build_options.dart';
import 'flexible_app_version_deployment_container.dart';
import 'flexible_app_version_deployment_file.dart';
import 'flexible_app_version_deployment_zip.dart';

class FlexibleAppVersionDeployment {
  /// Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionDeploymentCloudBuildOptions>? cloudBuildOptions;
  /// The Docker image for the container that runs the version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionDeploymentContainer>? container;
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// All files must be readable using the credentials supplied with this call.
  /// Structure is documented below.
  final pulumi.Input<List<FlexibleAppVersionDeploymentFile>>? files;
  /// Zip File
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionDeploymentZip>? zip;

  /// Creates a new [FlexibleAppVersionDeployment].
  /// [cloudBuildOptions] Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly.
  /// [container] The Docker image for the container that runs the version.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// [zip] Zip File
  FlexibleAppVersionDeployment({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBuildOptions': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionDeploymentCloudBuildOptions, Map<String, dynamic>>(cloudBuildOptions, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionDeploymentContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'files': ?pulumi.Input.mapOptionalInputValue<List<FlexibleAppVersionDeploymentFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<FlexibleAppVersionDeploymentFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zip': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionDeploymentZip, Map<String, dynamic>>(zip, (value) => value.toMap()),
    };
  }

  factory FlexibleAppVersionDeployment.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeployment(
      cloudBuildOptions: map['cloudBuildOptions'] == null ? null : (FlexibleAppVersionDeploymentCloudBuildOptions.fromMap((map['cloudBuildOptions']! as Map).cast<String, dynamic>())).input(),
      container: map['container'] == null ? null : (FlexibleAppVersionDeploymentContainer.fromMap((map['container']! as Map).cast<String, dynamic>())).input(),
      files: map['files'] == null ? null : (pulumi.Input.decodeList<FlexibleAppVersionDeploymentFile>(map['files']!, (value) => FlexibleAppVersionDeploymentFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zip: map['zip'] == null ? null : (FlexibleAppVersionDeploymentZip.fromMap((map['zip']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

