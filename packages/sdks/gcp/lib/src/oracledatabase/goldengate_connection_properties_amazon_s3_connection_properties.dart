// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesAmazonS3ConnectionProperties {
  /// Access key ID to access the Amazon S3 bucket.
  final pulumi.Input<String>? accessKeyId;
  /// The Amazon Endpoint for S3.
  final pulumi.Input<String>? endpoint;
  /// The name of the AWS region where the bucket is created.
  final pulumi.Input<String>? region;
  /// Secret access key to access the Amazon S3 bucket.
  final pulumi.Input<String>? secretAccessKeySecret;
  /// The technology type of AmazonS3Connection.
  final pulumi.Input<String>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesAmazonS3ConnectionProperties].
  /// [accessKeyId] Access key ID to access the Amazon S3 bucket.
  /// [endpoint] The Amazon Endpoint for S3.
  /// [region] The name of the AWS region where the bucket is created.
  /// [secretAccessKeySecret] Secret access key to access the Amazon S3 bucket.
  /// [technologyType] The technology type of AmazonS3Connection.
  const GoldengateConnectionPropertiesAmazonS3ConnectionProperties({
    this.accessKeyId,
    this.endpoint,
    this.region,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'endpoint': ?endpoint,
      'region': ?region,
      'secretAccessKeySecret': ?secretAccessKeySecret,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesAmazonS3ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesAmazonS3ConnectionProperties(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKeySecret: (() { final guardedValue = map['secretAccessKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
