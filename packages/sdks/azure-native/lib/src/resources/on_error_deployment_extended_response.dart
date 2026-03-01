// ignore_for_file: unused_element, unnecessary_cast


/// Deployment on error behavior with additional details.
class OnErrorDeploymentExtendedResponse {
  /// The deployment to be used on error case.
  final String? deploymentName;
  /// The state of the provisioning for the on error deployment.
  final String provisioningState;
  /// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  final String? type;

  /// Creates a new [OnErrorDeploymentExtendedResponse].
  /// [deploymentName] The deployment to be used on error case.
  /// [provisioningState] The state of the provisioning for the on error deployment.
  /// [type] The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  OnErrorDeploymentExtendedResponse({
    this.deploymentName,
    required this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'provisioningState': provisioningState,
      'type': ?type,
    };
  }

  factory OnErrorDeploymentExtendedResponse.fromMap(Map<String, dynamic> map) {
    return OnErrorDeploymentExtendedResponse(
      deploymentName: map['deploymentName'] == null ? null : map['deploymentName'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

