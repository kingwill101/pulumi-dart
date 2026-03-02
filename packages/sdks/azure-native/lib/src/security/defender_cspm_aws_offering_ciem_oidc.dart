// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
class DefenderCspmAwsOfferingCiemOidc {
  /// the azure active directory app name used of authenticating against AWS
  final pulumi.Input<String>? azureActiveDirectoryAppName;
  /// The cloud role ARN in AWS for Permissions Management used for oidc connection
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingCiemOidc].
  /// [azureActiveDirectoryAppName] the azure active directory app name used of authenticating against AWS
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management used for oidc connection
  DefenderCspmAwsOfferingCiemOidc({
    this.azureActiveDirectoryAppName,
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAppName': ?azureActiveDirectoryAppName,
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderCspmAwsOfferingCiemOidc.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiemOidc(
      azureActiveDirectoryAppName: map['azureActiveDirectoryAppName'] == null ? null : (map['azureActiveDirectoryAppName']! as String).input(),
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
    );
  }
}

