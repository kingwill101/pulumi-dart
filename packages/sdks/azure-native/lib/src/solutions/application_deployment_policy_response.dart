// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application deployment policy.
class ApplicationDeploymentPolicyResponse {
  /// The managed application deployment mode.
  final pulumi.Input<String> deploymentMode;

  /// Creates a new [ApplicationDeploymentPolicyResponse].
  /// [deploymentMode] The managed application deployment mode.
  const ApplicationDeploymentPolicyResponse({
    required this.deploymentMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': deploymentMode,
    };
  }

  factory ApplicationDeploymentPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentPolicyResponse(
      deploymentMode: pulumi.Input.fromValue(map['deploymentMode'] as String),
    );
  }
}
