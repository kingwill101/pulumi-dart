// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class CspmMonitorAwsOfferingNativeCloudConnectionResponse {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [CspmMonitorAwsOfferingNativeCloudConnectionResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  const CspmMonitorAwsOfferingNativeCloudConnectionResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory CspmMonitorAwsOfferingNativeCloudConnectionResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOfferingNativeCloudConnectionResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
