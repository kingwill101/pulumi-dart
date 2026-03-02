// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS cloud account connector based assume role, the role enables delegating access to your AWS resources. The role is composed of role Amazon Resource Name (ARN) and external ID. For more details, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html">Creating a Role to Delegate Permissions to an IAM User (write only)</a>
class AwAssumeRoleAuthenticationDetailsProperties {
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'awsAssumeRole'.
  final pulumi.Input<String> authenticationType;
  /// Assumed role ID is an identifier that you can use to create temporary security credentials.
  final pulumi.Input<String> awsAssumeRoleArn;
  /// A unique identifier that is required when you assume a role in another account.
  final pulumi.Input<String> awsExternalId;

  /// Creates a new [AwAssumeRoleAuthenticationDetailsProperties].
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [awsAssumeRoleArn] Assumed role ID is an identifier that you can use to create temporary security credentials.
  /// [awsExternalId] A unique identifier that is required when you assume a role in another account.
  AwAssumeRoleAuthenticationDetailsProperties({
    required this.authenticationType,
    required this.awsAssumeRoleArn,
    required this.awsExternalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'awsAssumeRoleArn': awsAssumeRoleArn,
      'awsExternalId': awsExternalId,
    };
  }

  factory AwAssumeRoleAuthenticationDetailsProperties.fromMap(Map<String, dynamic> map) {
    return AwAssumeRoleAuthenticationDetailsProperties(
      authenticationType: (map['authenticationType'] as String).input(),
      awsAssumeRoleArn: (map['awsAssumeRoleArn'] as String).input(),
      awsExternalId: (map['awsExternalId'] as String).input(),
    );
  }
}

