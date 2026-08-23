// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a file available via some URI.
class OSPolicyResourceFileRemoteResponseOsconfigV1alpha {
  /// SHA256 checksum of the remote file.
  final pulumi.Input<String> sha256Checksum;
  /// URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  final pulumi.Input<String> uri;

  /// Creates a new [OSPolicyResourceFileRemoteResponseOsconfigV1alpha].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  const OSPolicyResourceFileRemoteResponseOsconfigV1alpha({
    required this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Checksum': sha256Checksum,
      'uri': uri,
    };
  }

  factory OSPolicyResourceFileRemoteResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileRemoteResponseOsconfigV1alpha(
      sha256Checksum: pulumi.Input.fromValue(map['sha256Checksum'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
