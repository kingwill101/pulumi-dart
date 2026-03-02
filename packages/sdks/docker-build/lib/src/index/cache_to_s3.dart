// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';

class CacheToS3 {
  /// Defaults to `$AWS_ACCESS_KEY_ID`.
  final pulumi.Input<String>? accessKeyId;
  /// Prefix to prepend to blob filenames.
  final pulumi.Input<String>? blobsPrefix;
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// Endpoint of the S3 bucket.
  final pulumi.Input<String>? endpointUrl;
  /// Ignore errors caused by failed cache exports.
  final pulumi.Input<bool>? ignoreError;
  /// Prefix to prepend on manifest filenames.
  final pulumi.Input<String>? manifestsPrefix;
  /// The cache mode to use. Defaults to `min`.
  final pulumi.Input<CacheMode>? mode;
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

  /// Creates a new [CacheToS3].
  /// [accessKeyId] Defaults to `$AWS_ACCESS_KEY_ID`.
  /// [blobsPrefix] Prefix to prepend to blob filenames.
  /// [bucket] Name of the S3 bucket.
  /// [endpointUrl] Endpoint of the S3 bucket.
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [manifestsPrefix] Prefix to prepend on manifest filenames.
  /// [mode] The cache mode to use. Defaults to `min`.
  /// [name] Name of the cache image.
  /// [region] The geographic location of the bucket. Defaults to `$AWS_REGION`.
  /// [secretAccessKey] Defaults to `$AWS_SECRET_ACCESS_KEY`.
  /// [sessionToken] Defaults to `$AWS_SESSION_TOKEN`.
  /// [usePathStyle] Uses `bucket` in the URL instead of hostname when `true`.
  CacheToS3({
    this.accessKeyId,
    this.blobsPrefix,
    required this.bucket,
    this.endpointUrl,
    this.ignoreError,
    this.manifestsPrefix,
    this.mode,
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
      'ignoreError': ?ignoreError,
      'manifestsPrefix': ?manifestsPrefix,
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.value),
      'name': ?name,
      'region': region,
      'secretAccessKey': ?secretAccessKey,
      'sessionToken': ?sessionToken,
      'usePathStyle': ?usePathStyle,
    };
  }

  factory CacheToS3.fromMap(Map<String, dynamic> map) {
    return CacheToS3(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId'] as String).input(),
      blobsPrefix: map['blobsPrefix'] == null ? null : (map['blobsPrefix'] as String).input(),
      bucket: (map['bucket'] as String).input(),
      endpointUrl: map['endpointUrl'] == null ? null : (map['endpointUrl'] as String).input(),
      ignoreError: map['ignoreError'] == null ? null : (map['ignoreError'] as bool).input(),
      manifestsPrefix: map['manifestsPrefix'] == null ? null : (map['manifestsPrefix'] as String).input(),
      mode: map['mode'] == null ? null : (CacheMode.fromValue(map['mode'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: (map['region'] as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey'] as String).input(),
      sessionToken: map['sessionToken'] == null ? null : (map['sessionToken'] as String).input(),
      usePathStyle: map['usePathStyle'] == null ? null : (map['usePathStyle'] as bool).input(),
    );
  }
}

