// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig {
  /// The target environment for the client version (e.g., windows, macos).
  final pulumi.Input<String> targetEnvironment;
  /// The specific client version to deploy.
  final pulumi.Input<String> version;

  /// Creates a new [GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig].
  /// [targetEnvironment] The target environment for the client version (e.g., windows, macos).
  /// [version] The specific client version to deploy.
  const GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig({
    required this.targetEnvironment,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetEnvironment': targetEnvironment,
      'version': version,
    };
  }

  factory GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig(
      targetEnvironment: pulumi.Input.fromValue(map['targetEnvironment'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
