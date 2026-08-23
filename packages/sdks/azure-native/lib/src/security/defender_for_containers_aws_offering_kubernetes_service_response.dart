// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes service connection configuration
class DefenderForContainersAwsOfferingKubernetesServiceResponse {
  /// The cloud role ARN in AWS for this feature used for provisioning resources
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesServiceResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for provisioning resources
  const DefenderForContainersAwsOfferingKubernetesServiceResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesServiceResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesServiceResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
