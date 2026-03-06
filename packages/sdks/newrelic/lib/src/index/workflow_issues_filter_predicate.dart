// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowIssuesFilterPredicate {
  /// Issue event attribute to check
  final pulumi.Input<String> attribute;
  /// An operator to use to compare the attribute with the provided `values`, see supported operators below
  final pulumi.Input<String> operator;
  /// The `attribute` must match **any** of the values in this list
  final pulumi.Input<List<String>> values;

  /// Creates a new [WorkflowIssuesFilterPredicate].
  /// [attribute] Issue event attribute to check
  /// [operator] An operator to use to compare the attribute with the provided `values`, see supported operators below
  /// [values] The `attribute` must match **any** of the values in this list
  const WorkflowIssuesFilterPredicate({
    required this.attribute,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'operator': operator,
      'values': values,
    };
  }

  factory WorkflowIssuesFilterPredicate.fromMap(Map<String, dynamic> map) {
    return WorkflowIssuesFilterPredicate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

