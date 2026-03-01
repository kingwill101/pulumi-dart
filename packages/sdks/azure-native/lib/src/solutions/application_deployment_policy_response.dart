// ignore_for_file: unused_element, unnecessary_cast


/// Managed application deployment policy.
class ApplicationDeploymentPolicyResponse {
  /// The managed application deployment mode.
  final String deploymentMode;

  /// Creates a new [ApplicationDeploymentPolicyResponse].
  /// [deploymentMode] The managed application deployment mode.
  ApplicationDeploymentPolicyResponse({
    required this.deploymentMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': deploymentMode,
    };
  }

  factory ApplicationDeploymentPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentPolicyResponse(
      deploymentMode: map['deploymentMode'] as String,
    );
  }
}

