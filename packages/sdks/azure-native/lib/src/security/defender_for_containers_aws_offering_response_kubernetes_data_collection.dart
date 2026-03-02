// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes data collection connection configuration
class DefenderForContainersAwsOfferingResponseKubernetesDataCollection {
  /// The cloud role ARN in AWS for this feature used for reading data
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseKubernetesDataCollection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for reading data
  DefenderForContainersAwsOfferingResponseKubernetesDataCollection({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseKubernetesDataCollection.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseKubernetesDataCollection(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
    );
  }
}

