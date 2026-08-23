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
  const FluxConfigurationBucket({
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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      localAuthReference: (() { final guardedValue = map['localAuthReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKeyBase64: (() { final guardedValue = map['secretKeyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
