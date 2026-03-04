// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertCompoundConditionComponentCondition {
  /// The identifier that will be used in the compound alert condition's `trigger_expression` (e.g., 'a', 'b', 'c', 'd', 'e').
  final pulumi.Input<String> alias;

  /// The ID of the existing alert condition to use as a component.
  final pulumi.Input<String> id;

  /// Creates a new [AlertCompoundConditionComponentCondition].
  /// [alias] The identifier that will be used in the compound alert condition's `trigger_expression` (e.g., 'a', 'b', 'c', 'd', 'e').
  /// [id] The ID of the existing alert condition to use as a component.
  AlertCompoundConditionComponentCondition({
    required this.alias,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alias': alias, 'id': id};
  }

  factory AlertCompoundConditionComponentCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertCompoundConditionComponentCondition(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
