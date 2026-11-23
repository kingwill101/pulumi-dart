// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_limits_max_findings_per_info_type.dart';

class PreventionContentPolicyInspectConfigLimits {
  /// Configuration of findings limit given for specified infoTypes.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType>?>? maxFindingsPerInfoTypes;
  /// Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  final pulumi.Input<int> maxFindingsPerItem;
  /// Max number of findings that will be returned per request/job. The maximum returned is 2000.
  final pulumi.Input<int> maxFindingsPerRequest;

  /// Creates a new [PreventionContentPolicyInspectConfigLimits].
  /// [maxFindingsPerInfoTypes] Configuration of findings limit given for specified infoTypes.
  /// [maxFindingsPerItem] Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  /// [maxFindingsPerRequest] Max number of findings that will be returned per request/job. The maximum returned is 2000.
  const PreventionContentPolicyInspectConfigLimits({
    this.maxFindingsPerInfoTypes,
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFindingsPerInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType>, List<Map<String, dynamic>>>(maxFindingsPerInfoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxFindingsPerItem': maxFindingsPerItem,
      'maxFindingsPerRequest': maxFindingsPerRequest,
    };
  }

  factory PreventionContentPolicyInspectConfigLimits.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigLimits(
      maxFindingsPerInfoTypes: (() { final guardedValue = map['maxFindingsPerInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType>(guardedValue, (value) => PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxFindingsPerItem: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxFindingsPerItem'])),
      maxFindingsPerRequest: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxFindingsPerRequest'])),
    );
  }
}
