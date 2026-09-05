// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleUrlPathCondition {
  /// List of string values. This is required if `operator` is not `Any`.
  final pulumi.Input<List<String>?>? matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool?>? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`, `LessThanOrEqual`, `RegEx` and `Wildcard`.
  final pulumi.Input<String> operator;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final pulumi.Input<List<String>?>? transforms;

  /// Creates a new [EndpointDeliveryRuleUrlPathCondition].
  /// [matchValues] List of string values. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`, `LessThanOrEqual`, `RegEx` and `Wildcard`.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  const EndpointDeliveryRuleUrlPathCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory EndpointDeliveryRuleUrlPathCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleUrlPathCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
