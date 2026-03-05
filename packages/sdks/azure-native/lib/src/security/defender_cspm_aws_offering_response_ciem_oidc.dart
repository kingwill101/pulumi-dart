// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
class DefenderCspmAwsOfferingResponseCiemOidc {
  /// the azure active directory app name used of authenticating against AWS
  final pulumi.Input<String>? azureActiveDirectoryAppName;
  /// The cloud role ARN in AWS for Permissions Management used for oidc connection
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingResponseCiemOidc].
  /// [azureActiveDirectoryAppName] the azure active directory app name used of authenticating against AWS
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management used for oidc connection
  DefenderCspmAwsOfferingResponseCiemOidc({
    this.azureActiveDirectoryAppName,
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAppName': ?azureActiveDirectoryAppName,
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderCspmAwsOfferingResponseCiemOidc.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseCiemOidc(
      azureActiveDirectoryAppName: (() { final guardedValue = map['azureActiveDirectoryAppName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

