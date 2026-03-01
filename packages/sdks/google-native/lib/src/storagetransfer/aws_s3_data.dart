// ignore_for_file: unused_element, unnecessary_cast

import 'aws_access_key.dart';

/// An AwsS3Data resource can be a data source, but not a data sink. In an AwsS3Data resource, an object's name is the S3 object's key name.
class AwsS3Data {
  /// Input only. AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the bucket must be granted to the access ID of the AWS access key. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
  final AwsAccessKey? awsAccessKey;
  /// S3 Bucket name (see [Creating a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)).
  final String bucketName;
  /// Optional. Cloudfront domain name pointing to this bucket (as origin), to use when fetching. Format: `https://{id}.cloudfront.net` or any valid custom domain `https://...`
  final String? cloudfrontDomain;
  /// Optional. The Resource name of a secret in Secret Manager. The Azure SAS token must be stored in Secret Manager in JSON format: { "sas_token" : "SAS_TOKEN" } GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for the resource. See [Configure access to a source: Microsoft Azure Blob Storage] (https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#secret_manager) for more information. If `credentials_secret` is specified, do not specify azure_credentials. This feature is in [preview](https://cloud.google.com/terms/service-terms#1). Format: `projects/{project_number}/secrets/{secret_name}`
  final String? credentialsSecret;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String? path;
  /// The Amazon Resource Name (ARN) of the role to support temporary credentials via `AssumeRoleWithWebIdentity`. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a `AssumeRoleWithWebIdentity` call for the provided role using the GoogleServiceAccount for this project.
  final String? roleArn;

  /// Creates a new [AwsS3Data].
  /// [awsAccessKey] Input only. AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the bucket must be granted to the access ID of the AWS access key. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
  /// [bucketName] S3 Bucket name (see [Creating a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)).
  /// [cloudfrontDomain] Optional. Cloudfront domain name pointing to this bucket (as origin), to use when fetching. Format: `https://{id}.cloudfront.net` or any valid custom domain `https://...`
  /// [credentialsSecret] Optional. The Resource name of a secret in Secret Manager. The Azure SAS token must be stored in Secret Manager in JSON format: { "sas_token" : "SAS_TOKEN" } GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for the resource. See [Configure access to a source: Microsoft Azure Blob Storage] (https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#secret_manager) for more information. If `credentials_secret` is specified, do not specify azure_credentials. This feature is in [preview](https://cloud.google.com/terms/service-terms#1). Format: `projects/{project_number}/secrets/{secret_name}`
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  /// [roleArn] The Amazon Resource Name (ARN) of the role to support temporary credentials via `AssumeRoleWithWebIdentity`. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a `AssumeRoleWithWebIdentity` call for the provided role using the GoogleServiceAccount for this project.
  AwsS3Data({
    this.awsAccessKey,
    required this.bucketName,
    this.cloudfrontDomain,
    this.credentialsSecret,
    this.path,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccessKey': ?awsAccessKey == null ? null : awsAccessKey!.toMap(),
      'bucketName': bucketName,
      'cloudfrontDomain': ?cloudfrontDomain,
      'credentialsSecret': ?credentialsSecret,
      'path': ?path,
      'roleArn': ?roleArn,
    };
  }

  factory AwsS3Data.fromMap(Map<String, dynamic> map) {
    return AwsS3Data(
      awsAccessKey: map['awsAccessKey'] == null ? null : AwsAccessKey.fromMap((map['awsAccessKey'] as Map).cast<String, dynamic>()),
      bucketName: map['bucketName'] as String,
      cloudfrontDomain: map['cloudfrontDomain'] == null ? null : map['cloudfrontDomain'] as String,
      credentialsSecret: map['credentialsSecret'] == null ? null : map['credentialsSecret'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}

