// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryGroupIamMemberCondition {
  final pulumi.Input<String>? description;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> title;

  /// Creates a new [EntryGroupIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  EntryGroupIamMemberCondition({
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

  factory EntryGroupIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return EntryGroupIamMemberCondition(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expression: (map['expression'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

