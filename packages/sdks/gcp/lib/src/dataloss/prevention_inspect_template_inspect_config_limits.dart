// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_limits_max_findings_per_info_type.dart';

class PreventionInspectTemplateInspectConfigLimits {
  /// Configuration of findings limit given for specified infoTypes.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType>>? maxFindingsPerInfoTypes;
  /// Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  final pulumi.Input<int> maxFindingsPerItem;
  /// Max number of findings that will be returned per request/job. The maximum returned is 2000.
  final pulumi.Input<int> maxFindingsPerRequest;

  /// Creates a new [PreventionInspectTemplateInspectConfigLimits].
  /// [maxFindingsPerInfoTypes] Configuration of findings limit given for specified infoTypes.
  /// [maxFindingsPerItem] Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  /// [maxFindingsPerRequest] Max number of findings that will be returned per request/job. The maximum returned is 2000.
  PreventionInspectTemplateInspectConfigLimits({
    this.maxFindingsPerInfoTypes,
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFindingsPerInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType>, List<Map<String, dynamic>>>(maxFindingsPerInfoTypes, (value) => pulumi.Input.encodeList<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxFindingsPerItem': maxFindingsPerItem,
      'maxFindingsPerRequest': maxFindingsPerRequest,
    };
  }

  factory PreventionInspectTemplateInspectConfigLimits.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigLimits(
      maxFindingsPerInfoTypes: map['maxFindingsPerInfoTypes'] == null ? null : (pulumi.Input.decodeList<PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType>(map['maxFindingsPerInfoTypes'], (value) => PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxFindingsPerItem: (map['maxFindingsPerItem'] as int).input(),
      maxFindingsPerRequest: (map['maxFindingsPerRequest'] as int).input(),
    );
  }
}

