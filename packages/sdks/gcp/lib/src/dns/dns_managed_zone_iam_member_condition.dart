// ignore_for_file: unused_element, unnecessary_cast


class DnsManagedZoneIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [DnsManagedZoneIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  DnsManagedZoneIamMemberCondition({
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

  factory DnsManagedZoneIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return DnsManagedZoneIamMemberCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

