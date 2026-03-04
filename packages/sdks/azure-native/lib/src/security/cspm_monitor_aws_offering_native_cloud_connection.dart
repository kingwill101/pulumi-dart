// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class CspmMonitorAwsOfferingNativeCloudConnection {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [CspmMonitorAwsOfferingNativeCloudConnection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  CspmMonitorAwsOfferingNativeCloudConnection({this.cloudRoleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudRoleArn': ?cloudRoleArn};
  }

  factory CspmMonitorAwsOfferingNativeCloudConnection.fromMap(
    Map<String, dynamic> map,
  ) {
    return CspmMonitorAwsOfferingNativeCloudConnection(
      cloudRoleArn: (() {
        final guardedValue = map['cloudRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
