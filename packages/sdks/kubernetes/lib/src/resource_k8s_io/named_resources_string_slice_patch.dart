// ignore_for_file: unused_element, unnecessary_cast


/// NamedResourcesStringSlice contains a slice of strings.
class NamedResourcesStringSlicePatch {
  /// Strings is the slice of strings.
  final List<String>? strings;

  /// Creates a new [NamedResourcesStringSlicePatch].
  /// [strings] Strings is the slice of strings.
  NamedResourcesStringSlicePatch({
    this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strings': ?strings,
    };
  }

  factory NamedResourcesStringSlicePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesStringSlicePatch(
      strings: map['strings'] == null ? null : (map['strings'] as List).cast<String>(),
    );
  }
}

