// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage {
  /// The access key ID of Amazon S3.
  final pulumi.Input<String> accessKeyId;
  /// The bucket of Amazon S3.
  final pulumi.Input<String> bucket;
  /// The endpoint of Amazon S3.
  final pulumi.Input<String>? endpoint;
  /// The region of Amazon S3.
  final pulumi.Input<String> region;
  /// The scheme type of Amazon S3.
  /// Possible values:
  /// S3
  /// S3A
  final pulumi.Input<String> schemeType;
  /// The secret access key of Amazon S3.
  final pulumi.Input<String>? secretAccessKeySecret;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage].
  /// [accessKeyId] The access key ID of Amazon S3.
  /// [bucket] The bucket of Amazon S3.
  /// [endpoint] The endpoint of Amazon S3.
  /// [region] The region of Amazon S3.
  /// [schemeType] The scheme type of Amazon S3.
  /// [secretAccessKeySecret] The secret access key of Amazon S3.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage({
    required this.accessKeyId,
    required this.bucket,
    this.endpoint,
    required this.region,
    required this.schemeType,
    this.secretAccessKeySecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'bucket': bucket,
      'endpoint': ?endpoint,
      'region': region,
      'schemeType': schemeType,
      'secretAccessKeySecret': ?secretAccessKeySecret,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      schemeType: pulumi.Input.fromValue(map['schemeType'] as String),
      secretAccessKeySecret: (() { final guardedValue = map['secretAccessKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
