// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_limits_max_findings_per_info_type_info_type.dart';

class PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType {
  /// Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
  /// specified in another InfoTypeLimit.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType>? infoType;
  /// Max findings limit for the given infoType.
  final pulumi.Input<int> maxFindings;

  /// Creates a new [PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType].
  /// [infoType] Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// [maxFindings] Max findings limit for the given infoType.
  PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType({
    this.infoType,
    required this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'maxFindings': maxFindings,
    };
  }

  factory PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType(
      infoType: map['infoType'] == null ? null : (PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap((map['infoType']! as Map).cast<String, dynamic>())).input(),
      maxFindings: (map['maxFindings'] as int).input(),
    );
  }
}

