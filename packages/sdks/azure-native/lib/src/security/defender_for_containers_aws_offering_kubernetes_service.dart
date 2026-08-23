// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes service connection configuration
class DefenderForContainersAwsOfferingKubernetesService {
  /// The cloud role ARN in AWS for this feature used for provisioning resources
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesService].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for provisioning resources
  const DefenderForContainersAwsOfferingKubernetesService({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesService.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesService(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
