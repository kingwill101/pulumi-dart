// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a file available via some URI.
class OSPolicyResourceFileRemoteOsconfigV1alpha {
  /// SHA256 checksum of the remote file.
  final pulumi.Input<String>? sha256Checksum;
  /// URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  final pulumi.Input<String> uri;

  /// Creates a new [OSPolicyResourceFileRemoteOsconfigV1alpha].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  OSPolicyResourceFileRemoteOsconfigV1alpha({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Checksum': ?sha256Checksum,
      'uri': uri,
    };
  }

  factory OSPolicyResourceFileRemoteOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileRemoteOsconfigV1alpha(
      sha256Checksum: map['sha256Checksum'] == null ? null : (map['sha256Checksum']! as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

