// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleRequestMethodCondition {
  /// Valid values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `POST` and `PUT`.
  final pulumi.Input<List<String>> matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool>? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [EndpointDeliveryRuleRequestMethodCondition].
  /// [matchValues] Valid values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `POST` and `PUT`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  EndpointDeliveryRuleRequestMethodCondition({
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

  factory EndpointDeliveryRuleRequestMethodCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestMethodCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition']! as bool).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
    );
  }
}

