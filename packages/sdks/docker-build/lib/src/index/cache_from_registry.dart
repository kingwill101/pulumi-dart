// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheFromRegistry {
  /// Fully qualified name of the cache image to import.
  final pulumi.Input<String> ref;

  /// Creates a new [CacheFromRegistry].
  /// [ref] Fully qualified name of the cache image to import.
  CacheFromRegistry({required this.ref});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ref': ref};
  }

  factory CacheFromRegistry.fromMap(Map<String, dynamic> map) {
    return CacheFromRegistry(ref: pulumi.Input.fromValue(map['ref'] as String));
  }
}
