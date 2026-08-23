// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes data collection connection configuration
class DefenderForContainersAwsOfferingKubernetesDataCollectionResponse {
  /// The cloud role ARN in AWS for this feature used for reading data
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesDataCollectionResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for reading data
  const DefenderForContainersAwsOfferingKubernetesDataCollectionResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesDataCollectionResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesDataCollectionResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
