// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleHttpVersionCondition {
  /// Valid values are `0.9`, `1.0`, `1.1` and `2.0`.
  final pulumi.Input<List<String>> matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool>? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [EndpointDeliveryRuleHttpVersionCondition].
  /// [matchValues] Valid values are `0.9`, `1.0`, `1.1` and `2.0`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  EndpointDeliveryRuleHttpVersionCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory EndpointDeliveryRuleHttpVersionCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleHttpVersionCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition']! as bool).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
    );
  }
}

