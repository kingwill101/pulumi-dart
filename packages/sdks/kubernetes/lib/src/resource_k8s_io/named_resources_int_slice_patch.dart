// ignore_for_file: unused_element, unnecessary_cast


/// NamedResourcesIntSlice contains a slice of 64-bit integers.
class NamedResourcesIntSlicePatch {
  /// Ints is the slice of 64-bit integers.
  final List<int>? ints;

  /// Creates a new [NamedResourcesIntSlicePatch].
  /// [ints] Ints is the slice of 64-bit integers.
  NamedResourcesIntSlicePatch({
    this.ints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ints': ?ints,
    };
  }

  factory NamedResourcesIntSlicePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesIntSlicePatch(
      ints: map['ints'] == null ? null : (map['ints'] as List).cast<int>(),
    );
  }
}

