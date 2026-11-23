// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_limits_max_findings_per_info_type_info_type.dart';

class PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType {
  /// Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
  /// specified in another InfoTypeLimit.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?>? infoType;
  /// Max findings limit for the given infoType.
  final pulumi.Input<int> maxFindings;

  /// Creates a new [PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType].
  /// [infoType] Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// [maxFindings] Max findings limit for the given infoType.
  const PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType({
    this.infoType,
    required this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'maxFindings': maxFindings,
    };
  }

  factory PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType(
      infoType: (() { final guardedValue = map['infoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxFindings: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxFindings'])),
    );
  }
}
