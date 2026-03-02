// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS cloud account connector based credentials, the credentials is composed of access key ID and secret key, for more details, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html">Creating an IAM User in Your AWS Account (write only)</a>
class AwsCredsAuthenticationDetailsPropertiesResponse {
  /// The ID of the cloud account
  final pulumi.Input<String> accountId;
  /// State of the multi-cloud connector
  final pulumi.Input<String> authenticationProvisioningState;
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'awsCreds'.
  final pulumi.Input<String> authenticationType;
  /// Public key element of the AWS credential object (write only)
  final pulumi.Input<String> awsAccessKeyId;
  /// Secret key element of the AWS credential object (write only)
  final pulumi.Input<String> awsSecretAccessKey;
  /// The permissions detected in the cloud account.
  final pulumi.Input<List<String>> grantedPermissions;

  /// Creates a new [AwsCredsAuthenticationDetailsPropertiesResponse].
  /// [accountId] The ID of the cloud account
  /// [authenticationProvisioningState] State of the multi-cloud connector
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [awsAccessKeyId] Public key element of the AWS credential object (write only)
  /// [awsSecretAccessKey] Secret key element of the AWS credential object (write only)
  /// [grantedPermissions] The permissions detected in the cloud account.
  AwsCredsAuthenticationDetailsPropertiesResponse({
    required this.accountId,
    required this.authenticationProvisioningState,
    required this.authenticationType,
    required this.awsAccessKeyId,
    required this.awsSecretAccessKey,
    required this.grantedPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'authenticationProvisioningState': authenticationProvisioningState,
      'authenticationType': authenticationType,
      'awsAccessKeyId': awsAccessKeyId,
      'awsSecretAccessKey': awsSecretAccessKey,
      'grantedPermissions': grantedPermissions,
    };
  }

  factory AwsCredsAuthenticationDetailsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCredsAuthenticationDetailsPropertiesResponse(
      accountId: (map['accountId'] as String).input(),
      authenticationProvisioningState: (map['authenticationProvisioningState'] as String).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      awsAccessKeyId: (map['awsAccessKeyId'] as String).input(),
      awsSecretAccessKey: (map['awsSecretAccessKey'] as String).input(),
      grantedPermissions: ((map['grantedPermissions'] as List).cast<String>()).input(),
    );
  }
}

