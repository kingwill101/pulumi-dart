// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsSocketAddressCondition {
  /// Specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using `OR` logic.
  ///
  /// &gt; **Note:** See the `Specifying IP Address Ranges` section below on how to correctly define the `match_values` field.
  final pulumi.Input<List<String>>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// The type of match. The Possible values are `IpMatch` or `Any`. Defaults to `IPMatch`.
  ///
  /// &gt; **Note:** If the value of the `operator` field is set to `IpMatch` then the `match_values` field is also required.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsSocketAddressCondition].
  /// [matchValues] Specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] The type of match. The Possible values are `IpMatch` or `Any`. Defaults to `IPMatch`.
  FrontdoorRuleConditionsSocketAddressCondition({
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

  factory FrontdoorRuleConditionsSocketAddressCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsSocketAddressCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

