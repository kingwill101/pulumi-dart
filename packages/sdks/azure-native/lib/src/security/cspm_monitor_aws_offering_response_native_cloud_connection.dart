// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class CspmMonitorAwsOfferingResponseNativeCloudConnection {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [CspmMonitorAwsOfferingResponseNativeCloudConnection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  CspmMonitorAwsOfferingResponseNativeCloudConnection({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory CspmMonitorAwsOfferingResponseNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOfferingResponseNativeCloudConnection(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
    );
  }
}

