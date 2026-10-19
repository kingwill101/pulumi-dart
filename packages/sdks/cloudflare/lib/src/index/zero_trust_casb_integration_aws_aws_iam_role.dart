// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationAwsAwsIamRole {
  /// External ID required when assuming the IAM role.
  final pulumi.Input<String> externalId;
  /// ARN of the cross-account IAM role Cloudflare will assume.
  final pulumi.Input<String> roleArn;

  /// Creates a new [ZeroTrustCasbIntegrationAwsAwsIamRole].
  /// [externalId] External ID required when assuming the IAM role.
  /// [roleArn] ARN of the cross-account IAM role Cloudflare will assume.
  const ZeroTrustCasbIntegrationAwsAwsIamRole({
    required this.externalId,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': externalId,
      'roleArn': roleArn,
    };
  }

  factory ZeroTrustCasbIntegrationAwsAwsIamRole.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAwsAwsIamRole(
      externalId: pulumi.Input.fromValue(map['externalId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
