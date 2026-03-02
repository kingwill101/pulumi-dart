// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details.dart';

class FrameworkDeploymentCloudControlMetadata {
  /// CloudControlDetails contains the details of a CloudControl.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentCloudControlMetadataCloudControlDetails> cloudControlDetails;
  /// Enforcement mode for the framework deployment.
  /// Possible values:
  /// PREVENTIVE
  /// DETECTIVE
  /// AUDIT
  final pulumi.Input<String> enforcementMode;

  /// Creates a new [FrameworkDeploymentCloudControlMetadata].
  /// [cloudControlDetails] CloudControlDetails contains the details of a CloudControl.
  /// [enforcementMode] Enforcement mode for the framework deployment.
  FrameworkDeploymentCloudControlMetadata({
    required this.cloudControlDetails,
    required this.enforcementMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDetails': pulumi.Input.mapInputValue<FrameworkDeploymentCloudControlMetadataCloudControlDetails, Map<String, dynamic>>(cloudControlDetails, (value) => value.toMap()),
      'enforcementMode': enforcementMode,
    };
  }

  factory FrameworkDeploymentCloudControlMetadata.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadata(
      cloudControlDetails: (FrameworkDeploymentCloudControlMetadataCloudControlDetails.fromMap((map['cloudControlDetails'] as Map).cast<String, dynamic>())).input(),
      enforcementMode: (map['enforcementMode'] as String).input(),
    );
  }
}

