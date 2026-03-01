// ignore_for_file: unused_element, unnecessary_cast


class FluxConfigurationBucket {
  /// Specifies the plaintext access key used to securely access the S3 bucket.
  final String? accessKey;
  /// Specifies the bucket name to sync from the url endpoint for the flux configuration.
  final String bucketName;
  /// Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number.
  final String? localAuthReference;
  /// Specifies the Base64-encoded secret key used to authenticate with the bucket source.
  final String? secretKeyBase64;
  /// Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to `600`.
  final int? syncIntervalInSeconds;
  /// Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to `600`.
  final int? timeoutInSeconds;
  /// Specify whether to communicate with a bucket using TLS is enabled. Defaults to `true`.
  final bool? tlsEnabled;
  /// Specifies the URL to sync for the flux configuration S3 bucket. It must start with `http://` or `https://`.
  final String url;

  /// Creates a new [FluxConfigurationBucket].
  /// [accessKey] Specifies the plaintext access key used to securely access the S3 bucket.
  /// [bucketName] Specifies the bucket name to sync from the url endpoint for the flux configuration.
  /// [localAuthReference] Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number.
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
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      bucketName: map['bucketName'] as String,
      localAuthReference: map['localAuthReference'] == null ? null : map['localAuthReference'] as String,
      secretKeyBase64: map['secretKeyBase64'] == null ? null : map['secretKeyBase64'] as String,
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as int,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
      tlsEnabled: map['tlsEnabled'] == null ? null : map['tlsEnabled'] as bool,
      url: map['url'] as String,
    );
  }
}

