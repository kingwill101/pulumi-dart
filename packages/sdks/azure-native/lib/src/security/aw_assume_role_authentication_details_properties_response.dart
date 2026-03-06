// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS cloud account connector based assume role, the role enables delegating access to your AWS resources. The role is composed of role Amazon Resource Name (ARN) and external ID. For more details, refer to &lt;a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html"&gt;Creating a Role to Delegate Permissions to an IAM User (write only)&lt;/a&gt;
class AwAssumeRoleAuthenticationDetailsPropertiesResponse {
  /// The ID of the cloud account
  final pulumi.Input<String> accountId;
  /// State of the multi-cloud connector
  final pulumi.Input<String> authenticationProvisioningState;
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'awsAssumeRole'.
  final pulumi.Input<String> authenticationType;
  /// Assumed role ID is an identifier that you can use to create temporary security credentials.
  final pulumi.Input<String> awsAssumeRoleArn;
  /// A unique identifier that is required when you assume a role in another account.
  final pulumi.Input<String> awsExternalId;
  /// The permissions detected in the cloud account.
  final pulumi.Input<List<String>> grantedPermissions;

  /// Creates a new [AwAssumeRoleAuthenticationDetailsPropertiesResponse].
  /// [accountId] The ID of the cloud account
  /// [authenticationProvisioningState] State of the multi-cloud connector
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [awsAssumeRoleArn] Assumed role ID is an identifier that you can use to create temporary security credentials.
  /// [awsExternalId] A unique identifier that is required when you assume a role in another account.
  /// [grantedPermissions] The permissions detected in the cloud account.
  const AwAssumeRoleAuthenticationDetailsPropertiesResponse({
    required this.accountId,
    required this.authenticationProvisioningState,
    required this.authenticationType,
    required this.awsAssumeRoleArn,
    required this.awsExternalId,
    required this.grantedPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'authenticationProvisioningState': authenticationProvisioningState,
      'authenticationType': authenticationType,
      'awsAssumeRoleArn': awsAssumeRoleArn,
      'awsExternalId': awsExternalId,
      'grantedPermissions': grantedPermissions,
    };
  }

  factory AwAssumeRoleAuthenticationDetailsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwAssumeRoleAuthenticationDetailsPropertiesResponse(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      authenticationProvisioningState: pulumi.Input.fromValue(map['authenticationProvisioningState'] as String),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      awsAssumeRoleArn: pulumi.Input.fromValue(map['awsAssumeRoleArn'] as String),
      awsExternalId: pulumi.Input.fromValue(map['awsExternalId'] as String),
      grantedPermissions: pulumi.Input.fromValue((map['grantedPermissions'] as List).cast<String>()),
    );
  }
}

