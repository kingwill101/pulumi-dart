// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application deployment policy.
class ApplicationDeploymentPolicy {
  /// The managed application deployment mode.
  final pulumi.Input<dynamic> deploymentMode;

  /// Creates a new [ApplicationDeploymentPolicy].
  /// [deploymentMode] The managed application deployment mode.
  const ApplicationDeploymentPolicy({
    required this.deploymentMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': deploymentMode,
    };
  }

  factory ApplicationDeploymentPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentPolicy(
      deploymentMode: pulumi.Input.fromValue(map['deploymentMode']),
    );
  }
}
