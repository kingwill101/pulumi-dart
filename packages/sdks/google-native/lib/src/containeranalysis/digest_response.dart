// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Digest information.
class DigestResponse {
  /// `SHA1`, `SHA512` etc.
  final pulumi.Input<String> algo;
  /// Value of the digest.
  final pulumi.Input<String> digestBytes;

  /// Creates a new [DigestResponse].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  const DigestResponse({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': algo,
      'digestBytes': digestBytes,
    };
  }

  factory DigestResponse.fromMap(Map<String, dynamic> map) {
    return DigestResponse(
      algo: pulumi.Input.fromValue(map['algo'] as String),
      digestBytes: pulumi.Input.fromValue(map['digestBytes'] as String),
    );
  }
}
