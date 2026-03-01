// ignore_for_file: unused_element, unnecessary_cast


class InstanceIamBindingCondition {
  /// An optional description of the instance.
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [InstanceIamBindingCondition].
  /// [description] An optional description of the instance.
  /// [expression] Required.
  /// [title] Required.
  InstanceIamBindingCondition({
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

  factory InstanceIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

