// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleQueryStringCondition {
  /// List of string values. This is required if `operator` is not `Any`.
  final pulumi.Input<List<String>>? matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool>? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [EndpointDeliveryRuleQueryStringCondition].
  /// [matchValues] List of string values. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  EndpointDeliveryRuleQueryStringCondition({
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

  factory EndpointDeliveryRuleQueryStringCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleQueryStringCondition(
      matchValues: map['matchValues'] == null ? null : ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

