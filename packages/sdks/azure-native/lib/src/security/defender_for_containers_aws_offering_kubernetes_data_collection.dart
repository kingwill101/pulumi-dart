// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes data collection connection configuration
class DefenderForContainersAwsOfferingKubernetesDataCollection {
  /// The cloud role ARN in AWS for this feature used for reading data
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesDataCollection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for reading data
  DefenderForContainersAwsOfferingKubernetesDataCollection({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesDataCollection.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesDataCollection(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
    );
  }
}

