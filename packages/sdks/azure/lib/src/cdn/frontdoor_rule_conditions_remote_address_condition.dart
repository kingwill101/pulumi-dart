// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsRemoteAddressCondition {
  /// For the IP Match or IP Not Match operators: specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using `OR` logic. For the Geo Match or Geo Not Match operators: specify one or more locations using their country code.
  ///
  /// &gt; **Note:** See the `Specifying IP Address Ranges` section below on how to correctly define the `match_values` field.
  final pulumi.Input<List<String>>? matchValues;

  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;

  /// The type of the remote address to match. Possible values include `Any`, `GeoMatch` or `IPMatch`. Use the `negate_condition` to specify Not `GeoMatch` or Not `IPMatch`. Defaults to `IPMatch`.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsRemoteAddressCondition].
  /// [matchValues] For the IP Match or IP Not Match operators: specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using `OR` logic. For the Geo Match or Geo Not Match operators: specify one or more locations using their country code.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] The type of the remote address to match. Possible values include `Any`, `GeoMatch` or `IPMatch`. Use the `negate_condition` to specify Not `GeoMatch` or Not `IPMatch`. Defaults to `IPMatch`.
  FrontdoorRuleConditionsRemoteAddressCondition({
    this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory FrontdoorRuleConditionsRemoteAddressCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrontdoorRuleConditionsRemoteAddressCondition(
      matchValues: (() {
        final guardedValue = map['matchValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      negateCondition: (() {
        final guardedValue = map['negateCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      operator: (() {
        final guardedValue = map['operator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
