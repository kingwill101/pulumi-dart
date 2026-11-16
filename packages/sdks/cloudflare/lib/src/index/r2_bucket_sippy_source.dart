// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketSippySource {
  /// For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Access Key ID of an IAM credential (ideally scoped to a single S3 bucket).
  final pulumi.Input<String?>? accessKeyId;
  /// For `r2_bucket_sippy_provider: azure`: Access key for the Azure Storage account. Mutually exclusive with sasToken.
  final pulumi.Input<String?>? accountKey;
  /// For `r2_bucket_sippy_provider: azure`: Name of the Azure Storage account.
  final pulumi.Input<String?>? accountName;
  /// For `r2_bucket_sippy_provider: aws`: Name of the AWS S3 bucket.
  final pulumi.Input<String?>? bucket;
  /// For `r2_bucket_sippy_provider: s3`: URL to the S3-compatible API of the bucket.
  final pulumi.Input<String?>? bucketUrl;
  /// For `r2_bucket_sippy_provider: gcs`: Client email of an IAM credential (ideally scoped to a single GCS bucket).
  final pulumi.Input<String?>? clientEmail;
  /// Available values: "aws", "gcs", "s3", "azure".
  final pulumi.Input<String?>? cloudProvider;
  /// For `r2_bucket_sippy_provider: azure`: Name of the Azure Blob Storage container.
  final pulumi.Input<String?>? container;
  /// For `r2_bucket_sippy_provider: gcs`: Private Key of an IAM credential (ideally scoped to a single GCS bucket).
  final pulumi.Input<String?>? privateKey;
  /// For `r2_bucket_sippy_provider: aws`: AWS region containing the source S3 bucket.
  final pulumi.Input<String?>? region;
  /// For `r2_bucket_sippy_provider: azure`: Shared Access Signature token for the Azure Storage account. Mutually exclusive with accountKey.
  final pulumi.Input<String?>? sasToken;
  /// For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Secret Access Key of an IAM credential (ideally scoped to a single S3 bucket).
  final pulumi.Input<String?>? secretAccessKey;

  /// Creates a new [R2BucketSippySource].
  /// [accessKeyId] For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Access Key ID of an IAM credential (ideally scoped to a single S3 bucket).
  /// [accountKey] For `r2_bucket_sippy_provider: azure`: Access key for the Azure Storage account. Mutually exclusive with sasToken.
  /// [accountName] For `r2_bucket_sippy_provider: azure`: Name of the Azure Storage account.
  /// [bucket] For `r2_bucket_sippy_provider: aws`: Name of the AWS S3 bucket.
  /// [bucketUrl] For `r2_bucket_sippy_provider: s3`: URL to the S3-compatible API of the bucket.
  /// [clientEmail] For `r2_bucket_sippy_provider: gcs`: Client email of an IAM credential (ideally scoped to a single GCS bucket).
  /// [cloudProvider] Available values: "aws", "gcs", "s3", "azure".
  /// [container] For `r2_bucket_sippy_provider: azure`: Name of the Azure Blob Storage container.
  /// [privateKey] For `r2_bucket_sippy_provider: gcs`: Private Key of an IAM credential (ideally scoped to a single GCS bucket).
  /// [region] For `r2_bucket_sippy_provider: aws`: AWS region containing the source S3 bucket.
  /// [sasToken] For `r2_bucket_sippy_provider: azure`: Shared Access Signature token for the Azure Storage account. Mutually exclusive with accountKey.
  /// [secretAccessKey] For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Secret Access Key of an IAM credential (ideally scoped to a single S3 bucket).
  const R2BucketSippySource({
    this.accessKeyId,
    this.accountKey,
    this.accountName,
    this.bucket,
    this.bucketUrl,
    this.clientEmail,
    this.cloudProvider,
    this.container,
    this.privateKey,
    this.region,
    this.sasToken,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'accountKey': ?accountKey,
      'accountName': ?accountName,
      'bucket': ?bucket,
      'bucketUrl': ?bucketUrl,
      'clientEmail': ?clientEmail,
      'cloudProvider': ?cloudProvider,
      'container': ?container,
      'privateKey': ?privateKey,
      'region': ?region,
      'sasToken': ?sasToken,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory R2BucketSippySource.fromMap(Map<String, dynamic> map) {
    return R2BucketSippySource(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketUrl: (() { final guardedValue = map['bucketUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientEmail: (() { final guardedValue = map['clientEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudProvider: (() { final guardedValue = map['cloudProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
