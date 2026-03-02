// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Digest information.
class DigestContaineranalysisV1alpha1 {
  /// `SHA1`, `SHA512` etc.
  final pulumi.Input<String>? algo;
  /// Value of the digest.
  final pulumi.Input<String>? digestBytes;

  /// Creates a new [DigestContaineranalysisV1alpha1].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestContaineranalysisV1alpha1({
    this.algo,
    this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': ?algo,
      'digestBytes': ?digestBytes,
    };
  }

  factory DigestContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DigestContaineranalysisV1alpha1(
      algo: map['algo'] == null ? null : (map['algo']! as String).input(),
      digestBytes: map['digestBytes'] == null ? null : (map['digestBytes']! as String).input(),
    );
  }
}

