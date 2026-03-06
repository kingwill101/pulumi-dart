// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheFromLocal {
  /// Digest of manifest to import.
  final pulumi.Input<String>? digest;
  /// Path of the local directory where cache gets imported from.
  final pulumi.Input<String> src;

  /// Creates a new [CacheFromLocal].
  /// [digest] Digest of manifest to import.
  /// [src] Path of the local directory where cache gets imported from.
  const CacheFromLocal({
    this.digest,
    required this.src,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'src': src,
    };
  }

  factory CacheFromLocal.fromMap(Map<String, dynamic> map) {
    return CacheFromLocal(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      src: pulumi.Input.fromValue(map['src'] as String),
    );
  }
}

