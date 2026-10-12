// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_rule_condition_info_type_condition_info_types.dart';

class PreventionContentPolicyRuleConditionInfoTypeCondition {
  /// Match any info type.
  final pulumi.Input<Map<String, dynamic>?>? anyInfoType;
  /// List of info types to match.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes?>? infoTypes;
  /// The minimum number of findings required for this condition to be met. Defaults to 1.
  final pulumi.Input<int?>? minCount;

  /// Creates a new [PreventionContentPolicyRuleConditionInfoTypeCondition].
  /// [anyInfoType] Match any info type.
  /// [infoTypes] List of info types to match.
  /// [minCount] The minimum number of findings required for this condition to be met. Defaults to 1.
  const PreventionContentPolicyRuleConditionInfoTypeCondition({
    this.anyInfoType,
    this.infoTypes,
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyInfoType': ?anyInfoType,
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes, Map<String, dynamic>>(infoTypes, (value) => value.toMap()),
      'minCount': ?minCount,
    };
  }

  factory PreventionContentPolicyRuleConditionInfoTypeCondition.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyRuleConditionInfoTypeCondition(
      anyInfoType: (() { final guardedValue = map['anyInfoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
