// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes service connection configuration
class DefenderForContainersAwsOfferingResponseKubernetesService {
  /// The cloud role ARN in AWS for this feature used for provisioning resources
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseKubernetesService].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for provisioning resources
  DefenderForContainersAwsOfferingResponseKubernetesService({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseKubernetesService.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseKubernetesService(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn'] as String).input(),
    );
  }
}

