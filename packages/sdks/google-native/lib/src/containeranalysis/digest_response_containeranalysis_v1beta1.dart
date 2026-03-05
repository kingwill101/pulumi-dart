// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Digest information.
class DigestResponseContaineranalysisV1beta1 {
  /// `SHA1`, `SHA512` etc.
  final pulumi.Input<String> algo;
  /// Value of the digest.
  final pulumi.Input<String> digestBytes;

  /// Creates a new [DigestResponseContaineranalysisV1beta1].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestResponseContaineranalysisV1beta1({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': algo,
      'digestBytes': digestBytes,
    };
  }

  factory DigestResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DigestResponseContaineranalysisV1beta1(
      algo: pulumi.Input.fromValue(map['algo'] as String),
      digestBytes: pulumi.Input.fromValue(map['digestBytes'] as String),
    );
  }
}

