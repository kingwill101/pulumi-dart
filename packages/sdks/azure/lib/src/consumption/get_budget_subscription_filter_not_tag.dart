// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetSubscriptionFilterNotTag {
  /// The name of this Consumption Budget.
  final pulumi.Input<String> name;

  /// The operator to used for comparison.
  final pulumi.Input<String> operator;

  /// A list of values for the tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetBudgetSubscriptionFilterNotTag].
  /// [name] The name of this Consumption Budget.
  /// [operator] The operator to used for comparison.
  /// [values] A list of values for the tag.
  GetBudgetSubscriptionFilterNotTag({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory GetBudgetSubscriptionFilterNotTag.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionFilterNotTag(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
