// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_adjust_by_matching_info_types_info_type.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes {
  /// Sensitive Data Protection adjusts the likelihood of a finding if that finding also matches one of these infoTypes.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoType>> infoTypes;
  /// How the adjustment rule is applied.
  /// Possible values are: `MATCHING_TYPE_FULL_MATCH`, `MATCHING_TYPE_PARTIAL_MATCH`, `MATCHING_TYPE_INVERSE_MATCH`.
  final pulumi.Input<String> matchingType;
  /// Minimum likelihood of the adjustByMatchingInfoTypes infoTypes finding.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String> minLikelihood;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes].
  /// [infoTypes] Sensitive Data Protection adjusts the likelihood of a finding if that finding also matches one of these infoTypes.
  /// [matchingType] How the adjustment rule is applied.
  /// [minLikelihood] Minimum likelihood of the adjustByMatchingInfoTypes infoTypes finding.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes({
    required this.infoTypes,
    required this.matchingType,
    required this.minLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchingType': matchingType,
      'minLikelihood': minLikelihood,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes(
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoType>(map['infoTypes']!, (value) => PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoType.fromMap((value as Map).cast<String, dynamic>()))),
      matchingType: pulumi.Input.fromValue(map['matchingType'] as String),
      minLikelihood: pulumi.Input.fromValue(map['minLikelihood'] as String),
    );
  }
}
