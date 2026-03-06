// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssignmentDynamicScopeFilterTag {
  /// Specifies the tag to filter by.
  final pulumi.Input<String> tag;
  /// Specifies a list of values the defined tag can have.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AssignmentDynamicScopeFilterTag].
  /// [tag] Specifies the tag to filter by.
  /// [values] Specifies a list of values the defined tag can have.
  const AssignmentDynamicScopeFilterTag({
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
      tag: pulumi.Input.fromValue(map['tag'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

