// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesIntSlice contains a slice of 64-bit integers.
class NamedResourcesIntSlicePatch {
  /// Ints is the slice of 64-bit integers.
  final pulumi.Input<List<int>>? ints;

  /// Creates a new [NamedResourcesIntSlicePatch].
  /// [ints] Ints is the slice of 64-bit integers.
  const NamedResourcesIntSlicePatch({
    this.ints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ints': ?ints,
    };
  }

  factory NamedResourcesIntSlicePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesIntSlicePatch(
      ints: (() { final guardedValue = map['ints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
