// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleRemoteAddressCondition {
  /// List of string values. For `GeoMatch` `operator` this should be a list of country codes (e.g. `US` or `DE`). List of IP address if `operator` equals to `IPMatch`. This is required if `operator` is not `Any`.
  final pulumi.Input<List<String>>? matchValues;
  /// Defaults to `false`.
  final pulumi.Input<bool>? negateCondition;
  /// Valid values are `Any`, `GeoMatch` and `IPMatch`.
  final pulumi.Input<String> operator;

  /// Creates a new [EndpointDeliveryRuleRemoteAddressCondition].
  /// [matchValues] List of string values. For `GeoMatch` `operator` this should be a list of country codes (e.g. `US` or `DE`). List of IP address if `operator` equals to `IPMatch`. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `GeoMatch` and `IPMatch`.
  EndpointDeliveryRuleRemoteAddressCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
    };
  }

  factory EndpointDeliveryRuleRemoteAddressCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRemoteAddressCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}

