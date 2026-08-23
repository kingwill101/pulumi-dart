// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty {
  /// The deployment type of the Goldengate Deployment Version resource.
  final pulumi.Input<String> deploymentType;
  /// The OGG version of the Goldengate Deployment Version resource.
  final pulumi.Input<String> oggVersion;
  /// The release time of the Goldengate Deployment Version resource.
  final pulumi.Input<String> releaseTime;
  /// The release type of the Goldengate Deployment Version resource.
  final pulumi.Input<String> releaseType;
  /// Specifies whether this version has a security fix.
  final pulumi.Input<bool> securityFix;
  /// The support end time of the Goldengate Deployment Version resource.
  final pulumi.Input<String> supportEndTime;

  /// Creates a new [GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty].
  /// [deploymentType] The deployment type of the Goldengate Deployment Version resource.
  /// [oggVersion] The OGG version of the Goldengate Deployment Version resource.
  /// [releaseTime] The release time of the Goldengate Deployment Version resource.
  /// [releaseType] The release type of the Goldengate Deployment Version resource.
  /// [securityFix] Specifies whether this version has a security fix.
  /// [supportEndTime] The support end time of the Goldengate Deployment Version resource.
  const GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty({
    required this.deploymentType,
    required this.oggVersion,
    required this.releaseTime,
    required this.releaseType,
    required this.securityFix,
    required this.supportEndTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': deploymentType,
      'oggVersion': oggVersion,
      'releaseTime': releaseTime,
      'releaseType': releaseType,
      'securityFix': securityFix,
      'supportEndTime': supportEndTime,
    };
  }

  factory GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty(
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      oggVersion: pulumi.Input.fromValue(map['oggVersion'] as String),
      releaseTime: pulumi.Input.fromValue(map['releaseTime'] as String),
      releaseType: pulumi.Input.fromValue(map['releaseType'] as String),
      securityFix: pulumi.Input.fromValue(map['securityFix'] as bool),
      supportEndTime: pulumi.Input.fromValue(map['supportEndTime'] as String),
    );
  }
}
