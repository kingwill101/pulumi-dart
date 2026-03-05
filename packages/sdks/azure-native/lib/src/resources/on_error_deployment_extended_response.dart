// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment on error behavior with additional details.
class OnErrorDeploymentExtendedResponse {
  /// The deployment to be used on error case.
  final pulumi.Input<String>? deploymentName;
  /// The state of the provisioning for the on error deployment.
  final pulumi.Input<String> provisioningState;
  /// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  final pulumi.Input<String>? type;

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
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

