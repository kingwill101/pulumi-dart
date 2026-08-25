// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesAmazonKinesisConnectionProperties {
  /// Access key ID to access the Amazon Kinesis.
  final pulumi.Input<String?>? accessKeyId;
  /// The name of the AWS region.
  /// If not provided, Goldengate will default to 'us-west-1'.
  final pulumi.Input<String?>? awsRegion;
  /// The endpoint URL of the Amazon Kinesis service.
  /// e.g.: 'https://kinesis.us-east-1.amazonaws.com'
  /// If not provided, Goldengate will default to
  /// 'https://kinesis..amazonaws.com'.
  final pulumi.Input<String?>? endpoint;
  /// Secret access key to access the Amazon Kinesis.
  final pulumi.Input<String?>? secretAccessKeySecret;
  /// The technology type of AmazonKinesisConnection.
  final pulumi.Input<String?>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesAmazonKinesisConnectionProperties].
  /// [accessKeyId] Access key ID to access the Amazon Kinesis.
  /// [awsRegion] The name of the AWS region.
  /// [endpoint] The endpoint URL of the Amazon Kinesis service.
  /// [secretAccessKeySecret] Secret access key to access the Amazon Kinesis.
  /// [technologyType] The technology type of AmazonKinesisConnection.
  const GoldengateConnectionPropertiesAmazonKinesisConnectionProperties({
    this.accessKeyId,
    this.awsRegion,
    this.endpoint,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'awsRegion': ?awsRegion,
      'endpoint': ?endpoint,
      'secretAccessKeySecret': ?secretAccessKeySecret,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesAmazonKinesisConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesAmazonKinesisConnectionProperties(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKeySecret: (() { final guardedValue = map['secretAccessKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
