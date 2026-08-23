// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes data collection connection configuration
class DefenderForContainersAwsOfferingKubernetesDataCollection {
  /// The cloud role ARN in AWS for this feature used for reading data
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesDataCollection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for reading data
  const DefenderForContainersAwsOfferingKubernetesDataCollection({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesDataCollection.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesDataCollection(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
