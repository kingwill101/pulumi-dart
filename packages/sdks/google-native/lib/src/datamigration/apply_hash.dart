// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Apply a hash function on the value.
class ApplyHash {
  /// Optional. Generate UUID from the data's byte array
  final pulumi.Input<Map<String, dynamic>>? uuidFromBytes;

  /// Creates a new [ApplyHash].
  /// [uuidFromBytes] Optional. Generate UUID from the data's byte array
  const ApplyHash({
    this.uuidFromBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuidFromBytes': ?uuidFromBytes,
    };
  }

  factory ApplyHash.fromMap(Map<String, dynamic> map) {
    return ApplyHash(
      uuidFromBytes: (() { final guardedValue = map['uuidFromBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
