// ignore_for_file: unused_element, unnecessary_cast


class AssignmentDynamicScopeFilterTag {
  /// Specifies the tag to filter by.
  final String tag;
  /// Specifies a list of values the defined tag can have.
  final List<String> values;

  /// Creates a new [AssignmentDynamicScopeFilterTag].
  /// [tag] Specifies the tag to filter by.
  /// [values] Specifies a list of values the defined tag can have.
  AssignmentDynamicScopeFilterTag({
    required this.tag,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'values': values,
    };
  }

  factory AssignmentDynamicScopeFilterTag.fromMap(Map<String, dynamic> map) {
    return AssignmentDynamicScopeFilterTag(
      tag: map['tag'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

