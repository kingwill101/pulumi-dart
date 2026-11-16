// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_aws_aws_iam_role.dart';

class ZeroTrustCasbIntegrationAws {
  /// Authenticate by delegating to a cross-account IAM role.
  final pulumi.Input<ZeroTrustCasbIntegrationAwsAwsIamRole?>? awsIamRole;

  /// Creates a new [ZeroTrustCasbIntegrationAws].
  /// [awsIamRole] Authenticate by delegating to a cross-account IAM role.
  const ZeroTrustCasbIntegrationAws({
    this.awsIamRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIamRole': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAwsAwsIamRole, Map<String, dynamic>>(awsIamRole, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationAws.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAws(
      awsIamRole: (() { final guardedValue = map['awsIamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAwsAwsIamRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
