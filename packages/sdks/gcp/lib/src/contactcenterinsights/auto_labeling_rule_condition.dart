// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoLabelingRuleCondition {
  /// A optional CEL expression to be evaluated as a boolean value.
  /// Once evaluated as true, then we will proceed with the value evaluation.
  /// An empty condition will be auto evaluated as true.
  final pulumi.Input<String?>? condition;
  /// CEL expression to be evaluated as the value.
  final pulumi.Input<String?>? value;

  /// Creates a new [AutoLabelingRuleCondition].
  /// [condition] A optional CEL expression to be evaluated as a boolean value.
  /// [value] CEL expression to be evaluated as the value.
  const AutoLabelingRuleCondition({
    this.condition,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'value': ?value,
    };
  }

  factory AutoLabelingRuleCondition.fromMap(Map<String, dynamic> map) {
    return AutoLabelingRuleCondition(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
