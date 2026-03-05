// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS cloud account connector based credentials, the credentials is composed of access key ID and secret key, for more details, refer to &lt;a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html"&gt;Creating an IAM User in Your AWS Account (write only)&lt;/a&gt;
class AwsCredsAuthenticationDetailsProperties {
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'awsCreds'.
  final pulumi.Input<String> authenticationType;
  /// Public key element of the AWS credential object (write only)
  final pulumi.Input<String> awsAccessKeyId;
  /// Secret key element of the AWS credential object (write only)
  final pulumi.Input<String> awsSecretAccessKey;

  /// Creates a new [AwsCredsAuthenticationDetailsProperties].
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [awsAccessKeyId] Public key element of the AWS credential object (write only)
  /// [awsSecretAccessKey] Secret key element of the AWS credential object (write only)
  AwsCredsAuthenticationDetailsProperties({
    required this.authenticationType,
    required this.awsAccessKeyId,
    required this.awsSecretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'awsAccessKeyId': awsAccessKeyId,
      'awsSecretAccessKey': awsSecretAccessKey,
    };
  }

  factory AwsCredsAuthenticationDetailsProperties.fromMap(Map<String, dynamic> map) {
    return AwsCredsAuthenticationDetailsProperties(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      awsAccessKeyId: pulumi.Input.fromValue(map['awsAccessKeyId'] as String),
      awsSecretAccessKey: pulumi.Input.fromValue(map['awsSecretAccessKey'] as String),
    );
  }
}

