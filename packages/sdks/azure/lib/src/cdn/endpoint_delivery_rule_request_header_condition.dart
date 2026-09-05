// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleRequestHeaderCondition {
  /// List of header values. This is required if `operator` is not `Any`.
  final pulumi.Input<List<String>?>? matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool?>? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// Header name.
  final pulumi.Input<String> selector;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final pulumi.Input<List<String>?>? transforms;

  /// Creates a new [EndpointDeliveryRuleRequestHeaderCondition].
  /// [matchValues] List of header values. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [selector] Header name.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  const EndpointDeliveryRuleRequestHeaderCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': selector,
      'transforms': ?transforms,
    };
  }

  factory EndpointDeliveryRuleRequestHeaderCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestHeaderCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      selector: pulumi.Input.fromValue(map['selector'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
