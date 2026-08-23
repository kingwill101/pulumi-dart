// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheOriginAwsV4Authentication {
  /// The access key ID your origin uses to identify the key.
  final pulumi.Input<String> accessKeyId;
  /// The name of the AWS region that your origin is in.
  final pulumi.Input<String> originRegion;
  /// The Secret Manager secret version of the secret access key used by your origin.
  ///
  /// This is the resource name of the secret version in the format 'projects/*/secrets/*/versions/*' where the '*' values are replaced by the project, secret, and version you require.
  final pulumi.Input<String> secretAccessKeyVersion;

  /// Creates a new [EdgeCacheOriginAwsV4Authentication].
  /// [accessKeyId] The access key ID your origin uses to identify the key.
  /// [originRegion] The name of the AWS region that your origin is in.
  /// [secretAccessKeyVersion] The Secret Manager secret version of the secret access key used by your origin.
  const EdgeCacheOriginAwsV4Authentication({
    required this.accessKeyId,
    required this.originRegion,
    required this.secretAccessKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'originRegion': originRegion,
      'secretAccessKeyVersion': secretAccessKeyVersion,
    };
  }

  factory EdgeCacheOriginAwsV4Authentication.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginAwsV4Authentication(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      originRegion: pulumi.Input.fromValue(map['originRegion'] as String),
      secretAccessKeyVersion: pulumi.Input.fromValue(map['secretAccessKeyVersion'] as String),
    );
  }
}
