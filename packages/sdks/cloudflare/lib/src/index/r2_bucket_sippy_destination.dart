// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketSippyDestination {
  /// ID of a Cloudflare API token.
  /// This is the value labelled "Access Key ID" when creating an API.
  /// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
  final pulumi.Input<String?>? accessKeyId;
  /// Available values: "r2".
  final pulumi.Input<String?>? cloudProvider;
  /// Value of a Cloudflare API token.
  /// This is the value labelled "Secret Access Key" when creating an API.
  /// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
  ///
  /// Sippy will use this token when writing objects to R2, so it is
  /// best to scope this token to the bucket you're enabling Sippy for.
  final pulumi.Input<String?>? secretAccessKey;

  /// Creates a new [R2BucketSippyDestination].
  /// [accessKeyId] ID of a Cloudflare API token.
  /// [cloudProvider] Available values: "r2".
  /// [secretAccessKey] Value of a Cloudflare API token.
  const R2BucketSippyDestination({
    this.accessKeyId,
    this.cloudProvider,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'cloudProvider': ?cloudProvider,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory R2BucketSippyDestination.fromMap(Map<String, dynamic> map) {
    return R2BucketSippyDestination(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudProvider: (() { final guardedValue = map['cloudProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
