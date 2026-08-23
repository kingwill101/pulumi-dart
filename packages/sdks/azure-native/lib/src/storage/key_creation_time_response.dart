// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage account keys creation time.
class KeyCreationTimeResponse {
  final pulumi.Input<String>? key1;
  final pulumi.Input<String>? key2;

  /// Creates a new [KeyCreationTimeResponse].
  /// [key1] Optional.
  /// [key2] Optional.
  const KeyCreationTimeResponse({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory KeyCreationTimeResponse.fromMap(Map<String, dynamic> map) {
    return KeyCreationTimeResponse(
      key1: (() { final guardedValue = map['key1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key2: (() { final guardedValue = map['key2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
