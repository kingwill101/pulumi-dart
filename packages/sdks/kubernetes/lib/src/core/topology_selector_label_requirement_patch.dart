// ignore_for_file: unused_element, unnecessary_cast


/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
class TopologySelectorLabelRequirementPatch {
  /// The label key that the selector applies to.
  final String? key;
  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  final List<String>? values;

  /// Creates a new [TopologySelectorLabelRequirementPatch].
  /// [key] The label key that the selector applies to.
  /// [values] An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  TopologySelectorLabelRequirementPatch({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory TopologySelectorLabelRequirementPatch.fromMap(Map<String, dynamic> map) {
    return TopologySelectorLabelRequirementPatch(
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

