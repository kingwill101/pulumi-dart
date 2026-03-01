// ignore_for_file: unused_element, unnecessary_cast


class WorkflowIssuesFilterPredicate {
  /// Issue event attribute to check
  final String attribute;
  /// An operator to use to compare the attribute with the provided `values`, see supported operators below
  final String operator;
  /// The `attribute` must match **any** of the values in this list
  final List<String> values;

  /// Creates a new [WorkflowIssuesFilterPredicate].
  /// [attribute] Issue event attribute to check
  /// [operator] An operator to use to compare the attribute with the provided `values`, see supported operators below
  /// [values] The `attribute` must match **any** of the values in this list
  WorkflowIssuesFilterPredicate({
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
      attribute: map['attribute'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

