// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FluxConfigurationBucket {
  /// Specifies the plaintext access key used to securely access the S3 bucket.
  final pulumi.Input<String>? accessKey;
  /// Specifies the bucket name to sync from the url endpoint for the flux configuration.
  final pulumi.Input<String> bucketName;
  /// Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthReference;
  /// Specifies the Base64-encoded secret key used to authenticate with the bucket source.
  final pulumi.Input<String>? secretKeyBase64;
  /// Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to `600`.
  final pulumi.Input<int>? syncIntervalInSeconds;
  /// Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to `600`.
  final pulumi.Input<int>? timeoutInSeconds;
  /// Specify whether to communicate with a bucket using TLS is enabled. Defaults to `true`.
  final pulumi.Input<bool>? tlsEnabled;
  /// Specifies the URL to sync for the flux configuration S3 bucket. It must start with `http://` or `https://`.
  final pulumi.Input<String> url;

  /// Creates a new [FluxConfigurationBucket].
  /// [accessKey] Specifies the plaintext access key used to securely access the S3 bucket.
  /// [bucketName] Specifies the bucket name to sync from the url endpoint for the flux configuration.
  /// [localAuthReference] Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [secretKeyBase64] Specifies the Base64-encoded secret key used to authenticate with the bucket source.
  /// [syncIntervalInSeconds] Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to `600`.
  /// [timeoutInSeconds] Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to `600`.
  /// [tlsEnabled] Specify whether to communicate with a bucket using TLS is enabled. Defaults to `true`.
  /// [url] Specifies the URL to sync for the flux configuration S3 bucket. It must start with `http://` or `https://`.
  FluxConfigurationBucket({
    this.accessKey,
    required this.bucketName,
    this.localAuthReference,
    this.secretKeyBase64,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.tlsEnabled,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'bucketName': bucketName,
      'localAuthReference': ?localAuthReference,
      'secretKeyBase64': ?secretKeyBase64,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'tlsEnabled': ?tlsEnabled,
      'url': url,
    };
  }

  factory FluxConfigurationBucket.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationBucket(
      accessKey: map['accessKey'] == null ? null : (map['accessKey'] as String).input(),
      bucketName: (map['bucketName'] as String).input(),
      localAuthReference: map['localAuthReference'] == null ? null : (map['localAuthReference'] as String).input(),
      secretKeyBase64: map['secretKeyBase64'] == null ? null : (map['secretKeyBase64'] as String).input(),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : (map['syncIntervalInSeconds'] as int).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as int).input(),
      tlsEnabled: map['tlsEnabled'] == null ? null : (map['tlsEnabled'] as bool).input(),
      url: (map['url'] as String).input(),
    );
  }
}

