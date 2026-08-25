// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_transfer_spec_aws_s3_data_source_aws_access_key.dart';

class TransferJobTransferSpecAwsS3DataSource {
  /// AWS credentials block.
  final pulumi.Input<TransferJobTransferSpecAwsS3DataSourceAwsAccessKey?>? awsAccessKey;
  /// S3 Bucket name.
  final pulumi.Input<String> bucketName;
  /// The CloudFront distribution domain name pointing to this bucket, to use when fetching. See [Transfer from S3 via CloudFront](https://cloud.google.com/storage-transfer/docs/s3-cloudfront) for more information. Format: https://{id}.cloudfront.net or any valid custom domain. Must begin with https://.
  final pulumi.Input<String?>? cloudfrontDomain;
  /// The Resource name of a secret in Secret Manager. AWS credentials must be stored in Secret Manager in JSON format. If credentialsSecret is specified, do not specify roleArn or aws_access_key. Format: projects/{projectNumber}/secrets/{secret_name}.
  final pulumi.Input<String?>? credentialsSecret;
  /// Egress bytes over a Google-managed private network. This network is shared between other users of Storage Transfer Service.
  final pulumi.Input<bool?>? managedPrivateNetwork;
  /// S3 Bucket path in bucket to transfer.
  final pulumi.Input<String?>? path;
  /// The Amazon Resource Name (ARN) of the role to support temporary credentials via 'AssumeRoleWithWebIdentity'. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a 'AssumeRoleWithWebIdentity' call for the provided role using the [GoogleServiceAccount][] for this project.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [TransferJobTransferSpecAwsS3DataSource].
  /// [awsAccessKey] AWS credentials block.
  /// [bucketName] S3 Bucket name.
  /// [cloudfrontDomain] The CloudFront distribution domain name pointing to this bucket, to use when fetching. See [Transfer from S3 via CloudFront](https://cloud.google.com/storage-transfer/docs/s3-cloudfront) for more information. Format: https://{id}.cloudfront.net or any valid custom domain. Must begin with https://.
  /// [credentialsSecret] The Resource name of a secret in Secret Manager. AWS credentials must be stored in Secret Manager in JSON format. If credentialsSecret is specified, do not specify roleArn or aws_access_key. Format: projects/{projectNumber}/secrets/{secret_name}.
  /// [managedPrivateNetwork] Egress bytes over a Google-managed private network. This network is shared between other users of Storage Transfer Service.
  /// [path] S3 Bucket path in bucket to transfer.
  /// [roleArn] The Amazon Resource Name (ARN) of the role to support temporary credentials via 'AssumeRoleWithWebIdentity'. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a 'AssumeRoleWithWebIdentity' call for the provided role using the [GoogleServiceAccount][] for this project.
  const TransferJobTransferSpecAwsS3DataSource({
    this.awsAccessKey,
    required this.bucketName,
    this.cloudfrontDomain,
    this.credentialsSecret,
    this.managedPrivateNetwork,
    this.path,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccessKey': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAwsS3DataSourceAwsAccessKey, Map<String, dynamic>>(awsAccessKey, (value) => value.toMap()),
      'bucketName': bucketName,
      'cloudfrontDomain': ?cloudfrontDomain,
      'credentialsSecret': ?credentialsSecret,
      'managedPrivateNetwork': ?managedPrivateNetwork,
      'path': ?path,
      'roleArn': ?roleArn,
    };
  }

  factory TransferJobTransferSpecAwsS3DataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3DataSource(
      awsAccessKey: (() { final guardedValue = map['awsAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobTransferSpecAwsS3DataSourceAwsAccessKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cloudfrontDomain: (() { final guardedValue = map['cloudfrontDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialsSecret: (() { final guardedValue = map['credentialsSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedPrivateNetwork: (() { final guardedValue = map['managedPrivateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
