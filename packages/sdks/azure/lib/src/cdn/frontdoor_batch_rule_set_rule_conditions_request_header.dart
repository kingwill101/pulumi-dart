// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsRequestHeader {
  /// The name of the request header.
  final pulumi.Input<String> name;
  /// A condition operator. Possible values are `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual`, `RegEx`, `NotAny`, `NotEqual`, `NotContains`, `NotBeginsWith`, `NotEndsWith`, `NotLessThan`, `NotLessThanOrEqual`, `NotGreaterThan`, `NotGreaterThanOrEqual`, and `NotRegEx`.
  final pulumi.Input<String> operator;
  /// A list of condition transforms. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode`, and `UrlEncode`. A maximum of `4` transforms may be defined.
  final pulumi.Input<List<String>?>? transforms;
  /// One or more values representing the request header value to match. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  ///
  /// &gt; **Note:** `values` must not be set when `operator` is set to `Any` or `NotAny`, and is required for all other operators.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsRequestHeader].
  /// [name] The name of the request header.
  /// [operator] A condition operator. Possible values are `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual`, `RegEx`, `NotAny`, `NotEqual`, `NotContains`, `NotBeginsWith`, `NotEndsWith`, `NotLessThan`, `NotLessThanOrEqual`, `NotGreaterThan`, `NotGreaterThanOrEqual`, and `NotRegEx`.
  /// [transforms] A list of condition transforms. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode`, and `UrlEncode`. A maximum of `4` transforms may be defined.
  /// [values] One or more values representing the request header value to match. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  const FrontdoorBatchRuleSetRuleConditionsRequestHeader({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'transforms': ?transforms,
      'values': ?values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsRequestHeader.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsRequestHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
