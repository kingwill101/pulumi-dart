// ignore_for_file: unused_element, unnecessary_cast

import 'framework_deployment_cloud_control_metadata_cloud_control_details.dart';

class FrameworkDeploymentCloudControlMetadata {
  /// CloudControlDetails contains the details of a CloudControl.
  /// Structure is documented below.
  final FrameworkDeploymentCloudControlMetadataCloudControlDetails cloudControlDetails;
  /// Enforcement mode for the framework deployment.
  /// Possible values:
  /// PREVENTIVE
  /// DETECTIVE
  /// AUDIT
  final String enforcementMode;

  /// Creates a new [FrameworkDeploymentCloudControlMetadata].
  /// [cloudControlDetails] CloudControlDetails contains the details of a CloudControl.
  /// [enforcementMode] Enforcement mode for the framework deployment.
  FrameworkDeploymentCloudControlMetadata({
    required this.cloudControlDetails,
    required this.enforcementMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDetails': cloudControlDetails.toMap(),
      'enforcementMode': enforcementMode,
    };
  }

  factory FrameworkDeploymentCloudControlMetadata.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadata(
      cloudControlDetails: FrameworkDeploymentCloudControlMetadataCloudControlDetails.fromMap((map['cloudControlDetails'] as Map).cast<String, dynamic>()),
      enforcementMode: map['enforcementMode'] as String,
    );
  }
}

