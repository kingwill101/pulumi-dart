// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetResourceGroupFilterTag {
  /// The name of the tag to use for the filter.
  final pulumi.Input<String> name;
  /// The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  final pulumi.Input<String>? operator;
  /// Specifies a list of values for the tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetResourceGroupFilterTag].
  /// [name] The name of the tag to use for the filter.
  /// [operator] The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  /// [values] Specifies a list of values for the tag.
  BudgetResourceGroupFilterTag({
    required this.name,
    this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': ?operator,
      'values': values,
    };
  }

  factory BudgetResourceGroupFilterTag.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupFilterTag(
      name: (map['name'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

