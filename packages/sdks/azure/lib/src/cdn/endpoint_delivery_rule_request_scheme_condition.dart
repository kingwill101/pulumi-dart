// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleRequestSchemeCondition {
  /// Valid values are `HTTP` and `HTTPS`.
  final pulumi.Input<List<String>> matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool>? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [EndpointDeliveryRuleRequestSchemeCondition].
  /// [matchValues] Valid values are `HTTP` and `HTTPS`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  const EndpointDeliveryRuleRequestSchemeCondition({
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

  factory EndpointDeliveryRuleRequestSchemeCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestSchemeCondition(
      matchValues: pulumi.Input.fromValue((map['matchValues'] as List).cast<String>()),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

