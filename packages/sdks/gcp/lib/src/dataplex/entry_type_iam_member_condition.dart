// ignore_for_file: unused_element, unnecessary_cast


class EntryTypeIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [EntryTypeIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  EntryTypeIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'title': title,
    };
  }

  factory EntryTypeIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return EntryTypeIamMemberCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

