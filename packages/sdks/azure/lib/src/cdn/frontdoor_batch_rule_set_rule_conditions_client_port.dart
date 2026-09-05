// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsClientPort {
  /// A condition operator. Possible values are `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual`, `RegEx`, `NotAny`, `NotEqual`, `NotContains`, `NotBeginsWith`, `NotEndsWith`, `NotLessThan`, `NotLessThanOrEqual`, `NotGreaterThan`, `NotGreaterThanOrEqual`, and `NotRegEx`.
  final pulumi.Input<String> operator;
  /// One or more values representing the client port to match. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  ///
  /// &gt; **Note:** `values` must not be set when `operator` is set to `Any` or `NotAny`, and is required for all other operators.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsClientPort].
  /// [operator] A condition operator. Possible values are `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual`, `RegEx`, `NotAny`, `NotEqual`, `NotContains`, `NotBeginsWith`, `NotEndsWith`, `NotLessThan`, `NotLessThanOrEqual`, `NotGreaterThan`, `NotGreaterThanOrEqual`, and `NotRegEx`.
  /// [values] One or more values representing the client port to match. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  const FrontdoorBatchRuleSetRuleConditionsClientPort({
    required this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': ?values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsClientPort.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsClientPort(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
