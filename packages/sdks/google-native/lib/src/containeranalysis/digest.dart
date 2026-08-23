// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Digest information.
class Digest {
  /// `SHA1`, `SHA512` etc.
  final pulumi.Input<String>? algo;
  /// Value of the digest.
  final pulumi.Input<String>? digestBytes;

  /// Creates a new [Digest].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  const Digest({
    this.algo,
    this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': ?algo,
      'digestBytes': ?digestBytes,
    };
  }

  factory Digest.fromMap(Map<String, dynamic> map) {
    return Digest(
      algo: (() { final guardedValue = map['algo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digestBytes: (() { final guardedValue = map['digestBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
