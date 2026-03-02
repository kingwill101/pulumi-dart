// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheFromS3 {
  /// Defaults to `$AWS_ACCESS_KEY_ID`.
  final pulumi.Input<String>? accessKeyId;
  /// Prefix to prepend to blob filenames.
  final pulumi.Input<String>? blobsPrefix;
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// Endpoint of the S3 bucket.
  final pulumi.Input<String>? endpointUrl;
  /// Prefix to prepend on manifest filenames.
  final pulumi.Input<String>? manifestsPrefix;
  /// Name of the cache image.
  final pulumi.Input<String>? name;
  /// The geographic location of the bucket. Defaults to `$AWS_REGION`.
  final pulumi.Input<String> region;
  /// Defaults to `$AWS_SECRET_ACCESS_KEY`.
  final pulumi.Input<String>? secretAccessKey;
  /// Defaults to `$AWS_SESSION_TOKEN`.
  final pulumi.Input<String>? sessionToken;
  /// Uses `bucket` in the URL instead of hostname when `true`.
  final pulumi.Input<bool>? usePathStyle;

  /// Creates a new [CacheFromS3].
  /// [accessKeyId] Defaults to `$AWS_ACCESS_KEY_ID`.
  /// [blobsPrefix] Prefix to prepend to blob filenames.
  /// [bucket] Name of the S3 bucket.
  /// [endpointUrl] Endpoint of the S3 bucket.
  /// [manifestsPrefix] Prefix to prepend on manifest filenames.
  /// [name] Name of the cache image.
  /// [region] The geographic location of the bucket. Defaults to `$AWS_REGION`.
  /// [secretAccessKey] Defaults to `$AWS_SECRET_ACCESS_KEY`.
  /// [sessionToken] Defaults to `$AWS_SESSION_TOKEN`.
  /// [usePathStyle] Uses `bucket` in the URL instead of hostname when `true`.
  CacheFromS3({
    this.accessKeyId,
    this.blobsPrefix,
    required this.bucket,
    this.endpointUrl,
    this.manifestsPrefix,
    this.name,
    required this.region,
    this.secretAccessKey,
    this.sessionToken,
    this.usePathStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'blobsPrefix': ?blobsPrefix,
      'bucket': bucket,
      'endpointUrl': ?endpointUrl,
      'manifestsPrefix': ?manifestsPrefix,
      'name': ?name,
      'region': region,
      'secretAccessKey': ?secretAccessKey,
      'sessionToken': ?sessionToken,
      'usePathStyle': ?usePathStyle,
    };
  }

  factory CacheFromS3.fromMap(Map<String, dynamic> map) {
    return CacheFromS3(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      blobsPrefix: map['blobsPrefix'] == null ? null : (map['blobsPrefix']! as String).input(),
      bucket: (map['bucket'] as String).input(),
      endpointUrl: map['endpointUrl'] == null ? null : (map['endpointUrl']! as String).input(),
      manifestsPrefix: map['manifestsPrefix'] == null ? null : (map['manifestsPrefix']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: (map['region'] as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
      sessionToken: map['sessionToken'] == null ? null : (map['sessionToken']! as String).input(),
      usePathStyle: map['usePathStyle'] == null ? null : (map['usePathStyle']! as bool).input(),
    );
  }
}

